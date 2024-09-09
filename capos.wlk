object rolando {

    var property mochila = #{} //la hago var solamanete para el test, si no alcanzaría con const
    var property capacidad = 2 
    var hogar = castillo
    const historial = []

    method encontrar(artefacto) {
        
        if(mochila.size() < capacidad) {
            mochila.add(artefacto)
            //mochila = mochila + #{artefacto} //version a la funcional (colecciones inmutable)
        }
        historial.add(artefacto)
    }

    method historial() {
        return historial
    }

    method artefactoEnHistorial(indice) {
        return historial.get(indice)
    }

    method mochila() {
        return mochila
    }

    method tieneArtefactos() {
        return not mochila.isEmpty()
    }

    method irAlHogar() {
        hogar.almacenar(mochila)
        mochila.clear()
    }

    method posesiones() {
      return mochila + hogar.cofre()

        // alternativa más procedural (feita)                
        // const posesiones = #{}
        // posesiones.addAll(mochila)
        // posesiones.addAll(hogar.cofre())
        // return posesiones
    }

    method posee(artefacto) {
        return self.posesiones().contains(artefacto)
    }

}

object castillo {

    var property cofre = #{}

    method almacenar(artefactos) {
        cofre.addAll(artefactos)
    }

}


////////// elementos ////////
object espada {

}

object collar {

}

object armadura {

}
object libro {

}
