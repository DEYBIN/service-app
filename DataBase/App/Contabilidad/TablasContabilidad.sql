CREATE TABLE [dbo].[Cont_operacion](
	[c_ano] [char](4)  DEFAULT '',
	[c_oper] [char](2)  DEFAULT '',
	[l_oper] [varchar](50)  DEFAULT '',
	[k_oper] [int] DEFAULT 0,
	[k_stad] [int] DEFAULT 0,
	[c_usua] [varchar](25)  DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Cont_plancontb](
	[c_ano] [char](4)  DEFAULT '',
	[c_cuen] [varchar](12)  DEFAULT '',
	[l_cuen] [varchar](50)  DEFAULT '',
	[k_plan] [int] DEFAULT 0,--tipo de plan contable --> empresarial o antiguo sepone N cuando es 0
	[k_cuen] [int] DEFAULT 0,--tipo de cuenta
	[k_anac] [int] DEFAULT 0,--tipo de analisis de la cuenta 
	[k_nive] [int] DEFAULT 0,--tipo de nivel de la cuenta
	[k_cost] [int] DEFAULT 0,--no difinido
	[k_ppto] [int] DEFAULT 0,--no difinido
	[k_actu] [int] DEFAULT 0,--no se sabe para que sirve pero es importante se pone 'S' cuando es 0
	[k_anal] [int] DEFAULT 0,--no difinido
	[k_mone] [int] DEFAULT 0,--tipo de moneda utilizada
	[n_cuen] [varchar](25)  DEFAULT '',
	[c_banc] [varchar](3)  DEFAULT '',	
	[c_item] [varchar](7)  DEFAULT '',
	[c_item1] [varchar](7)  DEFAULT '',
	[c_usua] [varchar](25)  DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)


CREATE TABLE [dbo].[Cont_destino](
	[c_ano] [char](4)  DEFAULT '',	
	[c_cuen] [varchar](12)  DEFAULT '',
	[c_cue1] [varchar](12)  DEFAULT '',
	[c_cue2] [varchar](12)  DEFAULT '',
	[s_porc] [numeric](6, 2)  DEFAULT 0,
	[k_plan] [int] DEFAULT 0,--tipo de plan contable --> empresarial o antiguo sepone N cuando es 0
	[k_actu] [int] DEFAULT 0,--no se sabe para que sirve pero es importante se pone 'S' cuando es 0
	[c_usua] [varchar](25)  DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)


CREATE TABLE [dbo].[Cont_voucher](
	[c_ano] [char](4)  DEFAULT '',
	[c_sucu] [char](3)  DEFAULT '',
	[c_mes] [char](2)  DEFAULT '',
	[c_oper] [char](2)  DEFAULT '',
	[n_sero] [char](2)  DEFAULT '',
	[n_oper] [char](7)  DEFAULT '',
	[f_oper] [date]  DEFAULT '0001-01-01',
	[c_comp] [char](2)  DEFAULT '',
	[n_seri] [char](4)  DEFAULT '',
	[n_comp] [char](15)  DEFAULT '',
	[f_comp] [date]  DEFAULT '0001-01-01',
	[f_venc] [date]  DEFAULT '0001-01-01',
	[f_pago] [date]  DEFAULT '0001-01-01',
	[n_docu] [varchar](11)  DEFAULT '',
	[c_cuen] [varchar](12)  DEFAULT '',
	[c_cuen1][varchar](12)  DEFAULT '',
	[s_impo] [numeric](20, 7)  DEFAULT 0,
	[s_exon] [numeric](20, 7)  DEFAULT 0,
	[s_inaf] [numeric](20, 7)  DEFAULT 0,
	[s_bimp] [numeric](20, 7) DEFAULT 0,
	[p_igv] [numeric](7, 3)  DEFAULT 0,
	[s_igv] [numeric](20, 7)  DEFAULT 0,
	[s_otro] [numeric](20, 7)  DEFAULT 0,
	[s_tota] [numeric](15, 2)  DEFAULT 0,
	[k_mone] [int] DEFAULT 0,
	[s_tipc] [numeric](11, 4)  DEFAULT 0,
	[n_colu] [int] DEFAULT 1,-- n_colu para identifica a que columna del registro de compras va el importe
	[l_glos] [varchar](250)  DEFAULT '',
	[k_tipp] [numeric](1, 0)  DEFAULT 0,
	[s_perc] [numeric](15, 2)  DEFAULT 0,
	[c_compp] [char](2)  DEFAULT '',
	[n_serip] [varchar](4)  DEFAULT '',
	[n_compp] [varchar](10)  DEFAULT '',
	[f_perc] [date]  DEFAULT '0001-01-01',
	[s_reten] [numeric](15, 2)  DEFAULT 0,
	[s_poret] [numeric](11, 2)  DEFAULT 0,
	[s_detr] [numeric](11, 2)  DEFAULT 0,
	[n_detr] [varchar](25)  DEFAULT '',
	[f_detr] [varchar](10)  DEFAULT '',
	[c_comp1] [char](2)  DEFAULT '',
	[n_seri1] [char](4)  DEFAULT '',
	[n_comp1] [varchar](25)  DEFAULT '',
	[f_comp1] [date]  DEFAULT '0001-01-01',
	[s_comp1] [numeric](11, 2) DEFAULT 0,
	[k_anex] [int] DEFAULT 0,
	[c_medp] [char](3)  DEFAULT '',
	[n_medp] [varchar](10)  DEFAULT '',
	[k_regi] [int] DEFAULT 0,
	[k_stad] [int] DEFAULT 0,
	[s_pord] [numeric](11, 2)  DEFAULT 0,
	[k_expo] [int] DEFAULT 0,
	[id_vouch] [varchar](32)  DEFAULT '',
	[c_usua] [varchar](25)  DEFAULT '',
	[f_digi] [datetime] DEFAULT getdate()
	
) 

CREATE TABLE [dbo].[Cont_vouchdet](
	[id_vouch] [varchar](32)  DEFAULT '',
	[n_item] [char](3)  DEFAULT '',
	[c_cuen] [varchar](12)  DEFAULT '',
	[s_debe] [numeric](20, 7)  DEFAULT 0,
	[s_habe] [numeric](20, 7)  DEFAULT 0,
	[k_mone] [int] DEFAULT 0,
	[s_tipc] [numeric](11, 4)  DEFAULT 0,
	[l_glos] [varchar](500)  DEFAULT '',
	[n_docu] [char](11)  DEFAULT '',
	[c_comp] [char](2)  DEFAULT '',
	[n_seri] [char](4)  DEFAULT '',
	[n_comp] [char](10)  DEFAULT '',
	[f_comp] [date]  DEFAULT '0001-01-01',
	[f_venc] [date]  DEFAULT '0001-01-01',
	[k_tipp] [int] DEFAULT 0,
	[k_tipa] [int] DEFAULT 0,
	[k_medp] [char](3)  DEFAULT '',
	[n_medp] [varchar](10)  DEFAULT '',
	[c_usua] [varchar](25)  DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
	
) 

CREATE TABLE [dbo].[Cont_vouchdest](
	[id_vouch] [varchar](32)  DEFAULT '',
	[n_item] [char](3)  DEFAULT '',
	[n_itemv] [char](3)  DEFAULT '',
	[c_cuen] [varchar](12)  DEFAULT '',
	[s_debe] [numeric](20, 7)  DEFAULT 0,
	[s_habe] [numeric](20, 7)  DEFAULT 0,
	[k_mone] [int] DEFAULT 0,
	[s_tipc] [numeric](11, 4)  DEFAULT 0,
	[l_glos] [varchar](250)  DEFAULT 0,
	[c_usua] [varchar](25)  DEFAULT '',
	[f_digi] [datetime]  DEFAULT getdate()
)

CREATE TABLE [dbo].[Cont_vouchcorr](
	[c_ano]  [char](4)  DEFAULT '',
	[c_sucu] [char](3)  DEFAULT '',
	[c_mes]	 [char](2)  DEFAULT '',
	[c_oper] [char](2)  DEFAULT '',
	[n_sero] [char](2)  DEFAULT '',
	[n_oper] [char](7)  DEFAULT ''
)

CREATE TABLE [dbo].[Cont_vouchDetr](
	[id_vouch] [varchar](32)  DEFAULT '',
	[s_detr] [numeric](15, 2)  DEFAULT 0,
	[q_detr] [numeric](1, 0)  DEFAULT 0,
	[n_detr] [varchar](25)  DEFAULT '',
	[f_detr] [date]  DEFAULT '0001-01-01'
)


CREATE TABLE [dbo].[Cont_vouchAnex](
	[id_vouch] [varchar](32)  DEFAULT '',
	[c_comp] [char](2)  DEFAULT '',
	[n_seri] [char](4)  DEFAULT '',
	[n_comp] [char](10)  DEFAULT '',
	[f_comp] [date]  DEFAULT '0001-01-01',
	[s_comp] [numeric](15, 2)  DEFAULT 0
)

ALTER TABLE Requ_Productos ADD 	
	[c_cuei] [varchar](6) DEFAULT '',--cuenta contable de ingresos
	[c_cuee] [varchar](6) DEFAULT ''--cuenta contable de egresos


CREATE TABLE [dbo].[Cont_Sisprop](
	[_01_ctaitf] [varchar](10) DEFAULT '',
	[_01_ctaigv] [char](12) DEFAULT '',
	[_01_ctapercep] [varchar](12) DEFAULT '',
	[_01_ctareten]  [varchar](12) DEFAULT '',
	[_01_ctadetrac] [varchar](12) DEFAULT '',
	[_01_ctadetrav] [varchar](12) DEFAULT '',
	[_01_ctarenta4] [varchar](12) DEFAULT '',
	[_01_ctaintexp] [varchar](12) DEFAULT '',
	[_01_ctaintexc] [varchar](12) DEFAULT '',
	[_01_ctadescxp] [varchar](12) DEFAULT '',
	[_01_ctadescxc] [varchar](12) DEFAULT '',
	[_01_cfluefeci] [varchar](12) DEFAULT '',
	[_01_cfluefece] [varchar](12) DEFAULT '',
	[_01_kreten] [numeric](1, 0) DEFAULT 0,
	[_01_kdetr] [numeric](1, 0) DEFAULT 0,
	[_01_kperc] [numeric](1, 0) DEFAULT 0,
	[_01_sreten] [numeric](5, 2) DEFAULT 0,
	[_01_sdetr] [numeric](5, 2) DEFAULT 0,
	[_01_s_perc] [numeric](5, 2) DEFAULT 0,	
	[_01_sitfporc] [numeric](6, 2) DEFAULT 0
	
)

