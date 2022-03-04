package org.grails.guides

class Driver {

    String firstName
    String lastName

    static constraints = {
        firstName maxSize: 255
        lastName maxSize: 255
    }

    String toString() {
        firstName + ' ' + lastName
    }
}
