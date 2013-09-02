<!-- albumList.gsp -->
<ul class="unstyled">
    <g:each in="${albums?}" var="album">
        <li>
            <g:link update="musicPanel" controller="album" action="display" id="${album?.id}"
                    elementId="albumLink${album.id}">
                <g:img dir="images/icons" file="album.png"/>
                ${album?.title}
            </g:link>
        </li>

        <r:script>
            $('#albumLink${album.id}').click(function() {
                $('#musicPanel').load(this.href);
                return false;
            });
        </r:script>
    </g:each>
</ul>


<%-- Original list item code
        <li>
            <g:link controller="album" action="show" id="${album?.id}">
                <g:img dir="images/icons" file="album.png"/>
                ${album?.title}
            </g:link>
        </li>
--%>