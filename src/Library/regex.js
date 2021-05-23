const listRegEX={};
/**
 * Crea una expresión regular que solo permite letras a-z A-Z y también permite espacios, esta expresión regular solo permite recibir palabras que contengan letras y tiene parámetros para controlar el mínimo y máximo de caracteres que pueda tener el texto.
 * @param {Number} min Cantidad minima de caracteres.
 * @param {Number} max Cantidad maxima de caracteres.
 * @param {Boolean} spaces Si se permitirá espacios en la cadena de texto.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.letras= (min=0,max=5,spaces=false)=>{
	let character=(spaces)?' ':'';
	return new RegExp(`^[a-zA-Z${character}]{${min},${max}}$`);
}

/**
 * Crea una expresión regular que solo permite valores de tipo float. 
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.float= ()=>{	
	return new RegExp(`^-?\d{0,}(\.\d{0,})?$`);
}

/**
 * Crea una expresión regular que solo permite valor de tipo entero.
 * @param {Number} length Largo del valor entero
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.int= (length=1)=>{
	return new RegExp(`^[0-9]{1,${length}}$`);
}

/**
 * Crea una expresión regular que solo permite correos.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.email= ()=>{
	return new RegExp("^[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$");
}

/**
 * Crea una expresión regular que solo permite letras a-z, A-Z, ÁÉÍÓÚñáéíóúÑ y también permite espacios si es que se desea.
 * @param {Number} min Cantidad minima de caracteres.
 * @param {Number} max Cantidad maxima de caracteres.
 * @param {Boolean} spaces Si se permitirá espacios en la cadena de texto.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.name= (min=0,max=5,spaces=false)=>{
	let character=(spaces)?' ':'';
	return new RegExp(`^[A-Za-zÁÉÍÓÚñáéíóúÑ${character}]{${min},${max}}$`);
}

/**
 * Crea una expresión regular que permite la mayoría de caracteres  a-z, A-Z, 0-9, ÁÉÍÓÚñáéíóúÑ&°#.\/ y también permite espacios si es que se desea.
 * @param {Number} min Cantidad minima de caracteres.
 * @param {Number} max Cantidad maxima de caracteres.
 * @param {Boolean} spaces Si se permitirá espacios en la cadena de texto.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.address= (min=0,max=5,spaces=true)=>{
	let character=(spaces)?' ':'';
	return new RegExp(`^[A-Za-z0-9ÁÉÍÓÚñáéíóúÑ&°#.\\-\\/${character}]{${min},${max}}$`);
}

/**
 * Crea una expresión regular que solo permite letras a-z A-Z, números 0-9 y también permite espacios si es que se desea.
 * @param {Number} min Cantidad minima de caracteres.
 * @param {Number} max Cantidad maxima de caracteres.
 * @param {Number} spaces Si se permitirá espacios en la cadena de texto.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.mix= (min=0,max=5,spaces=false)=>{
	let character=(spaces)?' ':'';
	return new RegExp(`^[a-zA-Z0-9${character}]{${min},${max}}$`);
}

/**
 * Crea una expresión regular que solo permite ingresar numeros que representan porcentaje desde el 1.00-100.00.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.porcentaje= ()=>{
	return new RegExp(`^((100(\.0{1,3})?)|(\d{1,2}(\.\d{1,20})?))$`);
}

/**
 * Crea una expresión regular que solo ingresar fechas con los siguientes formatos dd/mm/yyyy o dd-mm-yyyy.
 * @returns {RegExp} Retorna una expresión regular.
 */
listRegEX.date=()=>{
	return new RegExp("^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$");
}

// function expr_id(){
// 	return '/^[a-z0-9]{26,26}(\.\d{8,8})?/';
// }

// function exprId_uniq($start=1,$end=1){
// 	return $expr_letras='/^[a-zA-Z0-9]{'.$start.','.$end.'}$/';
// }

module.exports=listRegEX;