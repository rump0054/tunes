<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="layout" content="gtunes">
    <title>Welcome</title>
    <g:javascript library="jquery"/>
</head>
<body>
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
<g:else>
    <g:link action="showTime" elementId="timeLink">Show the time!</g:link>
    <div id="time"></div>
    <r:script>
        $('#timeLink').click(function() {
            $('#time').load(this.href);
            return false;
        })
    </r:script>
</g:else>

</body>
</html>