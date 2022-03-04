package org.grails.guides

@SuppressWarnings('GrailsDomainReservedSqlKeywordName')
class Vehicle {

    String name
    Make make
    Model model
    Driver driver
    Integer year

    static constraints = {
        year min: 1900
        name maxSize: 255
    }

    String toString() {
        'name: ' + name + ' make: ' + make + ' model: ' + model + ' driver: ' + driver + ' year: ' + year
    }
}
