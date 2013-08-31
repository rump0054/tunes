<!-- songList.gsp -->
<ul class="list">
    <g:each in="${songs?}" var="song">
        <li class="icon">
            <g:link controller="song" action="show" id="${song?.id}">
                <g:img dir="images/icons" file="song.png"/>
                ${song?.title}
            </g:link>
        </li>
    </g:each>
</ul>