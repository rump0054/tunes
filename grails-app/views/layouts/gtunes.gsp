<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>Hubbub &raquo; <g:layoutTitle default="Welcome"/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

    <g:external dir="css" file="bootstrap.min.css"/>

    <style>
    .nav {
        margin-bottom: 0;
    }

    </style>

    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>
<div class="container">
    <!-- Start header -->
    <div class="row">
        <div class="span12" id="hd">
            <g:link uri="/">
                <g:img id="logo" uri="/images/headerlogo.png" alt="hubbub logo"/>
            </g:link>
        </div>
    </div>
    <!-- ./header -->

    <!-- Start nav -->
    <div class="row">
        <div class="span12">
            <nav:menu scope="user" class="nav nav-pills"/>
        </div>
    </div>
    <!-- ./nav -->

    <!-- Start main -->
    <div class="row">
        <div class="span9">
            <!-- Start body -->
            <g:layoutBody/>
            <!-- ./body -->
        </div>

        <div class="span3">
            <!-- Start sidebar -->
            <g:if test="${session.user}">
                <g:render template="/sidebar_profile"/>
            </g:if>
            <g:else>
                <g:render template="/sidebar_login"/>
            </g:else>
            <!-- ./sidebar -->
        </div>
    </div>

    <!-- Start footer-->
    <div class="row">
        <div class="span12" id="ft">
            <div>
                <h5>Hubbub - Social Networking on Grails</h5>
            </div>
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