--ALTER TABLE Fin_creditos ADD n_cuot numeric(11,7),	n_peri numeric(11,7),id_soli char(13)
/*codigo para agregar colunnas 
ALTER TABLE Fin_creditdet ADD k_pagc char(1) DEFAULT '',k_prec char(1) DEFAULT '' 
codigo para eliminar columnas
ALTER TABLE Fin_creditdet DROP COLUMN id_anal 

*/
ALTER TABLE Requ_Clientes ADD
	[l_nomb] [varchar](50) DEFAULT '',
	[l_apll] [varchar](50) DEFAULT '',
	[l_apll2] [varchar](50) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[n_expe] [char](5) DEFAULT '',		
	[k_civi] [int] DEFAULT 0,--0-soltero 1- casado  2- combiviente
	[k_regc] [int] DEFAULT 0,--Regimen Conyugal 1-bienes mancomunados 2- separacion de bienes 0- ninguno
	[n_depe] [int] DEFAULT 0,-- numero de dependientes economicos
	[k_vivi] [int] DEFAULT 0,--1-vivienda familiar 2- vivienda alquilada  0- vivienda propia
	[k_vivi2] [int] DEFAULT 0,--1-vivienda familiar 2- vivienda alquilada  0- vivienda propia
	[c_gris] [char](2) DEFAULT '',--codigo de grado de instrucion
	[c_prof] [char](3) DEFAULT '',--codigo de profesiones
	[c_ocup] [char](3) DEFAULT '',--codigo de ocupacion
	[f_resi] [varchar](10) DEFAULT '',--fecha de ocupacion de la casa	
	[f_resi2] [varchar](10) DEFAULT '',--fecha de ocupacion de la casa
	[f_cadu] [varchar](10) DEFAULT '',--fecah de caducacion dni	
	[id_anal] [varchar](35) DEFAULT ''



CREATE TABLE [dbo].[Tran_Flotas](
	[c_flota] [varchar](3) DEFAULT '',
	[id_vehi] [varchar](35) DEFAULT '',
	[k_stad] [int] DEFAULT 0-- 0=>Tramite 1=> registrado 2=>suspendido 3=>baja
)


CREATE TABLE [dbo].[Tran_Cajero](
	[id_caja] [varchar](35) DEFAULT '',
	[c_docu] [char](2) DEFAULT '',	
	[n_docu] [varchar](11) DEFAULT '',
	[l_caje] [varchar](100) DEFAULT '',
	[l_dire] [varchar](300) DEFAULT '',
	[l_refe] [varchar](300) DEFAULT '',
	[l_emai] [varchar](100) DEFAULT '',
	[n_celu] [varchar](20) DEFAULT '',
	[f_naci] [varchar](10) DEFAULT '',
	[k_gene] [int] DEFAULT 0,
	[k_stad] [int] DEFAULT 0--0=activo 1-anulado-2-suspendido
)

CREATE TABLE [dbo].[Tran_Caja](
	[id_caja] [varchar](35) DEFAULT '',
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[f_aper] [varchar](10) DEFAULT '',
	[h_aper] [time](7) DEFAULT '',
	[f_cier] [varchar](10) DEFAULT '',
	[h_cier] [time](7) DEFAULT '',
	[s_inic] [numeric](20,7) DEFAULT 0,
	[s_falt] [numeric](20,7) DEFAULT 0,
	[k_arre] [int] DEFAULT 0,-- si ser arreglo el faltante 0 no erraglado 1- arreglado 9-otros/*/
	[s_sobr] [numeric](20,7) DEFAULT 0,
	[s_fina] [numeric](20,7) DEFAULT 0,	
	[k_stad] [int] DEFAULT 0,--0 aperturado 1- cerrado 9-otros
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
	
)

CREATE TABLE [dbo].[Tran_Ingresos](
	[c_ano]		[char](4) DEFAULT '',
	[c_mes]		[char](2) DEFAULT '',
	[c_sucu]	[char](3) DEFAULT '',
	[c_comp]	[char](2) DEFAULT '',
	[n_seri]	[char](4) DEFAULT '',
	[n_comp]	[char](10) DEFAULT '',
	[f_comp]	[varchar](10) DEFAULT '',
	[f_pago]	[varchar](10) DEFAULT '',
	[f_venc]	[varchar](10) DEFAULT '',
	[n_docu]	[varchar](11) DEFAULT '',
	[s_impo]	[numeric](20,7) DEFAULT 0,
	[s_pigv]	[numeric](20,7) DEFAULT 0,
	[s_igv]		[numeric](20,7) DEFAULT 0,
	[s_inte]	[numeric](20,7) DEFAULT 0,
	[s_mora]	[numeric](20,7) DEFAULT 0,
	[s_desc]	[numeric](20,7) DEFAULT 0,
	[s_redo]	[numeric](20,7) DEFAULT 0,--guarda la diferencia por redondeo
	[s_tota]	[numeric](20,7) DEFAULT 0,
	[k_mone]	[int] DEFAULT 0,
	[s_tipc]	[numeric](10,5) DEFAULT 0,
	[k_tipp]	[int] DEFAULT 0,
	[c_medp]	[char](3) DEFAULT '',
	[n_medp]	[varchar](10) DEFAULT '',	
	[id_ingr]	[varchar](35) DEFAULT '',--se autogenera con largo de 5 filtrando c_ano c_mes c_sucu
	[id_cred]	[varchar](35) DEFAULT '',
	[id_cont]	[varchar](35) DEFAULT '',--id generado para contabilidad si esta habilitado modulo contabilidad
	[id_caja]	[varchar](35) DEFAULT '',
	[c_turn]	[int] DEFAULT 0,
	[k_stad]	[int] DEFAULT 0,--0- normal -1 anulado
	[l_obse]	[varchar](150) DEFAULT '',--observaciones	
	[c_usua]	[varchar](25) DEFAULT '',
	[f_digi]	[datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Tran_IngresosDetalle](
	[id_ingr]	[varchar](35) DEFAULT '',--se crea con c_ano-c_mes-c_sucu-id_ingre tabla fin_ingresos
	[n_item]	[char](3) DEFAULT '',--numero del item
	[c_prod]	[varchar](7) DEFAULT '',--pago de cuotas 001001000001  equifax 001001000002	
	[s_impo]	[numeric](20,7) DEFAULT 0,
	[s_igv]		[numeric](20,7) DEFAULT 0,
	[s_inte]	[numeric](20,7) DEFAULT 0,
	[s_mora]	[numeric](20,7) DEFAULT 0,
	[s_desc]	[numeric](20,7) DEFAULT 0,
	[s_tota]	[numeric](20,7) DEFAULT 0
)

CREATE TABLE [dbo].[Tran_Egresos](
	[c_ano]		[char](4) DEFAULT '',
	[c_mes]		[char](2) DEFAULT '',
	[c_sucu]	[char](3) DEFAULT '',
	[c_comp]	[char](2) DEFAULT '',
	[n_seri]	[char](4) DEFAULT '',
	[n_comp]	[char](10) DEFAULT '',
	[f_comp]	[varchar](10) DEFAULT '',
	[f_pago]	[varchar](10) DEFAULT '',
	[f_venc]	[varchar](10) DEFAULT '',	
	[n_docu]	[varchar](11) DEFAULT '',
	[s_impo]	[numeric](20,7) DEFAULT 0,
	[s_pigv]	[numeric](20,7) DEFAULT 0,
	[s_inte]	[numeric](20,7) DEFAULT 0,
	[s_igv]		[numeric](20,7) DEFAULT 0,
	[s_desc]	[numeric](20,7) DEFAULT 0,
	[s_redo]	[numeric](20,7) DEFAULT 0,--guarda la diferencia por redondeo
	[s_tota]	[numeric](20,7) DEFAULT 0,
	[k_mone]	[int] DEFAULT 0,
	[s_tipc]	[numeric](10,5) DEFAULT 0,
	[k_tipp]	[int] DEFAULT 0,
	[c_medp]	[char](3) DEFAULT '',
	[n_medp]	[varchar](15) DEFAULT '',
	[id_egre]	[varchar](35) DEFAULT '',--se autogenera con largo de 5 filtrando c_ano c_mes c_sucu
	[id_cred]	[varchar](35) DEFAULT '',
	[id_cont]	[varchar](35) DEFAULT '',--id generado para contabilidad si esta habilitado modulo contabilidad
	[id_caja]	[varchar](35) DEFAULT '',
	[c_turn]	[int] DEFAULT 0,
	[k_stad]	[int] DEFAULT 0,--0- normal -1 anulado
	[l_obse]	[varchar](150) DEFAULT '',--observaciones	
	[c_usua]	[varchar](25) DEFAULT '',
	[f_digi]	[datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Tran_EgresosDetalle](
	[id_egre]	[varchar](35) DEFAULT '',--se crea con c_ano-c_mes-c_sucu-id_egre tabla fin_egeresos
	[n_item]	[char](3) DEFAULT '',
	[c_prod]	[varchar](7) DEFAULT '',--pago de cuotas 001001000001  equifax 001001000002	
	[s_impo]	[numeric](20,7) DEFAULT 0,
	[s_igv]		[numeric](20,7) DEFAULT 0,
	[s_inte]	[numeric](20,7) DEFAULT 0,	
	[s_desc]	[numeric](20,7) DEFAULT 0,
	[s_tota]	[numeric](20,7) DEFAULT 0
)

CREATE TABLE [dbo].[Tran_Movimientos](
	[id_movi] [varchar](35) DEFAULT '',
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[f_movi]	[varchar](10) DEFAULT '',
	[k_movi] [int] DEFAULT 0, -- 0=>Deposito --- 1=>Retiro
	[c_cuen] [varchar](20) DEFAULT '',
	[c_bank] [varchar](3) DEFAULT '',	
	[n_tran] [varchar](10) DEFAULT '',
	[s_tota] [numeric](20,7) DEFAULT 0,
	[k_stad] [int] DEFAULT 0,	
	[l_obse] [varchar](150) DEFAULT '',--observaciones
	[id_caja] [varchar](35) DEFAULT '',
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)



CREATE TABLE [dbo].[Tran_Sisprop]
(
[_05_ksiam] [int] DEFAULT 0,--guada informsacion del metodo que se utilizara para la amortizacion  0- metodo frances 1- peru interes y capital fijo  2- metodo aleman/italiano
[_05_ktasa] [int] DEFAULT 0,-- guarda el tipode tasa si es mediante TIR o metoso normal 0- normal 1- metodo mediante TIR
[_05_kreqx] [int] DEFAULT 0,--informacion que se ve reflejada al realizar una solicitud  0-el sistema no jala informacion de la fuente externa 1- jala informacion obligatoriamente
[_05_kfuex] [int] DEFAULT 0,-- de que fuente se jala informacion 0-EQUIFAX 1-SENTINEL 9-OTROS
[_05_copex] [varchar](3) DEFAULT '',--codigo de producto de equifax https://soluciones.equifax.com.pe/efx-credit-report-web/?codeProduct=381 normamamente es 381
[_05_lusex] [varchar](250) DEFAULT '',-- usuario fuente externa EQUIFAX SENTINEL OTROS
[_05_pswex] [varchar](250) DEFAULT '',-- passwor fuente esterna EQUIFAX SENTINEL OTROS
[_05_sfuex] [numeric](5,3) DEFAULT 0,-- cobro automatico de consulta en fuente externa si es 0.00 no se registra ninguna cobro EQUIFAX SENTINEL OTROS
[_05_kfcad] [int] DEFAULT 0,--si al realizar la solictud sera o no obligatorio respetar la fecha de caducacion del DNI 0- no es obligatorio 1-es obligatorio esto tambien esto tambien valida en la tabla 0a_clientes 0-no es obliogatorio rrellenar campo f_cadu 1-si es obligatorio
[_05_ndias] [int] DEFAULT 0,-- guarda los dias de vigencia de la evaluacion del cliente tanto para EERR BBGG AAFF
-- [_05_ktick] [int] DEFAULT 0,-- 0- no imprime ticket 1- imprime ticket
[_05_kredo] [int] DEFAULT 0,-- tipo de redondeo 0-redondeoa asia riba 1-redondeo normal  2- redondeo hacia bajo
[_05_kmora] [int] DEFAULT 0,-- tipo de generar mora 0-mora calcula por porcentaje  1-mora calcula por monto en moneda
[_05_sprec] [numeric](20,7) DEFAULT 0,-- descuento del interes al momento de hacer precancelacion monto en porcentaje el campo alberga informacion /100 ejemplo 50% -> 0.50
[_05_nhist] [int] DEFAULT 0,-- Cantidad a Mostrar el Histórico Créditos
[_05_nhava] [int] DEFAULT 0,-- Cantidad a Mostrar el Histórico creditos de aval
[_05_nhsol] [int] DEFAULT 0,-- Cantidad a Mostrar el Histórico solicitudes
[_05_nheef] [int] DEFAULT 0,-- Cantidad a Mostrar el Histórico Estados financieros
[_05_ccomi] [varchar](2) DEFAULT '',-- Codigo Comprobante ingreso
[_05_ccome] [varchar](2) DEFAULT '',-- codigo Comprobante Egreso
[_05_cproi] [varchar](7) DEFAULT '',-- codigo Producto Ingreso
[_05_cproe] [varchar](7) DEFAULT '',-- codigo Producto Egreso
[_05_cprof] [varchar](7) DEFAULT '',-- codigo Producto Fuente Externa
)
/*list productos
-001001000001 ->Pago de cuotas 
-001001000002 ->Equifax-Sentinel-Otros Relacionados
-001001000003 ->Despositos
-001001000004 ->Retiro de dinero del banco  para ingresar a caja 
-001001000009 ->Acumulacion de dinero para canasta navide�a
-001001999999 ->Otros ingresos - y egresos*/

