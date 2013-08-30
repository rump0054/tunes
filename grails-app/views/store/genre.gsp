<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main"/>
  <title>Genre</title>
</head>
<body>
    <h1>Online Store!</h1>

    <h2>Genre ${genre.encodeAsHTML()}</h2>
    <table border="0" class="albumsTable">
        <tr>
            <th>Artist</th>
            <th>Album</th>
            <th>Year</th>
        </tr>
        <g:each in="${albums}" var="album">
            <tr>
                <td>${album.artist.name}</td>
                <td>
                    <g:link action="show" controller="album" id="${album.id}">
                        ${album.title}
                    </g:link>
                </td>
                <td>${album.year}</td>
            </tr>
        </g:each>
    </table>

    <div class="paginateButtons">
        <g:paginate total="${totalAlbums}" controller="store" action="genre" params="[ name: genre ]"/>
    </div>
</body>
</html>