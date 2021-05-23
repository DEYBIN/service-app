const listGenerator={};

/**
 * Genera nombres de usuario
 * @param {Object} Recibe los parámetros que se requieren.
 * @param {Number} count Recibe los intentos que se esta realizando.
 * @returns {String} Retorna cadena de texto (nombre de usuario)
 */
listGenerator.user=(data={},count=0)=>{
	if(!data.firstName) return undefined;
	if(!data.firstLastName) return undefined;
	if(!data.secondLastName) return undefined;

	let user='';

	switch (count) {
		case 0:
			user=data.firstName.charAt(0);
			user+=data.firstLastName.replace("\\s","");
			break;
		case 1:
			if(data.secondName){
				user=data.secondName.charAt(0);
				user+=data.firstLastName.replace("\\s","");
			}else{
				user=data.firstName.charAt(0);
				user+=data.firstLastName.replace("\\s","");
			}
			break;
		case 2:
			user=data.firstName.charAt(0);
			user+=data.firstLastName.replace("\\s","");
			user+=data.secondLastName.charAt(0);
			break;
		case 3:
			if(data.secondName){
				user=data.secondName.charAt(0);
				user+=data.firstLastName.replace("\\s","");
				user+=data.secondLastName.charAt(0);
			}else{
				user=data.firstName.charAt(0);
				user+=data.firstLastName.replace("\\s","");
			}
			break;
		case 4:
			user=data.firstName.charAt(0);
			user+=data.secondLastName.replace("\\s","");
			break;
		case 5:
			if(data.secondName){
				user=data.secondName.charAt(0);
				user+=data.secondLastName.replace("\\s","");
			}else{
				user=data.firstName.charAt(0);
				user+=data.firstLastName.replace("\\s","");
			}
			break;
		case 6:
			user=data.firstName.charAt(0);
			user+=data.secondLastName.replace("\\s","");
			user+=data.firstLastName.charAt(0);
			break;
		case 7:
			if(data.secondName){
				user=data.secondName.charAt(0);
				user+=data.secondLastName.replace("\\s","");
				user+=data.firstLastName.charAt(0);
			}else{
				user=data.firstName.charAt(0);
				user+=data.firstLastName.replace("\\s","");
			}
			break;
		case 8:
			user=undefined;
			break;

	}

	return user;

}

// console.log(listGenerator.user({firstName:'Deybin',secondName:'Yoni',firstLastName:'Gil',secondLastName:'Perez'}));

module.exports=listGenerator;