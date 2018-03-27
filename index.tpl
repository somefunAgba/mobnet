<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta charset="utf-8">
  <title>MobNET NG</title>
  <meta name="MobNET AI" content="">
  <meta name="Coven Labs GROUP 8" content="">

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="stylesheet" href="static/css/normalize.css">
  <link rel="stylesheet" href="static/css/skeleton.css">
    <link rel="stylesheet" href="static/css/main.css">
    <link rel="stylesheet" href="static/css/animate.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/font-awesome-animation/font-awesome-animation.min.css">

  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="icon" type="image/png" href="static/images/favicon.png">

</head>
<body style="background-color: royalblue; color: whitesmoke;">

  <!-- Primary Page Layout
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->

    <header>
          <div class="container">
      <div class="row" style="text-align: center;">
        <h1 style="font-weight: 900;font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif">MobNET.NG</h1>
      </div>
          </div>
    </header>

    <article style="background-color: cornflowerblue;">

      <div class="row" style="padding-top: 5%; padding-bottom: 5%">
        <div class="seven columns" style="text-align: center;">
          <h5 style="font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif">
              Sometimes, you just can't remember which local mobile network,
              a mobile number belongs.<br/>
              Don't worry, those days are over.<br/>
              Meet me. <span style="color: whitesmoke;font-weight: 700">MobNET AI</span> <br/>
              I can tell if that mobile number is Nigerian.<br/>
          </h5>
        </div>

          <div class="five columns" style="text-align: center; border-left-width: thin;
          border-left-style: solid">

              <div style=" font-weight: 600; font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif" id="info" class="row">
                  <p> {{infs}} </p>
              </div>

              <div id="input" class="row">

                  <div class="row" style="font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif"><form method="post" action="/">
                      <fieldset>
                          Mobile Number:<br/>
                          <input style="color: #000;width:70%" name="mobile_no" type="number"
                                 placeholder="e.g: 08185002263"><br/>
                          <input type="submit" value="GET">
                      </fieldset>
                  </form>
                  </div>
              </div>

              <div id="result" class="u-full-width row">
                  <span><i class="fa fa-signal"></i></span>
                  <p class=""
                     style="color:{{paints}} ; font-weight: 600; font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif">
                  {{message}} </p>
                  % end

              </div>
          </div>

          </div>
      </div>
    </article>

        <footer>
          <div class="row" style="text-align: center;padding-top: 5%; font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif">
              <div class="row">
                  MobNET-AI. Built with <span><i class="fa fa-heart" style="color: red"></i></span> using
                  <a style="color: black" href="http://bottlepy.org/">Bottle</a>
                  <a style="color: black" href="http://getskeleton.com">Skeleton</a>
                  <a style="color: black" href="http://scikit-learn.org">Sci-kit Learn</a><br/>
                  Powered by
                  <a class="button-primary" style="color: white" href="#">CovenLabs</a>
                  Build Version : <a style="color: white" href="#">BETA 0.1 | 2018-25-01</a><br/>
              <b>Credits</b>:
              <ul>
                  <li><a style="color: black" href="mailto:oluwasegun.somefun@yahoo.co.uk">oluwasegun.somefun@yahoo.co.uk</a></li>
                  <li><a style="color: black" href="mailto:makindekingsley@yahoo.com">makindekingsley@yahoo.com</a></li>
                  <li><a style="color: black" href="mailto:olaleyeisrael99@gmail.com">olaleyeisrael99@gmail.com</a></li>
                  <li><a style="color: black" href="mailto:hallelolamade@gmail.com">hallelolamade@gmail.com</a></li>
              </ul>
                  </div>
          </div>
      </footer>


<!-- End Document ––––––––––––––––––––––––––––––––––––––––––––––––––-->
</body>
</html>
