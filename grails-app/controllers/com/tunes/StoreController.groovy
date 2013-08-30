package com.tunes

class StoreController {

    def index() { }

    def genre() {
        def max = Math.min(params.int('max') ?: 10, 100)
        def offset = params.int('offset') ?: 0

        def total = Album.countByGenre(params.name)
        def albumList = Album.withCriteria {
            eq 'genre', params.name
            projections {
                artist {
                    order 'name'
                }
            }

            maxResults max
            firstResult offset
        }

        [ albums: albumList, totalAlbums: total, genre: params.name ]
    }
}
