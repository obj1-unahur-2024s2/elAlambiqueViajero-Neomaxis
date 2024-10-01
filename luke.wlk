import vehiculos.*
import lugares.*

object luke {
    var vehiculo = alambiqueVeloz
    const lugaresVisitados = []

    method cantLugaresVisitados() = lugaresVisitados.size()

    method ultimoRecuerdo() = lugaresVisitados.last().recuerdo()

    method viajar(lugar){
        if (lugar.sePuedeViajarEn(vehiculo)){
            lugaresVisitados.add(lugar)
            vehiculo.sufrirConsecuencias()
        }else{
            console.println("No se puede viajar a " + lugar)
        }
    }

    method cambiarVehiculo(otroVehiculo){
        vehiculo = otroVehiculo
    }

}