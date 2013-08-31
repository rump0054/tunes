<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>gTunes &raquo; <g:layoutTitle default="Welcome"/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

    <g:external dir="css" file="bootstrap.min.css"/>
    <style>
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }

        .footer {
            bottom: 20px;
            position: absolute;
        }
    </style>
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="/tunes">
                gTunes
            </a>

            <g:if test="${session?.user}">
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active"><a href="/tunes/store">Home</a></li>
                    <li><a href="/tunes/store/shop">Shop</a></li>
                    <!--li><a href="#contact">Contact</a></li-->
                </ul>
            </div><!--/.nav-collapse -->
            </g:if>

            <g:if test="${!session?.user}">
                <g:form name="loginForm" url="[controller:'user',action:'login']" class="navbar-form pull-right">
                    <g:textField name="login" required="true" placeholder="Username" class="span2"/>
                    <g:textField name="password" required="true" placeholder="Password" class="span2"/>
                    <button type="submit" class="btn btn-info">Sign in</button>
                </g:form>
            </g:if>
        </div>
    </div>
</div>

<div class="container">
    <!-- Start main -->
    <div class="row">
        <div class="span12">
            <!-- Start body -->
            <g:layoutBody/>
            <!-- ./body -->
        </div>
    </div>

    <div class="row footer">
        <div class="span12">
            <h4 class="text-center">© gTunes 2012</h4>
        </div>
    </div>
    <!-- ./footer -->

    <!-- Other resources -->
    <script src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <g:javascript library="application"/>
    <r:layoutResources />
</div>
</body>
</html>