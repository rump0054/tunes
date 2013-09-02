<div id="album${album.id}" class="well">
    <div class="albumDetails">
        <div class="artistName" style="font-size: 18px; font-weight: bold">${artist.name}</div>
        <div class="albumTitle"><em>${album.title}</em></div>
        <div class="albumInfo">
            Genre: ${album.genre ?: 'Other'} <br/>
            Year: ${album.year}
        </div>

        <div class="albumTracks">
            <ul class="unstyled">
                <g:each in="${album.songs?}" var="song">
                    <li>
                        <g:img dir="images/icons" file="song.png"/>&nbsp;
                        ${song.trackNumber}.&nbsp;${song.title}
                    </li>
                </g:each>
            </ul>
        </div>

        <div class="albumLinks"></div>
    </div>
</div>