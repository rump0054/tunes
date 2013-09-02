<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="gtunes"/>
    <title>Shop</title>
    <g:javascript library="jquery"/>
</head>
<body>
<div class="row">
    <div class="span5">
        <div id="top5Panel">
            <ul id="tabs" class="nav nav-tabs">
                <li class="active"><a href="#albums" data-toggle="tab">Latest Albums</a></li>
                <li><a href="#songs" data-toggle="tab">Latest Songs</a></li>
                <li><a href="#artists" data-toggle="tab">Latest Artists</a></li>
            </ul>
        </div>

        <div class="tab-content" style="margin-top: 40px">
            <div id="albums" class="tab-pane active">
                <g:render template="/album/albumList" model="[ albums: top5Albums ]"/>
            </div>
            <div id="songs" class="tab-pane">
                <g:render template="/song/songList" model="[ songs: top5Songs ]"/>
            </div>
            <div id="artists" class="tab-pane">
                <g:render template="/artist/artistList" model="[ artists: top5Artists ]"/>
            </div>
        </div>

        <r:script>
            $(function () {
                $('#tabs a:first').tab('show');
            })
        </r:script>
    </div>
    <div class="span5">
        <div id="musicPanel"></div>
    </div>
</div>
</body>
</html>