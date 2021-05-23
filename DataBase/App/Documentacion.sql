/*DOCUMENTACION DE LA BASE DE DATOS 
	-Esta docuemntacion describe como debe ser generado la base de datos seguir estas indicaciones hace que la estructura de la base de datos sea entendible para cualquiera que desea hacer un mantenimiento a esta base de datos
	-Tenemos que tener en cuenta que que cada campo debe tener un valor por default para que haci al insertar los registros no exista campos con valor NULL lo cual complicaria al al trtar de optener los datos con el lenguaje de programacion en este caso se uiliza PHP como lenguaje
*/

/*
=================ABREVIATURAS APLICADA A LAS TABLAS=================
	Abreviaturas aplicadas a las tablas
	Cont_: contabilidad
	Fina_: financiera
	Stck_: stock
	Ctae_: cuenta corriente
	Rrhh_: Recursoso Humanos
	Cost_: Costos
	Requ_: Requerido Tablas que se necesitan sin modulos
====================================================================

=================ABREVIATURAS APLICADA A LOS CAMPOS DE LAS TABLAS=================
	id_: Id unicos generados por el lenguaje de programacion constan de 35 cifras 
		001-(3 digitos coresponden alcodigo de la tabla su asignacion ver en documentacion ASIGNACION DE CODIGOS)
		2020-(4 digitos coresponden al año en que se crea el codigo)
		04-(2 digitos coresponden al mes en que se crea el codigo)
		001-(3 digitos coresponden al codigo de sucursal enque se crea el codigo)
		5ea8b38dccad59.41753809-(23- digitos generado por el lenguage de programacion =>echo uniqid('', true);)
		Example lenuaje PHP=> echo uniqid('001'.'2020'.'04'.'001', true); ===>Result==>0012020040015ea8b38dccad59.41753809

	c_: tipo string codigos 
	f_: tipo string o date alberga fechas
	l_: tipo string alberga detalle de alg�n c�digo u otros
	s_: tipo numerico o double alberga mostos  porcentajes 
	k_: tipo integer alber valore enteros de un digito tales como  0, 1,2,�y 9
	n_: tipo string alberga valores como correlativo de comprobantes y similares
==================================================================================

============ASIGNACION DE CODIGOS============
	Grupo ==> Requ_
		table => Requ_Organizacion id=>001 id_empr
		table => Requ_calendary id=>010 id_cale
		table => Requ_seguridad id=>011 ->id_carg
		table => Requ_Errors id=>040 ->id_erro

	Grupo ==> Cont_
	Grupo ==> Fina_
		table => Fina_solicitud id =>501 id_soli
		tabla => Fina_creditos id=>502 id_cred
		tabla => Fina_ingresos id=>503 id_ingr
		tabla => Fina_egresos id=>504 id_egre
		tabla => Fina_Movimientos id=>505 id_movi
		tabla => Fina_clienresult id=>506 id_clrs
		tabla => Fina_clienbalance id=>507 id_clbl
		tabla => Fina_clienactivos id=>508 id_clac
		tabla => Fina_AnalistasMetas id=>509 id_mean
		tabla => Fina_Conceptos id=>510 id_conc
		tabla => Fina_Asignacion id=>511 id_asig
		tabla => Fina_Metas id=>512 id_meta
		tabla => Fina_MorasConfig id=>513 id_morc
	
	

		tabla => Fina_creditoMesage id=>580
	Grupo==>Stck_
	Grupo==>Ctae_
	Grupo==>Rrhh_
	Grupo==>Cost_
=============================================

*/
