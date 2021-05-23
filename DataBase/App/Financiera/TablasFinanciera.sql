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
	[c_sumi] [varchar](9) DEFAULT '',
	[c_sumi2] [varchar](9) DEFAULT '',
	[k_vivi] [int] DEFAULT 0,--1-vivienda familiar 2- vivienda alquilada  0- vivienda propia
	[k_vivi2] [int] DEFAULT 0,--1-vivienda familiar 2- vivienda alquilada  0- vivienda propia
	[c_gris] [char](2) DEFAULT '',--codigo de grado de instrucion
	[c_prof] [char](3) DEFAULT '',--codigo de profesiones
	[c_ocup] [char](3) DEFAULT '',--codigo de ocupacion
	[f_resi] [varchar](10) DEFAULT '',--fecha de ocupacion de la casa	
	[f_resi2] [varchar](10) DEFAULT '',--fecha de ocupacion de la casa
	[f_cadu] [varchar](10) DEFAULT '',--fecah de caducacion dni	
	[id_anal] [varchar](35) DEFAULT '',
	[id_regi] [varchar](35) DEFAULT ''--id de analista que registro



CREATE TABLE [dbo].[Fina_ClientesLinks](
	[k_link] [int] DEFAULT 0,--biene de la tabla fin_links
	[n_docu] [varchar](11) DEFAULT '',
	[n_vinc] [varchar](11) DEFAULT '',	
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)

CREATE TABLE [dbo].[Fina_ClientesAnalistas](
	[n_docu] [varchar](11) DEFAULT '',--numero de documento del analista	
	[n_anal] [varchar](11) DEFAULT '',
	[l_anal] [varchar](100) DEFAULT '',
	[l_dire] [varchar](500) DEFAULT '',	
	[l_refe] [varchar](500) DEFAULT '',	
	[n_celu] [varchar](20) DEFAULT '',	
	[id_anal] [varchar](35) DEFAULT '', --id unico de analista
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
)

CREATE TABLE [dbo].[Fina_Links](
	[k_link] [int] DEFAULT 0,
	[l_link] [varchar](25) DEFAULT '',
	[k_cont] [int] DEFAULT 0,--- valor de contra vinculo
)
--====================== Fin_EERR ================
CREATE TABLE [dbo].[Fina_EERR](	
	[c_resu] [varchar](7) DEFAULT '',
	[l_resu] [varchar](150) DEFAULT '',
	[k_nive] [int] DEFAULT 0,--nivel del codigo 1- principal 2- nivel secundario 3- tercer nivel
	[k_sig] [int] DEFAULT 0,--0= nullo 1= signo negativo   - 2= al simbolo +
	[k_tota] [int] DEFAULT 0,-- 0= no guarda suma --1=guarda suma a nivel 1  --2= guarda suma a nivel 2   --3= guarda suma anivel 3 -- 9=guaqrda suma a todo nivel	
	[k_vadf] [int] DEFAULT 0,--valor por defecto 0 si no es obligatorio mostrar 1 si es obligatorio mostrarlo
	[k_bank] [int] DEFAULT 0,--si pedira codigo de banco o no 0=no 1=si
	[k_rati] [int] DEFAULT 0,--si opcion de ratios 0=no 1=si
	[l_rati] [varchar](70) DEFAULT '',--informacion de ratios separados por bloques -->|1.1|1.5|8.1|
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

--====================== Fin_BBGG ================
CREATE TABLE [dbo].[Fina_BBGG](	
	[c_balc] [varchar](7) DEFAULT '',
	[l_balc] [varchar](150) DEFAULT '',
	[k_nive] [int] DEFAULT 0,--nivel del codigo 1- principal 2- nivel secundario 3- tercer nivel	
	[k_sig] [int] DEFAULT 0,--0= nullo 1= signo negativo   - 2= al simbolo +
	[k_tota] [int] DEFAULT 0,-- 0= no guarda suma --1=guarda suma a nivel 1  --2= guarda suma a nivel 2   --3= guarda suma anivel 3 -- 9=guaqrda suma a todo nivel	
	[k_vadf] [int] DEFAULT 0,--valor por defecto 0 si no es obligatorio mostrar 1 si es obligatorio mostrarlo
	[k_bank] [int] DEFAULT 0,--si pedira codigo de banco o no 0=no 1=si
	[k_acti] [int] DEFAULT 0,--si jala informacion de la tabla fin_clienactivos 0=no 1=si
	[k_rati] [int] DEFAULT 0,--si opcion de ratios 0=no 1=si
	[l_rati] [varchar](70) DEFAULT '',--informacion de ratios separados por bloques -->|1.1|1.5|8.1|
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

--====================== Fin_clienresult - Fin_clienresultdet =========================
CREATE TABLE [dbo].[Fina_ClientesEERR](
	[id_clrs] [varchar](35) DEFAULT '',	--id de la tabla Fin_clienresult
	[n_docu] [varchar](11) DEFAULT '',
	[f_eval] [varchar](10) DEFAULT '',
	[f_venc] [varchar](10) DEFAULT '',	
	[s_resu] [numeric](20,7) DEFAULT 0,
	[n_fina] [int] DEFAULT 0,	
	[s_fina] [numeric](20,7) DEFAULT 0,
	[k_stad] [int] DEFAULT 0,--0= descontinuado 1=activo 9-anulado
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)
CREATE TABLE [dbo].[Fina_ClientesEERRDetail](	
	[id_clrs] [varchar](35) DEFAULT '',--id de la tabla Fin_clienresult
	[c_resu] [char](7) DEFAULT '',		
	[c_bank] [varchar](3) DEFAULT '',--codigo de institucion finaciera
	[s_impo] [numeric](20,7) DEFAULT 0
)

--====================== Fin_clienbalance - Fin_clienbalancedet =========================
CREATE TABLE [dbo].[Fina_ClientesBBGG](
	[id_clbl] [varchar](35) DEFAULT '',	--id de la tabla Fin_clienbalance
	[n_docu] [varchar](11) DEFAULT '',
	[f_eval] [varchar](10) DEFAULT '',
	[f_venc] [varchar](10) DEFAULT '',	
	[s_balc] [numeric](20,7) DEFAULT 0,
	[n_fina] [int] DEFAULT 0,	
	[s_fina] [numeric](20,7) DEFAULT 0,	
	[k_stad] [int] DEFAULT 0,--0= descontinuado 1=activo 9-anulado
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)
CREATE TABLE [dbo].[Fina_ClientesBBGGDetail](	
	[id_clbl] [varchar](35) DEFAULT '',--id de la tabla Fin_clienbalance
	[c_balc] [char](7) DEFAULT '',		
	[c_bank] [varchar](3) DEFAULT '',--codigo de institucion finaciera
	[s_impo] [numeric](20,7) DEFAULT 0
)

--====================== Fin_clienactivos - Fin_clienactivosdet =========================
CREATE TABLE [dbo].[Fina_clienactivos](
	[id_clac] [varchar](35) DEFAULT '',	--id de la tabla Fin_clienactivos
	[n_docu] [varchar](11) DEFAULT '',
	[f_eval] [varchar](10) DEFAULT '',
	[f_venc] [varchar](10) DEFAULT '',	
	[s_acti] [numeric](20,7) DEFAULT 0,
	[n_acti] [int] DEFAULT 0,
	[k_stad] [int] DEFAULT 0,--0= descontinuado 1=activo 9-anulado
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)
CREATE TABLE [dbo].[Fina_clienactivosdet](	
	[id_clac] [varchar](35) DEFAULT '',--id de la tabla Fin_clienactivos
	[n_item] [int] DEFAULT 0,
	[k_acti] [int] DEFAULT 0,--tipo de activo 1=veiculos 2= casass terrenos inmuebles comerciales 3=electrodomesticos	4=muebles	
	[l_desc] [varchar](100) DEFAULT '', --descripcion del activo
	[s_acti] [numeric](20,7) DEFAULT 0,
	[c_ano] [varchar](4) DEFAULT '',
	[c_plac] [varchar](7) DEFAULT '',--numero de placa del automovil	
	[f_acti] [varchar](10) DEFAULT '',
	[n_mtcd] [numeric](20,7) DEFAULT 0,	-- metros cuadrados del los tereenos casa y otros
	[n_anti] [int] DEFAULT 0,-- anitguedad del inmueble en a�os
	[l_dire] [varchar](100) DEFAULT '', --direcciond del la propiedad
	[l_obse] [varchar](100) DEFAULT '', --observaciones
	[f_digi] [datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Fina_Analistas](
	[id_anal] [varchar](35) DEFAULT '',
	[c_docu] [char](2) DEFAULT '',
	[n_docu] [varchar](11) DEFAULT '',
	[l_anal] [varchar](100) DEFAULT '',
	[l_dire] [varchar](300) DEFAULT '',	
	[l_refe] [varchar](300) DEFAULT '',	
	[n_celu] [varchar](20) DEFAULT '',
	[l_emai] [varchar](100) DEFAULT '',
	[f_naci] [varchar](10) DEFAULT '',
	[k_gene] [int] DEFAULT 0,
	[k_stad] [int] DEFAULT 0--0=activo 1-anulado-2-suspendido
)
CREATE TABLE [dbo].[Fina_AnalistasMetas]
(
	[id_mean] [varchar](35) DEFAULT '',
	[id_anal] [varchar](35) DEFAULT '',
	[id_meta] [varchar](35) DEFAULT '',
	[c_ano] [varchar](4) DEFAULT '',
	[c_mes] [varchar](2) DEFAULT ''
)
--ALTER TABLE Fin_solcred ADD [l_obse] [varchar](150) DEFAULT ''
CREATE TABLE [dbo].[Fina_Solicitudes](
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[n_soli] [char](10) DEFAULT '',
	[f_soli] [varchar](10) DEFAULT '',
	[k_cred] [int] DEFAULT 0,-- tipo de solicitudes 0-consumo 1-comercial 2-activo fijo 3- transportista
	[n_docu] [varchar](11) DEFAULT '',
	[k_firc] [int] DEFAULT 0,-- 0- firma solo 1- firma con conyugue
	[k_fira] [int] DEFAULT 0,-- 0- no tiene aval 1- tiene aval
	[n_fext] [varchar](15) DEFAULT '',--codigo que te da equifax 
	[n_fina] [int] DEFAULT 0,
	[l_evex] [varchar](100) DEFAULT '',--evaluacion de equifax /sentinel/sbs
	[l_evve] [varchar](100) DEFAULT '',--opinion de susu vecinos /conocidos
	[s_resu] [numeric](20,7) DEFAULT 0,
	[s_evex] [numeric](20,7) DEFAULT 0,--monto total de endeudamiento segun equifax /sentinel/sbs
	[s_cres] [numeric](20,7) DEFAULT 0,-- credito solicitado por el analista
	[s_cred] [numeric](20,7) DEFAULT 0,--monto aprobado por el encargado de aprobar creditos
	[n_cuot] [int] DEFAULT 0,	
	[n_peri] [int] DEFAULT 0,
	[s_inte] [numeric](20,7) DEFAULT 0,
	[s_cuot] [numeric](20,7) DEFAULT 0,
	[s_tasa] [numeric](11,7) DEFAULT 0,
	[s_tasr] [numeric](11,7) DEFAULT 0,
	[n_diag] [int] DEFAULT 0,---dias de gracia
	[id_anal] [varchar](35) DEFAULT '',
	[k_stad] [int] DEFAULT 0,--0-en espera 1- aprobado 2-desaprobado  3- entregado- 4- PROGRAMADO  9-invalidada	
	[k_soli] [int] DEFAULT 0,-- tipo de creditos 0-normal 1- amplacion 2-paraleo  3- refinanciamiento
	[id_cred] [varchar](35) DEFAULT '',
	[id_cred_refe] [varchar](35) DEFAULT '',--id de credito que se realizara una modificacion como refinanciamiento o ampliacion	
	[f_apro] [varchar](10) DEFAULT '',
	[f_prog] [varchar](10) DEFAULT '',-- fecha en que se programa el credito para su desembolso
	[f_dese] [varchar](10) DEFAULT '',
	[id_soli] [varchar](35) DEFAULT '',
	[l_obse] [varchar](150) DEFAULT '',
	[l_obsa] [varchar](150) DEFAULT '',--detalle de la informacion xq fue o no aprobado el credito esto al momento de aprobar el credito	
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)
CREATE TABLE [dbo].[Fina_SolicitudesAval](
	[id_soli] [varchar](35) DEFAULT '',	
	[n_docu] [varchar](11) DEFAULT '',
	[n_aval] [varchar](11) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Fina_Creditos](
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[k_cred] [int] DEFAULT 0,--  0-normal 1- amplacion 2-paraleo  3- refinanciamiento
	[n_cred] [char](10) DEFAULT '',
	[f_cred] [varchar](10) DEFAULT '',
	[f_venc] [varchar](10) DEFAULT '',
	[n_docu] [varchar](11) DEFAULT '',
	[s_capi] [numeric](20,7) DEFAULT 0,
	[s_inte] [numeric](20,7) DEFAULT 0,
	[s_amor] [numeric](20,7) DEFAULT 0,
	[s_mora] [numeric](20,7) DEFAULT 0,
	[s_desc] [numeric](20,7) DEFAULT 0,
	[s_tasa] [numeric](11,7) DEFAULT 0,
	[s_tasr] [numeric](11,7) DEFAULT 0,
	[n_cuot] [int] DEFAULT 0,	
	[n_peri] [int] DEFAULT 0,
	[n_diag] [int] DEFAULT 0,---dias de gracia
	[s_tmor] [numeric](11,7) DEFAULT 0,
	[id_soli] [varchar](35) DEFAULT '',--numero de solicitud
	[id_cred] [varchar](35) DEFAULT '',
	[id_anal] [varchar](35) DEFAULT '',
	[k_stad] [int] DEFAULT 0,--0-nnormal 1- culminado 9-anulado
	[k_cond] [int] DEFAULT 0,--0-normal 1- compromiso 2- recuperacion 3-perdida 4-castigado 5-porceso judicial
	[f_digi] [datetime]  DEFAULT getdate(),
	[c_usua] [varchar](25) DEFAULT ''
)


CREATE TABLE [dbo].[Fina_CreditosDetalle](
	[id_cred] [varchar](35) DEFAULT '',
	[f_venc]  [varchar](10) DEFAULT '',
	[f_pago]  [varchar](10) DEFAULT '',
	[n_cuot] [int] DEFAULT 0,
	[s_cuot] [numeric](20,7) DEFAULT 0,--la cuota a pagar
	[s_scap] [numeric](20,7) DEFAULT 0,--saldo de capital
	[s_capi] [numeric](20,7) DEFAULT 0,
	[s_inte] [numeric](20,7) DEFAULT 0,
	[s_mora] [numeric](20,7) DEFAULT 0,
	[s_desc] [numeric](20,7) DEFAULT 0,
	[s_tota] [numeric](20,7) DEFAULT 0,--total de la cuota sumando la mora
	[s_capr] [numeric](20,7) DEFAULT 0,
	[s_intr] [numeric](20,7) DEFAULT 0,	
	[s_amor] [numeric](20,7) DEFAULT 0,--amortizacion de la cuota
	[n_dias]  [int] DEFAULT 0,
	[k_prec] [int] DEFAULT 0,--precancelacion 0 -false 1- true
	[k_pagc] [int] DEFAULT 0,--pago a cuenta 0 -false 1- true	
	[k_stad] [int] DEFAULT 0--0 -falta pagar 1- pagado
	
)
--ALTER TABLE Fin_creditdet ADD k_pagc char(1) DEFAULT '',k_prec char(1) DEFAULT '' 



CREATE TABLE [dbo].[Fina_Cajeros](
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


CREATE TABLE [dbo].[Fina_Conceptos](
	[id_conc] [varchar](35) DEFAULT '',
	[l_conc] [varchar](100) DEFAULT '',
	[k_mora] [int] DEFAULT 0,-- 1=> se considera como mora sumable
	[k_stad] [int] DEFAULT 0--0=activo
)
CREATE TABLE [dbo].[Fina_MoraConfig]
(
	[id_morc] [varchar](35) DEFAULT '',
	[k_morc] [int] DEFAULT 0, --1-> es mora,0->no es mora
	[l_morc] [varchar](100) DEFAULT '',
	[n_peri] [int] DEFAULT 0, --periodo incial
	[n_perf] [int] DEFAULT 0, --periodo final
	[n_diaa] [int] DEFAULT 0, --dias de atrazo
)

CREATE TABLE [dbo].[Fina_Asignaciones](
	[id_asig] [varchar](35) DEFAULT '',
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[f_asig] [varchar](10) DEFAULT '',
	[s_porm] [numeric](20,7) DEFAULT 0,-- porcentaje de mora
	[k_stad] [int] DEFAULT 0--0=activo
)
CREATE TABLE [dbo].[Fina_AsignacionesDetail]
(
	[id_asig] [varchar](35) DEFAULT '',
	[id_conc] [varchar](35) DEFAULT '',
	[k_mora] [int] DEFAULT 0,--1 -> detalla mora
	[s_porc] [numeric](20,7) DEFAULT 0
)
CREATE TABLE [dbo].[Fina_Metas](
	[id_meta] [varchar](35) DEFAULT '',
	[c_ano] [char](4) DEFAULT '',
	[c_mes] [char](2) DEFAULT '',
	[c_sucu] [char](3) DEFAULT '',
	[n_clie] [int] DEFAULT 0,--numero de clientes
	[s_sald] [numeric](20,7) DEFAULT 0,--Saldo Interes
	[s_morp] [numeric](20,7) DEFAULT 0--porcentage de mora
)

CREATE TABLE [dbo].[Fina_MetasDetalle]
(
	[id_meta] [varchar](35) DEFAULT '',
	[k_meta] [int] DEFAULT 0, --tipo de meta  =>  0-> otros 1-> mora
	[id_morc] [varchar](35) DEFAULT '', -- ID tabla Fina_MoraConfig
	[s_meta] [numeric](20,7) DEFAULT 0,--porcentage de meta
)
--ALTER TABLE Fin_cajero ADD c_sucu char(3) DEFAULT ''
CREATE TABLE [dbo].[Fina_Caja](
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

-- CREATE TABLE [dbo].[Fina_cajaegre](
-- 	[c_egre] [varchar](5) DEFAULT '',
-- 	[c_ano] [char](4) DEFAULT '',
-- 	[c_mes] [char](2) DEFAULT '',
-- 	[c_sucu] [char](3) DEFAULT '',
-- 	[f_egre] [varchar](10) DEFAULT '',
-- 	[n_rucp] [varchar](11) DEFAULT '',
-- 	[c_comp] [varchar](2) DEFAULT '',
-- 	[n_seri] [varchar](3) DEFAULT '',
-- 	[n_comp] [varchar](10) DEFAULT '',
-- 	[l_deta] [varchar](250) DEFAULT '',
-- 	[s_tota] [numeric](20,7) DEFAULT 0,		
-- 	[id_caja] [varchar](35) DEFAULT '',
-- 	[c_turn] [int] DEFAULT 0,
-- 	[c_usua] [varchar](25) DEFAULT '',
-- 	[f_digi] [datetime]  DEFAULT getdate()
	
-- )

-- CREATE TABLE [dbo].[Fina_cajaingr](
-- 	[c_ingr] [varchar](5) DEFAULT '',
-- 	[c_ano] [char](4) DEFAULT '',
-- 	[c_mes] [char](2) DEFAULT '',
-- 	[c_sucu] [char](3) DEFAULT '',
-- 	[f_ingr] [varchar](10) DEFAULT '',
-- 	[n_docu] [varchar](11) DEFAULT '',
-- 	[c_comp] [varchar](2) DEFAULT '',
-- 	[n_seri] [varchar](3) DEFAULT '',
-- 	[n_comp] [varchar](10) DEFAULT '',
-- 	[l_deta] [varchar](250) DEFAULT '',
-- 	[s_tota] [numeric](20,7) DEFAULT 0,		
-- 	[id_caja] [varchar](35) DEFAULT '',
-- 	[c_turn] [int] DEFAULT 0,
-- 	[k_ingr] [int] DEFAULT 0,--tipo de ingreso 0-ingreso equifax 1- ingreso capital 9- otros tipos de  ingresos
-- 	[c_usua] [varchar](25) DEFAULT '',
-- 	[f_digi] [datetime]  DEFAULT getdate()
-- )

CREATE TABLE [dbo].[Fina_Ingresos](
	[c_ano]		[char](4) DEFAULT '',
	[c_mes]		[char](2) DEFAULT '',
	[c_sucu]	[char](3) DEFAULT '',
	[c_comp]	[char](2) DEFAULT '',
	[n_seri]	[char](4) DEFAULT '',
	[n_comp]	[char](10) DEFAULT '',
	[f_comp]	[varchar](10) DEFAULT '',
	[f_pago]	[varchar](10) DEFAULT '',
	[f_venc]	[varchar](10) DEFAULT '',
	[f_xven]	[varchar](10) DEFAULT '',--proximo vencimiento	
	[n_docu]	[varchar](11) DEFAULT '',
	[n_cuot]	[int] DEFAULT 0,--total de cuotas del credito
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

CREATE TABLE [dbo].[Fina_IngresosDetalle](
	[id_ingr]	[varchar](35) DEFAULT '',--se crea con c_ano-c_mes-c_sucu-id_ingre tabla fin_ingresos
	[n_item]	[char](3) DEFAULT '',--numero del item
	[c_prod]	[varchar](7) DEFAULT '',--pago de cuotas 001001000001  equifax 001001000002	
	[n_cuot]	[int] DEFAULT 0,
	[n_dia]		[int] DEFAULT 0,
	[s_impo]	[numeric](20,7) DEFAULT 0,
	[s_igv]		[numeric](20,7) DEFAULT 0,
	[s_inte]	[numeric](20,7) DEFAULT 0,
	[s_mora]	[numeric](20,7) DEFAULT 0,
	[s_desc]	[numeric](20,7) DEFAULT 0,
	[s_tota]	[numeric](20,7) DEFAULT 0
)

CREATE TABLE [dbo].[Fina_Egresos](
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

CREATE TABLE [dbo].[Fina_EgresosDetalle](
	[id_egre]	[varchar](35) DEFAULT '',--se crea con c_ano-c_mes-c_sucu-id_egre tabla fin_egeresos
	[n_item]	[char](3) DEFAULT '',
	[c_prod]	[varchar](7) DEFAULT '',--pago de cuotas 001001000001  equifax 001001000002	
	[s_impo]	[numeric](20,7) DEFAULT 0,
	[s_igv]		[numeric](20,7) DEFAULT 0,
	[s_inte]	[numeric](20,7) DEFAULT 0,	
	[s_desc]	[numeric](20,7) DEFAULT 0,
	[s_tota]	[numeric](20,7) DEFAULT 0
)
CREATE TABLE [dbo].[Fina_Movimientos](
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

CREATE TABLE [dbo].[Fina_Moras](
	[c_mora] [varchar](2) DEFAULT '',
	[c_sucu] [varchar](3) DEFAULT '',	
	[s_moni] [numeric](20,7) DEFAULT 0,--el monto incial 
	[s_monf] [numeric](20,7) DEFAULT 0,--monto final asta donde se cobrara la mora
	[s_pmor] [numeric](20,7) DEFAULT 0,--porcentaje de mora
	[s_imor] [numeric](20,7) DEFAULT 0--importe de mora
)

-- CREATE TABLE [dbo].[Fina_saldo](
-- 	[c_sald] [char](2) DEFAULT '',
-- 	[c_sucu] [char](3) DEFAULT '',
-- 	[id_caja][varchar](35) DEFAULT '',
-- 	[c_turn][int] DEFAULT 0,	
-- 	[s_ingr] [numeric](20,7) DEFAULT 0,--monto de los ingresoso del dia
-- 	[s_egre] [numeric](20,7) DEFAULT 0,--monto de egresos programados
-- 	[s_sald] [numeric](20,7) DEFAULT 0,--saldo de caja
-- 	[s_dif] [numeric](20,7) DEFAULT 0,--importe de mora
-- 	[c_usua] [varchar](25) DEFAULT '',
-- 	[f_digi] [datetime] DEFAULT getdate()
-- )

CREATE TABLE [dbo].[Fina_CreditoMessages](
	[id_mesa] [varchar](35) DEFAULT '',--id del mesage 
	[id_cred] [varchar](35) DEFAULT '',
	[id_carg] [varchar](35) DEFAULT '',
	[l_suje] [varchar](100) DEFAULT '',--nombre de la persona que esta observando el credito
	[c_sucu] [char](3) DEFAULT '',
	[f_mesa] [varchar](10) DEFAULT '',--fecha del mensage
	[h_mesa] [time](7) DEFAULT '',-- hora del mensage
	[l_mesa] [varchar](500) DEFAULT '',
	[c_usua] [varchar](25) DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
	
)

CREATE TABLE [dbo].[Fina_Sisprop]
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

