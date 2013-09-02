<!-- artistList.gsp -->
<ul class="unstyled">
    <g:each in="${artists?}" var="artist">
        <li>
            <g:link controller="artist" action="show" id="${artist?.id}">
                <g:img dir="images/icons" file="artist.png"/>
                ${artist?.name}
            </g:link>
        </li>
    </g:each>
</ul>