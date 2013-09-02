<!-- songList.gsp -->
<ul class="unstyled">
    <g:each in="${songs?}" var="song">
        <li>
            <g:link controller="song" action="show" id="${song?.id}">
                <g:img dir="images/icons" file="song.png"/>
                ${song?.title}
            </g:link>
        </li>
    </g:each>
</ul>