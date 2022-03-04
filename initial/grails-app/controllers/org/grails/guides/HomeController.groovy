package org.grails.guides

class HomeController {

    def index() {
        respond([name: session.name ?: 'User', vehicleTotal: Vehicle.count(), vehicleList: Vehicle.list()])
    }

    def updateName(String name) {
        session.name = name
        flash.message = "User name have been updated."
        redirect action: 'index'
    }
}
