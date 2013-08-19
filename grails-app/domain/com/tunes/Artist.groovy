package com.tunes

class Artist {
    String name

    static hasMany = [ albums: Album ]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name blank: false, nullable: false
    }

    String toString() { name }
}
