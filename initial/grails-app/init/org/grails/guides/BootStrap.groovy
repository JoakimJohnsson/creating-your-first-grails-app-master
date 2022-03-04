package org.grails.guides

import groovy.transform.CompileStatic

@CompileStatic
class BootStrap {

    MakeService makeService
    ModelService modelService
    DriverService driverService
    VehicleService  vehicleService

    def init = { servletContext ->

        Make opel = makeService.save('Opel')
        Make ford = makeService.save('Ford')
        Make volvo = makeService.save('Volvo')
        Make renault = makeService.save('Renault')
        Make skoda = makeService.save('Skoda')
        Make kia = makeService.save('Kia')

        Model astra = modelService.save("Astra", opel)
        Model corsa = modelService.save("Corsa", opel)
        Model mondeo = modelService.save("Mondeo", ford)
        Model xc90 = modelService.save("XC90", volvo)
        Model clio = modelService.save("Clio", renault)
        Model enyaq = modelService.save("Enyaq", skoda)
        Model niro = modelService.save("Niro", kia)

        Driver jocke = driverService.save("Joakim", "Johnsson")
        Driver karro = driverService.save("Karolina", "Bladh")
        Driver popcorn = driverService.save("Popcorn", "Kisselito Kattmandu")
        Driver cookie = driverService.save("Cookie", "Kisselito Kattmandu")

        vehicleService.save("Silver Fang", opel, astra, jocke, 1997).save()
        vehicleService.save("Gnarly Burger", opel, corsa, popcorn, 2012).save()
        vehicleService.save("The Pipe Life", ford, mondeo, cookie, 2022).save()
        vehicleService.save("Loverboy", volvo, xc90, karro, 2018).save()
        vehicleService.save("Mr Johnsson", renault, clio, jocke, 1988).save()
        vehicleService.save("Man Machine", kia, niro, cookie, 2016).save()
        vehicleService.save("Gold Bar", skoda, enyaq, popcorn, 2022).save()

    }
    def destroy = {
    }
}
