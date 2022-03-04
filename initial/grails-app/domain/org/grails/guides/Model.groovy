package org.grails.guides

class Model {

    String name

    static belongsTo = [ make: Make ]

    static constraints = {
        name maxSize: 255
    }

    String toString() {
        name
    }
}
