#! python3
#! /usr/bin/python3
#! /usr/bin/env python3

from bottle import Bottle, template, request, error, static_file

import numpy as np

from sklearn import preprocessing, neighbors, metrics
import re


def validate_form(Xtest, form, required):
    """Validates the form on its input data"""
    messages = ""
    for field in required:
        value = form.get(field)
        if value is "" or value is None:
            messages = "You must enter an NG local mobile number below"

        wrong = True

        if len(Xtest) == 11:
            phone_reg = re.compile(r'(\d)(\d{3})(\d{3})(\d{4})')
            extract_ncode = phone_reg.findall(str(Xtest))
            # print(extract_ncode)

            Xtest_ex = extract_ncode[0][1]
            print(Xtest_ex)
            mn_codes = [701, 703, 705, 706, 707, 708, 802, 803, 805, 806,
                        807, 808, 809, 810, 811, 812, 813, 814, 815, 816,
                        817, 818, 909, 908, 902, 903, 905, 906, 907]

            print(wrong)

            for code in range(len(mn_codes)):
                if int(Xtest_ex) == mn_codes[code]:
                    wrong = False
                    break

            print(wrong)

        if wrong:
            messages = "You must enter a NG local mobile number below"
        elif len(Xtest) != 11:
            messages = "No! This can't be a local mobile number found in Nigeria\nCorrect yourself.."

    return messages


app = Bottle()


@app.route('/')
def index():
    """HomePage"""
    info = {'infs': 'Please, Enter your Nigerian Mobile Number', 'message': '', 'paints': ''}
    return template("index.tpl", info)


@app.post('/')
def formhandle():
    Xtest = request.forms.get('mobile_no')

    errors = validate_form(Xtest, request.forms, ['mobile_no'])
    print(errors)
    infs = ""
    message = ""
    paints = ""

    if not errors:
        message, paints = ml_algo(Xtest)
    else:
        infs = errors

    print(paints)

    info = {'infs': infs, 'message': message, 'paints': paints}

    return template("index.tpl", info)


def ml_algo(Xtest):
    # LOAD DATA
    file = open("mobilecode_ii.csv")  # open file
    file.readline()  # read the file
    dataset = np.loadtxt(file, delimiter=",")  # delimit the
    # print(dataset[:,1])
    X_data = dataset[:, 0].reshape(-1, 1)
    Y_data = dataset[:, 1]
    # print('network_codes: ',X_data)
    # print('network_names: ', Y_data)
    # PREPROCESS the input data

    # sX = preprocessing.normalize(X_data)  # Scale or normalize the input data
    # print('StandardizedX', sX)

    # Classify or Predict the Data
    knn = neighbors.KNeighborsClassifier()

    # print(sX.reshape(1,-1).shape)
    # print(X_data.shape)
    # print(Y_data.shape)
    # sX = sX.reshape(-1, 1)
    # print(sX.shape)
    knn.fit(X_data, Y_data)
    train_result = knn.predict(X_data)
    # print('Accuracy:', knn.score(X_data, Y_data))
    # print('Accuracy: ', metrics.accuracy_score(Y_data, train_result))
    # resultX = knn.predict(X_data[:55])
    # print(resultX)

    # TODO: Add other telcos, bound to Westfrica. Push to Github
    net_types = ['MTN NG', 'AIRTEL NG', 'GLOBACOM NG', '9MOBILE NG', 'ZOOM NG']
    net_codes = [0, 1, 2, 3, 4]

    answer_net, paint = "", ""

    phone_reg = re.compile(r'(\d)(\d{3})(\d{3})(\d{4})')
    extract_ncode = phone_reg.findall(str(Xtest))

    Xtest_ex = extract_ncode[0][1]

    # print(extract_ncode[0][1])
    # print(Xtest_ex)

    test_result = knn.predict(Xtest_ex)

    if test_result == 0:
        answer_net = net_types[0]
        paint = "yellow"
    elif test_result == 1:
        answer_net = net_types[1]
        paint = "red"
    elif test_result == 2:
        answer_net = net_types[2]
        paint = "green"
    elif test_result == 3:
        answer_net = net_types[3]
        paint = "lime"
    elif test_result == 4:
        answer_net = net_types[4]
        paint = "blue"
    else:
        answer_net = "Oops! I am sorry. Something bad has happened.."

    print(answer_net)

    return [answer_net, paint]


@app.route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')


@app.error(403)
@app.error(404)
def errs(code):
    return 'Something bad has happened.\nYou should check back'


if __name__ == '__main__':
    app.run(host='localhost', port=8080, debug=True, reloader=True)
