<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="layout" content="gtunes">
    <title>Welcome</title>
    <g:javascript library="jquery"></g:javascript>
</head>
<body>
<div class="row">
    <div class="span10 offset1">
        <div class="page-header">
            <h2>Your online music store and storage service!</h2>
            <p>Manage your own library, browse music and purchase new tracks as they become available.</p>
        </div>
    </div>
</div>

<g:if test="${!session?.user}">
    <div class="row">
        <div class="span10 offset1">
            <div class="well">
                <h3>Need an account?</h3>
                <p class="legend"><g:link controller="user" action="register">Signup now</g:link>
                to start your own personal Music collection!</p>
                <g:link controller="user" action="register" class="btn">Signup now</g:link>
            </div>
        </div>
</g:if>

</body>
</html>