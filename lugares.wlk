import vehiculos.*

object paris{
    method recuerdo() = "Llavero Torre Eiffel"

    method sePuedeViajarEn(unVehiculo) =
        unVehiculo.combustible() >= 10
}

object buenosAires{
    var presidente = "Peron"

    method recuerdo() = if (presidente == "Peron")
    "Mate con Yerba" else "Mate sin Yerba"

    method cambiarPresidente(nuevoPresidente){
        presidente = nuevoPresidente
    }

    method sePuedeViajarEn(unVehiculo) =
        unVehiculo.esRapido()
}

object bagdad{
    var anio = 2024

    method recuerdo(){
        if (anio < 1945){
            "Petróleo"
        }else if (anio.between(1946, 1999)){
            "Armas"
        }else{
            "Jardines de Babilonia"
        }
    }

    method anioActual(nuevoAnio){
        anio = nuevoAnio
    }

    method sePuedeViajarEn(unVehiculo) = true
}

object lasVegas{
    var paisConmemorado = paris

    method recuerdo() = paisConmemorado.recuerdo()

    method conmemorarA(pais){
        paisConmemorado = pais
    }

    method sePuedeViajarEn(unVehiculo) =
        paisConmemorado.sePuedeViajarEn(unVehiculo)
}

object roma{
    var papa = "Francisco"

    method recuerdo() = "Foto del papa " + papa

    method sePuedeViajarEn(unVehiculo) =
        unVehiculo.combustible() >= 10

    method cambiarPapa(nuevoPapa){
        papa = nuevoPapa
    }
}