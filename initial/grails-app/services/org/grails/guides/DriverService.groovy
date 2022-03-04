package org.grails.guides

import grails.gorm.services.Service

@Service(Driver)
interface DriverService {

    Driver get(Serializable id)

    List<Driver> list(Map args)

    Long count()

    void delete(Serializable id)

    Driver save(Driver driver)

    Driver save(String firstName, String lastName)

}