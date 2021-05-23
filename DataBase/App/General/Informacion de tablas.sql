/*DETALLE DE LAS TABLAS

Abreviaturas aplicadas a las tablas
Cont_: contabilidad
Fina_: financiera
Stck_: stock
Ctae_: cuenta corriente

Abreviaturas aplicadas a los campos

c_: tipo string c�digos 
f_: tipo string o date alberga fechas
l_: tipo string alberga detalle de alg�n c�digo u otros
s_: tipo num�rico o double alberga mostos  porcentajes 
k_: tipo integer alber valore enteros de un digito tales como  0, 1,2,�y 9
n_: tipo string alberga valores como correlativo de comprobantes y similares

Tablas utilizadas varios m�dulos
los id generados para alugas tablas  comensaran con un codigo de 3 digitos en 1-del modulo 2y3- es codigo asiganado por tabla  
modulo general
table=> a0_Organizacion id=>001
table=> a0_calendar id=>010
table=> a0_seguridad id=>011 ->id_carg
modulo financiera
 
	table=> solicitud id =>501
	tabla => creditos id=>502
	tabla => ingresos id=>503



	tabla => fin_clienresult id=>505
	tabla => fin_clienbalance id=>507
	tabla => fin_clienactivos id=>508

	tabla => fin_creditoMesage id=>580
	
		

*/

/*esta tabla alberga informacion de clientes y provedores son utilizados por los modulos de:
-Contabilidad
-finaciera- en caso de proveedores
-Stock
-Cuenta corriente*/



CREATE TABLE [dbo].[Requ_Clientes](
	[c_docu] [char](2) DEFAULT '',
	[n_docu] [varchar](11) DEFAULT '',
	[l_clie] [varchar](100) DEFAULT '',
	[l_dire] [varchar](500) DEFAULT '',
	[l_dire2] [varchar](500) DEFAULT '',
	[l_refe] [varchar](500) DEFAULT '',
	[l_refe2] [varchar](500) DEFAULT '',	
	[c_ubig] [char](6) DEFAULT '',-- codigo de obigeo
	[c_ubig2] [varchar](6) DEFAULT '',-- codigo de obigeo
	[l_srcs] [varchar](300) DEFAULT '',--codigo html para el mapa de google maps
	[n_tele] [varchar](30) DEFAULT '',
	[n_celu] [varchar](30) DEFAULT '',
	[l_emai] [varchar](100) DEFAULT '',	
	[l_obse] [varchar](100) DEFAULT '',
	[k_gene] [int] DEFAULT 0,--2-empresa 0-masculico 1-femenino
	[f_naci] [varchar](10) DEFAULT '',			
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Requ_ClientesFile]
(
	[n_docu] [varchar](11) DEFAULT '',
	[id_file] [varchar](35) DEFAULT '',
	[l_url] [varchar](150) DEFAULT '',
	[l_name] [varchar](50) DEFAULT '',
	[l_type] [varchar](15) DEFAULT '',
	[n_size] [int] DEFAULT 0,
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)
CREATE TABLE [dbo].[Requ_Proveedor](
	[c_docu] [char](2)  DEFAULT '',
	[n_docu] [varchar](11) DEFAULT '',
	[l_prov] [varchar](100) DEFAULT'',	
	[l_dire] [varchar](170) DEFAULT '',
	[l_dire2] [varchar](170) DEFAULT '',
	[l_refe] [varchar](100) DEFAULT '',
	[l_refe2] [varchar](100) DEFAULT '',
	[c_ubig] [char](6) DEFAULT '',-- codigo de obigeo
	[c_ubig2] [varchar](6) DEFAULT '',-- codigo de obigeo
	[l_ciiu] [varchar](100) DEFAULT '',
	[n_tele] [varchar](15) DEFAULT '',
	[n_celu] [varchar](15) DEFAULT '',
	[l_emai] [varchar](100) DEFAULT '',
	[l_obse] [varchar](100) DEFAULT '',
	[c_usua] [varchar](40) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)

/*esta tabla alberga informacion de tipo de cambio segun sunat u segun el usuario son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente
-financiera*/
CREATE TABLE [dbo].[Requ_TipCambio](
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[c_dias] [varchar](2) DEFAULT '',
	[s_comp] [numeric](9, 4) DEFAULT '',
	[s_vent] [numeric](9, 4) DEFAULT '',
	[f_actu] [varchar](10) DEFAULT '',
	[c_usua] [char](40) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)
/*esta tabla alberga informacion de los comprobantes utilizados son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente
- financiera*/
CREATE TABLE [dbo].[Requ_Comprobantes](
	[c_comp] [char](2) DEFAULT '',
	[l_comp] [varchar](300) DEFAULT '',
	[k_impr] [int] DEFAULT 0,
	[k_nega] [int] DEFAULT 0,
	[k_cred] [int] DEFAULT 0,
	[k_coti] [int] DEFAULT 0,
	[k_dese] [int] DEFAULT 0,
	[k_regc] [int] DEFAULT 0,
	[k_igvc] [int] DEFAULT 0,
	[k_regv] [int] DEFAULT 0,
	[k_igvv] [int] DEFAULT 0,
	[l_file] [varchar](50) DEFAULT '',
	[l_file2] [varchar](50) DEFAULT '',
	[n_seri] [varchar](4) DEFAULT '',
	[n_seri2] [varchar](4) DEFAULT '',
	[l_impr] [varchar](50) DEFAULT '',
	[l_impr2] [varchar](50) DEFAULT '',
	[c_usua] [varchar](40) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)
/*esta tabla alberga informacion de los comprobantes utilizados son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente
- financiera*/
CREATE TABLE [dbo].[Requ_ComprobantesCorre](
	[c_comp] [char](2) DEFAULT'',
	[n_seri] [char](4) DEFAULT'',
	[n_comp] [char](10) DEFAULT ''
) 
/*esta tabla alberga los tipos de documentos son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente
- financiera*/
CREATE TABLE [dbo].[Requ_Documentos](	
	[c_docu] [char](2) DEFAULT '',
	[l_docu] [varchar](70) DEFAULT '',
	[n_long] [int] DEFAULT 0
)

/*esta tabla alberga las monedas  son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente
-fianciera*/
CREATE TABLE [dbo].[Requ_Monedas](
	[k_mone] [int] DEFAULT 0,
	[l_mone] [varchar](20) DEFAULT '',
	[l_simb] [varchar](4) DEFAULT '',
	[c_abrv] [varchar](3) DEFAULT ''
)

/*esta tabla alberga la informacion de la empresa esto se muestra en los reportes y mas son utilizados por todo los modulos */
CREATE TABLE [dbo].[Requ_Organizacion](
	[id_empr] [varchar](35) DEFAULT '',
	[n_ruc] [varchar](11) DEFAULT '',
	[l_empr] [varchar](100) DEFAULT '',
	[l_dire] [varchar](100) DEFAULT '',
	[l_refe] [varchar](100) DEFAULT '',
	[n_tele] [varchar](15) DEFAULT '',
	[n_celu] [varchar](15) DEFAULT '',
	[l_email] [varchar](100) DEFAULT '',
	[c_ubig] [varchar](6) DEFAULT '',
	[k_stad] [int] DEFAULT 0,-- estado en sunat ACTIVO etc.
	[k_cond] [int] DEFAULT 0,-- condicion en sunat HABIDO etc.
	[l_ciiu] [varchar](100) DEFAULT '',-- descripcion del ciiu principal
	[n_repr] [varchar](11) DEFAULT '',
	[l_repr] [varchar](50) DEFAULT '',
	[l_carg] [varchar](50) DEFAULT '',
	[f_carg] [varchar](10) DEFAULT '',
	[c_usua] [varchar](40) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
) 

/*esta tabla alberga la informacion de la empresa esto se muestra en los reportes y mas son utilizados por todo los modulos */
CREATE TABLE [dbo].[Requ_Sucursal]
(
	[c_sucu] [varchar](3) DEFAULT '',
	[l_sucu] [varchar](100) DEFAULT '',
	[k_stad] [int] DEFAULT 0,
	[c_usua] [varchar](40) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
) 
CREATE TABLE [dbo].[Requ_Almacen]
(
	[c_sucu] [varchar](3) DEFAULT '',
	[c_alma] [varchar](3) DEFAULT '',
	[l_alma] [varchar](100) DEFAULT '',
	[k_stad] [int] DEFAULT 0,
	[c_usua] [varchar](40) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
) 
/*esta tabla alberga medios de pago en caso se ingresoo bancario son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente
- financiera*/
CREATE TABLE [dbo].[Requ_MedioPago](
	[c_medp] [char](3) DEFAULT '',
	[l_medp] [varchar](100) DEFAULT ''
) 

/*esta tabla alberga los tipos de pago ejmplo credito efectivo banco ... son utilizados por los modulos de:
-Contabilidad
-Stock
-Cuenta corriente*/
CREATE TABLE [dbo].[Requ_TipoPago](
	[c_tipp] [char](2) DEFAULT '',
	[l_tipp] [varchar](30) DEFAULT '',
	[k_tipp] [int] DEFAULT 0,
	-- [c_cuev] [varchar](12) DEFAULT '',
	-- [c_cuec] [varchar](12) DEFAULT '',
	[k_stad] [int] DEFAULT 0
)

CREATE TABLE [dbo].[Requ_Productos](
	[c_prod] [varchar](7) DEFAULT '',
	[l_prod] [varchar](150) DEFAULT '',
	[k_nive] [int] DEFAULT 1,--nivel del codigo 1- principal 2- nivel secundario 3- tercer nivel
	[k_prod] [int] DEFAULT 0,--0=>Producto,1=>Servicio
	[k_igv] [int] DEFAULT 0,--0=>grava igv,1=>no grava igv	
	[c_usua] [varchar](25) DEFAULT ''
)
-- CREATE TABLE [dbo].[Requ_Sisprop](
-- 	[c_ano] [char](4) DEFAULT '',
-- 	[_00_sigvporc] [numeric](6, 2) DEFAULT '',
-- 	[_00_diasvenc] [numeric](2, 0) DEFAULT '',
-- 	[_00_ctaitf] [varchar](10) DEFAULT '',
-- 	[_01_ctaigv] [char](12) DEFAULT '',
-- 	[_01_ctapercep] [varchar](12) DEFAULT '',
-- 	[_01_ctareten]  [varchar](12) DEFAULT '',
-- 	[_01_ctadetrac] [varchar](12) DEFAULT '',
-- 	[_01_ctadetrav] [varchar](12) DEFAULT '',
-- 	[_01_ctarenta4] [varchar](12) DEFAULT '',
-- 	[_01_ctaintexp] [varchar](12) DEFAULT '',
-- 	[_01_ctaintexc] [varchar](12) DEFAULT '',
-- 	[_01_ctadescxp] [varchar](12) DEFAULT '',
-- 	[_01_ctadescxc] [varchar](12) DEFAULT '',
-- 	[_01_cfluefeci] [varchar](12) DEFAULT '',
-- 	[_01_cfluefece] [varchar](12) DEFAULT '',
-- 	[_01_kreten] [numeric](1, 0) DEFAULT '',
-- 	[_01_kdetr] [numeric](1, 0) DEFAULT '',
-- 	[_01_kperc] [numeric](1, 0) DEFAULT '',
-- 	[_01_sreten] [numeric](5, 2) DEFAULT '',
-- 	[_01_sdetr] [numeric](5, 2) DEFAULT '',
-- 	[_01_s_perc] [numeric](5, 2) DEFAULT '',	
-- 	[_01_sitfporc] [numeric](6, 2) DEFAULT '',
-- 	[_02_kretenv] [numeric](1, 0) DEFAULT '',
-- 	[_02_kdetrv] [numeric](1, 0) DEFAULT '',
-- 	[_02_kpercv] [numeric](1, 0) DEFAULT '',
-- 	[_02_kretenc] [numeric](1, 0) DEFAULT '',
-- 	[_02_kdetrc] [numeric](1, 0) DEFAULT '',
-- 	[_02_kpercc] [numeric](1, 0) DEFAULT '',
-- 	[_00_kmone] [numeric](1, 0) DEFAULT '',
-- 	[_00_stipc] [numeric](4, 3) DEFAULT '',
-- 	[_02_ccomp] [varchar](12) DEFAULT '',
-- 	[_02_cvent] [varchar](12) DEFAULT ''
-- )
CREATE TABLE [dbo].[Requ_Sisprop]
(
	[c_ano] [char](4) DEFAULT '',
	[_00_sigvporc] [numeric](6, 2) DEFAULT 0,
	[_00_diasvenc] [int] DEFAULT 0,	
	[_00_folddriv] [varchar](33) DEFAULT ''
)
/*esta tabla alberga los usuarios del sistema... son utilizados por todo los modulos*/
CREATE TABLE [dbo].[Requ_Seguridad](	
	[c_usua] [char](3) DEFAULT '',
	[Usuario] [varchar](25) DEFAULT '',
	[n_docu] [varchar](11) DEFAULT '',
	[l_nombr] [varchar](100) DEFAULT '',
	[l_apl1] [varchar](50) DEFAULT '',
	[l_apl2] [varchar](50) DEFAULT '',
	[l_dire] [varchar](300) DEFAULT '',
	[l_celu] [varchar](20) DEFAULT '',	
	[l_emai] [varchar](200) DEFAULT '',
	[k_carg] [int] DEFAULT 0,--0- administrador  1-supervisor 3- vendedor 4- cajero	 5- ANALISTA
	[l_carg] [varchar](100) DEFAULT '',
	[id_carg] [varchar](35) DEFAULT '',
	[c_turn] [int] DEFAULT 0,
	[n_sero] [varchar](3) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[c_alma] [char](3) DEFAULT '',
	[l_pass] [varchar](200) DEFAULT ''
)

CREATE TABLE [dbo].[Requ_UserPermisos](
	[c_usua] [varchar](25) DEFAULT '',	
	[c_perm] [varchar](15) DEFAULT '',
	[k_nive] [int] DEFAULT 0,
)

CREATE TABLE [dbo].[Requ_Banks](	
	[c_bank] [varchar](3) DEFAULT '',
	[l_bank] [varchar](100) DEFAULT ''
)

--====================== a0_ratios - a0_ratiosdet =========================
CREATE TABLE [dbo].[Requ_ratios](
	[c_rati] [varchar](4) DEFAULT '',	
	[l_rati] [varchar](50) DEFAULT '',
	[k_nive] [int] DEFAULT 0,
	[k_fact] [int] DEFAULT 0,-- activa para evaluacion de cliente modulo financiera 0=no 1=activado
	[k_cact] [int] DEFAULT 0,-- para el modulo contable financiera 0=no 1=activado
	[n_vari] [int] DEFAULT 0,-- numero de variables a utilizar
	[l_deta] [varchar](50) DEFAULT '',--detalle de que devuelve 
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)
CREATE TABLE [dbo].[Requ_ratiosdet](	
	[c_rati] [varchar](4) DEFAULT '',	
	[l_valu] [varchar](6) DEFAULT '',	
	[l_deta] [varchar](50) DEFAULT '',--detalle de que devuelve 
	[l_obse] [varchar](70) DEFAULT '',--detalle de que devuelve 
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

--====================== a0_ubigeo=========================
CREATE TABLE [dbo].[Requ_Ubigeo](	
	[c_ubig] [char](6) DEFAULT '',	
	[l_dist] [varchar](25) DEFAULT '',	
	[l_prov] [varchar](25) DEFAULT '',
	[l_depa] [varchar](25) DEFAULT ''
	)

--======================a0_gradoinstruccion- a0_profesiones-a0_ocupaciones=========================
CREATE TABLE [dbo].[Requ_GradoInstruccion](	
	[c_grad] [char](2) DEFAULT '',
	[l_grad] [varchar](50) DEFAULT '',
)
CREATE TABLE [dbo].[Requ_Profesiones](	
	[c_prof] [char](3) DEFAULT '',	
	[l_prof] [varchar](70) DEFAULT '',
)
CREATE TABLE [dbo].[Requ_Ocupaciones](	
	[c_ocup] [char](3) DEFAULT '',	
	[l_ocup] [varchar](70) DEFAULT ''
)

CREATE TABLE [dbo].[Requ_Calendary](	
	[id_cale] [varchar](35) DEFAULT '',	--010
	[c_ano] [varchar](4) DEFAULT '',	
	[c_mes] [varchar](2) DEFAULT '',
	[c_dia] [varchar](2) DEFAULT '',
	[l_desc] [varchar](100) DEFAULT '',
	[k_stad] [int] DEFAULT 0,--0=>valor por defual none osea si funciona para todos loa años  1=> valor default 
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()	
)

CREATE TABLE [dbo].[Requ_Errors](	
	[id_erro] [varchar](35) DEFAULT '',	--010	
	[l_desc] [varchar](100) DEFAULT '',
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()	
)
--============================================tabla que gurda el tokend digital===========================
CREATE TABLE [dbo].[Requ_TokenDrive](
	[type] [varchar](150) DEFAULT '',
	[project_id] [varchar](150) DEFAULT '',
	[private_key_id] [varchar](150) DEFAULT '',
	[private_key] [varchar](2000) DEFAULT '',
	[client_email] [varchar](150) DEFAULT '',
	[client_id] [varchar](150) DEFAULT '',
	[auth_uri] [varchar](150) DEFAULT '',
	[token_uri] [varchar](150) DEFAULT '',
	[auth_provider_x509_cert_url] [varchar](150) DEFAULT '',
	[client_x509_cert_url] [varchar](150) DEFAULT ''
)