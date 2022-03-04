package org.grails.guides

import grails.gorm.services.Service

@Service(Make)
interface MakeService {

    Make get(Serializable id)

    List<Make> list(Map args)

    Long count()

    void delete(Serializable id)

    Make save(Make make)

    Make save(String name)

}