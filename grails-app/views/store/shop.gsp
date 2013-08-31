<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="gtunes"/>
  <title>Shop</title>
</head>
<body>
    <div id="top5Panel" class="top5panel">
        <ul id="tabs" class="tabs clearfix">
            <li class="selected"><a href="#albums">Latest Albums</a></li>
            <li><a href="#songs">Latest Songs</a></li>
            <li><a href="#artists">Latest Artists</a></li>
        </ul>
    </div>

    <div style="margin-top: 40px">
    <div id="albums" class="top5item">
        <g:render template="/album/albumList" model="[ albums: top5Albums ]"/>
    </div>
    <div id="songs" class="top5item">
        <g:render template="/song/songList" model="[ songs: top5Songs ]"/>
    </div>
    <div id="artist" class="top5item">
        <g:render template="/artist/artistList" model="[ artists: top5Artists ]"/>
    </div>
    </div>
</body>
</html>