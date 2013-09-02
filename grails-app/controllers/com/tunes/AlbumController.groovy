package com.tunes

class AlbumController {
    static scaffold = true

    def display() {
        def album = Album.get(params.id)

        if (album) {
            def artist = album.artist
            render(template: "album", model: [ artist: artist, album: album ])
        }
        else {
            render "Album not found."
        }
    }
}
