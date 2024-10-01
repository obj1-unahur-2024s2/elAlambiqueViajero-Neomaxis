object alambiqueVeloz{
    var combustible = 10

    method sufrirConsecuencias(){
        combustible = 0.max(combustible - 10)
    }

    method combustible() = combustible

    method esRapido() = true
}

object superChatarra{
    var tieneMunicion = false

    method sufrirConsecuencias(){
        tieneMunicion = !tieneMunicion
    }

    method combustible() = if (tieneMunicion) 50 else 30

    method esRapido() = not tieneMunicion
}

object antigualla{
    var combustible = 50
    var gansters = 4

    method esRapido() = false

    method sufrirConsecuencias(){
        if (self.esRapido()){
            gansters = 1.max(gansters -1)
            combustible = 0.max(combustible - 10)
        }else{
            combustible = 0.max(combustible - 5)
        }
    }

    method combustible() = combustible
}

object superConvertible{
    var convertidoEn = alambiqueVeloz

    method esRapido() = false

    method sufrirConsecuencias(){
        convertidoEn = antigualla
    }

    method combustible() = convertidoEn.combustible()

}