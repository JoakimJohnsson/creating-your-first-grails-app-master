package org.grails.guides

class Make {

    String name

    static constraints = {
        name maxSize: 255
    }

    String toString() {
        name
    }
}
