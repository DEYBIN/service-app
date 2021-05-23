--informacion que guarda el campo K_modu:
--0 significa todos los modulos
--1 signidfica modulo de contabilidad
--2 significa modulo stock
--3 significa modulo ctacte
--4 ginifica modulo planillas
--5 sifnifica modulo financiera
--6 significa modulo punto de ventas
--7 significa modulo activos fijos
--8 significa modulo costos
/*===========TABLA CARGOS=========
=0-->ADMINISTRADOR
=1-->SUPERVISOR
=2-->VENDEDOR
=3-->ACESOR DE CREDITOS
=4-->CAJERO
=5-->CONTADOR
=6-->GERENTE
*/
CREATE TABLE [dbo].[Clientes](
	[c_clie] [char](3) DEFAULT '',
	[c_docu] [char](2) DEFAULT '',
	[n_docu] [varchar](11) DEFAULT '',
	[l_clie] [varchar](100) DEFAULT '',
	[l_dire] [varchar](500) DEFAULT '',
	[l_dire1] [varchar](500) DEFAULT '',
	[k_modu] [varchar](20) DEFAULT '',
	[k_mlte] [varchar](1) DEFAULT '',
	[l_giro] [char](200) DEFAULT '',
	[n_celu] [varchar](30) DEFAULT '',
	[l_obse] [varchar](100) DEFAULT '',
	[l_emai] [varchar](100) DEFAULT '',
	[f_insc] [varchar](10) DEFAULT '',
	[f_regi] [varchar](10) DEFAULT '',
	[f_venc] [varchar](10) DEFAULT '',
	[l_inst] [varchar](500) DEFAULT '',
	[n_pred] [int] DEFAULT 0,
	[l_cons] [varchar](50) DEFAULT '',
	[c_session] [varchar](150) DEFAULT '',
	[l_password] [varchar](200) DEFAULT '',
	[users_sql] [varchar](150) DEFAULT '',
	[passw_sql] [varchar](200) DEFAULT '',
	[c_empr] [varchar](3) DEFAULT ''
)


CREATE TABLE [dbo].[detorg](
	[c_empr] [char](3) NULL,
	[k_db] [numeric](1, 0) NULL,
	[l_ruta] [varchar](100) NULL,
	[c_carp] [varchar](50) NULL,
	[c_orga] [varchar](50) NULL,
	[l_db] [varchar](50) NULL,
	[c_a�o] [char](4) NULL
)

CREATE TABLE [dbo].[organizacion](
	[c_empr] [char](3) NULL,
	[c_orga] [varchar](25) NULL,
	[l_empr] [varchar](100) NULL,
	[l_repr] [varchar](100) NULL,
	[l_dire] [varchar](100) NULL,
	[n_ruc] [char](11) NULL,
	[n_tele] [varchar](30) NULL,
	[l_ciud] [varchar](100) NULL,
	[l_lo] [image] NULL
) 


CREATE TABLE [dbo].[Seguridad](
	[c_empr] [char](3) NULL,
	[c_usua] [char](3) NULL,
	[Usuario] [varchar](25) NULL,
	[l_nombr] [varchar](100) NULL,
	[l_apl1] [varchar](50) NULL,
	[l_apl2] [varchar](50) NULL,
	[l_dire] [varchar](300) NULL,
	[l_cel1] [varchar](11) NULL,
	[l_cel2] [varchar](11) NULL,
	[l_emai] [varchar](200) NULL,
	[l_Carg] [varchar](100) NULL,
	[n_sero] [char](2) NULL,
	[c_vend] [char](2) NULL,
	[c_sucu] [char](3) NULL,
	[c_alma] [char](3) NULL,
	[n_caja] [char](4) NULL,
	[l_pass] [char](15) NULL
)

-- se crea de la siguiente manera la c_perm
/*
nuemro del modulo ejm 5,1,2
la primera letra del modulo F;C,S,A
numero de posision del menu 1,2,3
tres letras de la descripcion del menu
numero de la posision del sub menu
tres letras del nombre del sub menu
emplpo cambio de sucursal 
0AL1INI3SLC1SUC
*/
CREATE TABLE [dbo].[permisos](
	[c_perm] [varchar](15) DEFAULT '',
	[l_deta] [varchar](500) DEFAULT '',
	[l_menu] [varchar](800) DEFAULT '',
	[k_cont] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo contabilidad
	[k_ctae] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo cuenta corriente
	[k_stck] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo stock
	[k_plni] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo planilla
	[k_fina] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo financiera
	[k_pntv] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo punto de venta
	[k_actf] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo activo fijos
	[k_cost] [int] DEFAULT 0,-- 0- opcion desabiltada 1- opcion habilitada en modulo costos
	[k_nive] [int] DEFAULT 0 -- 1- opciones en nivel 1 2- opciones en nivel 2 3- opciones en nivel 3 ....
	
)

/* tabla para mostrar infromacion de las estaciones del a�o*/
CREATE TABLE [dbo].[sis_estaciones](
	[c_stad] [char](2) DEFAULT '',
	[l_stad] [varchar](20) DEFAULT '',
	[l_deta] [varchar](800) DEFAULT '',
	[f_inic] [varchar](5) DEFAULT '',
	[f_fina] [varchar](5) DEFAULT '',
	[l_abr1] [varchar](3) DEFAULT '',
	[l_abr2] [varchar](3) DEFAULT '',
	[l_dia1] [varchar](3) DEFAULT '',
	[l_dia2] [varchar](3) DEFAULT ''
)