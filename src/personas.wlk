object olivia {
	var peso = 55000
	var concentracion = 6 	// olivia	
	var esFeliz = true		// Bruno
	var tieneSed = false	//Bruno
	var contractura = 0		//Ramiro
	var pielGrasa = false	//Ramiro

		// consulta//
	method peso() = peso //ramiro
	method esFeliz() = esFeliz // ramiro
	method tieneSed() = tieneSed //ramiro
	method concentracion() = concentracion
	method contractura() = contractura
	method pielGrasa() = pielGrasa
	
	// indicativos //
	
	method recibirMensajes() {concentracion +=  3} // olivia
	method discutir(){concentracion -= 1}	// olivia
	
	//---pedido por ejercicio---/
	
	method gradoDeConcentracion() = concentracion
	
	
	// ------ para el polimorfismo -----//
	method comerBigMc() {}
	method bajarAFosa() {}
	method jugarPaddle(){}
	method diaDeTrabajo() {}
	method banioDeVapor() {}
	method tomarAgua() {}
	method comerFideos(){}
	method correr(){}
	method verElNoticiero() {}	
	method estaPerfecto() {}
	method mediodiaEnCasa() {}
}	
	object bruno{
	var peso = 55000
	var concentracion = 6 	// olivia	
	var esFeliz = true		// Bruno
	var tieneSed = false	//Bruno
	var contractura = 0		//Ramiro
	var pielGrasa = false	//Ramiro

		// consulta//
	method peso() = peso //ramiro
	method esFeliz() = esFeliz // ramiro
	method tieneSed() = tieneSed //ramiro
	method concentracion() = concentracion
	method contractura() = contractura
	method pielGrasa() = pielGrasa
	
	// indicativos //
	
	method recibirMensajes() {esFeliz = true}
	method banioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	method tomarAgua() {tieneSed = false}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){peso -= 300}
	method verElNoticiero() {esFeliz = false}	
	
	//---pedido por ejercicio---/
	
	method estaPerfecto() = esFeliz and !tieneSed and peso.between(50000,70000)
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}

// ------ para el polimorfismo -----//
	method discutir(){}
	method comerBigMc() {}
	method bajarAFosa() {}
	method jugarPaddle(){}
	method diaDeTrabajo() {}
	method gradoDeConcentracion() {}
	
}
	object ramiro{
	var peso = 55000
	var concentracion = 6 	// olivia	
	var esFeliz = true		// Bruno
	var tieneSed = false	//Bruno
	var contractura = 0		//Ramiro
	var pielGrasa = false	//Ramiro

		// consulta//
	method peso() = peso //ramiro
	method esFeliz() = esFeliz // ramiro
	method tieneSed() = tieneSed //ramiro
	method concentracion() = concentracion
	method contractura() = contractura
	method pielGrasa() = pielGrasa
	
	// indicativos //
	
	method recibirMensajes() {contractura -= 0.max(contractura - 2)}
	method banioDeVapor() {pielGrasa = false}
	method comerBigMc() {pielGrasa = true}
	method bajarAFosa() {
		pielGrasa = true
		contractura += 1
	}
	method jugarPaddle(){contractura += 3}
		
	//---pedido por ejercicio---/
	method diaDeTrabajo() {
		self.bajarAFosa()
		self.comerBigMc()
		self.bajarAFosa()
	}
	
	
	
	// ------ para el polimorfismo -----//
	method tomarAgua() {}
	method comerFideos(){}
	method correr(){}
	method verElNoticiero() {}
	method discutir(){}
	method estaPerfecto() {}
	method mediodiaEnCasa() {}
	method gradoDeConcentracion() {}

	
	
}
