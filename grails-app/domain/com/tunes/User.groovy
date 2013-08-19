package com.tunes

class User {
    String login
    String password
    String firstName
    String lastName

    static hasMany = [ purchasedSongs: Song ]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        login blank: false, nullable: false, size: 5..15, matches: /[\S]+/, unique: true
        password blank: false, nullable: false, size: 5..15, matches: /[\S]+/
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
    }
}
