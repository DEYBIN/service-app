



/*TABLA permisos*/
	--Configuracion
	-- Menu Inicio
		-- Empresas
			-- menuItemOrganizacionUpdate
			INSERT [dbo].[permisos]
			([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
			('0A1INIL1EMP1MDE', 'Inicio->Empresa->Modificar Empresa', '<li><p><span class="icon-calendar"></span>Modificar Empresa</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemOrganizacionView
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0A1INIL1EMP2CTE', 'Inicio->Empresa->Informació', '<li><p class="refprincipal" id="menuItemOrganizacionView"><span class="icon-office"></span>Información</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
		--..
		-- Periodo
			-- menuItemCambioPeriodo
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0A1INIL2PRD1CBP', 'Inicio->Periodo->Cambio de Periodo', '<li><p id="menuItemCambioPeriodo"><span class="icon-calendar"></span>Cambio de Periodo</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
		-- ..
		-- Seleccionar Sucursal-Alamacen
			-- menuItemCambioSucursal
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0A1INIL3SLC1SUC', 'Inicio->Seleccionar->Sucursal y Almacen', '<li><p id="menuItemCambioSucursal"><span class="icon-calendar "></span>Sucursal y Almacen</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
		-- ..
	-- ..
	-- Administrador de Datos
		-- Generales
			-- menuItemClientesList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR1CLT', 'Administrador de Datos->Generales->Clientes', '<li><p id="menuItemClientesList" ><span class="icon-window"></span>Clientes</p></li>', 1, 1, 1, 1, 0, 1, 1, 1, 1)
			-- menuItemProveedoresList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR2PRV', 'Administrador de Datos->Generales->Proveedores', '<li><p id="menuItemProveedoresList"><span class="icon-window"></span>Proveedores</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemComprobantesList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR3TPC', 'Administrador de Datos->Generales->Tipo de Comprobantes', '<li><p id="menuItemComprobantesList"><span class="icon-window"></span>Tipo de Comprobantes</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemDocumentosList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR4TPD', 'Administrador de Datos->Generales->Tipo de Documentos', '<li><p id="menuItemDocumentosList"><span class="icon-window"></span>Tipo de Documentos</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemTipoPagoList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR5TPP', 'Administrador de Datos->Generales->Tipo de Pago', ' <li><p id="menuItemTipoPagoList"><span class="icon-window"></span>Tipo de Pago</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR6TPC', 'Administrador de Datos->Generales->Tipo de Cambio', '<li><p id="itemdatoregtipcamb"><span class="icon-window"></span>Tipo de Cambio</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemMedioPagoList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR7MDP', 'Administrador de Datos->Generales->Medios de Pago', '<li><p id="menuItemMedioPagoList"><span class="icon-window"></span>Medios de Pago</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)		
			-- menuItemProfesiones
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR9PRF', 'Administrador de Datos->Generales->Profesiones', '<li><p id="menuItemProfesiones"><span class="icon-window"></span>Profesiones</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)

			-- menuItemOcupaciones
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR10OP', 'Administrador de Datos->Generales->Ocupaciones', '<li><p id="menuItemOcupaciones"><span class="icon-window"></span>Ocupaciones</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)

			-- menuItemGradoInstruccion
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR11GI', 'Administrador de Datos->Generales->Grado de Instruccion', '<li><p id="menuItemGradoInstruccion"><span class="icon-window"></span>Grado de Instruccion</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)

			-- menuItemUbigeo
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR12UB', 'Administrador de Datos->Generales->Ubigeos', '<li><p id="menuItemUbigeo"><span class="icon-window"></span>Ubigeos</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemCorrelativoList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR13CP', 'Administrador de Datos->Generales->Correlativo de Comrpobantes', '<li><p id="menuItemCorrelativoList"><span class="icon-window"></span>Correlativo de Comrpobantes</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemBanksList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR14BK', 'Administrador de Datos->Generales->Bancos', '<li><p id="menuItemBanksList"><span class="icon-window"></span>Bancos</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemMonedasList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR14MD', 'Administrador de Datos->Generales->Monedas', '<li><p id="menuItemMonedasList"><span class="icon-window"></span>Monedas</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
			-- menuItemErrorsList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD0GNR99ER', 'Administrador de Datos->Generales->Errorres', '<li><p id="menuItemErrorsList"><span class="icon-window"></span>Errorres</p></li>', 1, 1, 1, 1, 1, 1, 1, 1, 1)
		-- ..
		-- Financiera
			-- Clientes
				-- menuItemFinaClientesList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN1CLT', 'Administrador de Datos->Financiera->Clientes', '<li class="menu-nivel3"><p id="menuItemFinaClientesList"><span class="icon-group"></span>Clientes</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- Registro de Cajeros
				-- menuItemFinaCajerosList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN2CJR', 'Administrador de Datos->Financiera->Registro de Cajeros', '<li class="menu-nivel3"><p id="menuItemFinaCajerosList"><span class="fas fa-user-lock"></span>Registro de Cajeros</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- Registro de Analistas
				-- menuItemFinaAnalistasList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN3CLT', 'Administrador de Datos->Financiera->Asesor de Creditos', '<li class="menu-nivel3"><p id="menuItemFinaAnalistasList"><span class="fas fa-user-tie"></span>Asesor de Creditos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
				-- menuItemFinaGestCrobranzaList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN3GDC', 'Administrador de Datos->Financiera->Gestor de Cobranza', '<li class="menu-nivel3"><p id="menuItemFinaGestCrobranzaList"><span class="fas fa-user-secret"></span>Gestor de Cobranza</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
				-- AsignaAnalista
					-- id_btn_asignaAnalistaClientesList
					INSERT [dbo].[permisos]
						([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
					VALUES
						('021FIN1CLT1ASIC', 'Administrador de Datos->Financiera->Clientes->Asignación Analistas', '<button id="id_btn_asignaAnalistaClientesList" class="button orange" type="button"><span><i class="icon-user-secret"></i><a>Asignar Analista</a></span></button>', 0, 0, 0, 0, 1, 0, 0, 0, 2)
		-- EERR
				-- menuItemFinaEERRList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN4ERR', 'Administrador de Datos->Financiera->EERR', '<li class="menu-nivel3"><p id="menuItemFinaEERRList"><span class="icon-calculator"></span>EERR</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- Balance Financiero
				-- menuItemFinaBBGGList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN5BGR', 'Administrador de Datos->Financiera->Balance Financiero', '<li class="menu-nivel3"><p id="menuItemFinaBBGGList"><span class="icon-calculator"></span>Balance Financiero</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- Productos Financieros
				-- menuItemFinaProductosList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('0AL2ADD1FIN6ADP', 'Administrador de Datos->Financiera->Productos Financieros', '<li class="menu-nivel3"><p id="menuItemFinaProductosList"><span class="icon-shipping"></span>Productos Financieros</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- Conceptos
			-- menuItemFinaConceptosList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD1FIN7CPT', 'Administrador de Datos->Financiera->Conceptos', '<li class="menu-nivel3"><p id="menuItemFinaConceptosList"><span class="fas fa-list"></span>Conceptos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- Conceptos
			-- menuItemFinaMoraConfigList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('0AL2ADD1FIN8MCG', 'Administrador de Datos->Financiera->Mora Config', '<li class="menu-nivel3"><p id="menuItemFinaMoraConfigList"><span class="fas fa-keyboard"></span>Mora Config</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)

		-- ..
	-- ..



	-- Financiera
		--Configuracion

		-- Solicitud
			-- menuItemFinasolicitudesList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN1SLD1SLC', 'Financiera->Solicitud->Solicitud de credito', '<li><p id="menuItemFinasolicitudesList"><span class="icon-clipboard"></span>Solicitud de Credito</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- Aprobacion de Credito
				-- id_tab_aprovacionSolcitudList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('551SLD1SLC1APCD', 'Financiera->Solicitud->Solicitud de credito->Aprobacion de Credito', '<li class="tab" id="id_tab_aprovacionSolcitudList"><i class="far fa-thumbs-up"></i>APROBACIONES</li>', 0, 0, 0, 0, 1, 0, 0, 0, 2)
			-- Programar Credito
				-- id_tab_programarSolcitudList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('551SLD1SLC2PGCD', 'Financiera->Solicitud->Solicitud de credito->Programar Credito', '<li class="tab" id="id_tab_programarSolcitudList"><i class="fas fa-laptop-code"></i>PROGRAMAR DESC</li>', 0, 0, 0, 0, 1, 0, 0, 0, 2)
			-- Imprimir documentos
				-- id_tab_programarSolcitudList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('551SLD1SLC3PTDS', 'Financiera->Solicitud->Solicitud de credito->Imprimir Documentacion Solicitud', '<li class="tab" id="id_tab_programarSolcitudList"><i class="fas fa-print"></i>IMPRIMIR DOCS</li>', 0, 0, 0, 0, 1, 0, 0, 0, 2)
			-- Anular Solicitudes
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN1SLD2ASL', 'Financiera->Solicitud->Anular Solicitud de Credito', '<li><p id="menuItemFinaSolicitudesListAnular"><span class="icon-minus-alt"></span>Anular Solicitud de Credito</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)

		-- Creditos
			-- Lista de Creditos
				--menuItemFinaCreditosList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN6CDT1LCT', 'Financiera->Creditos->Lista de Creditos', '<li><p id="menuItemFinaCreditosList"><span class="icon-stack"></span>Lista de Créditos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
				-- menuItemFinaCreditosObservaciones
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN6CDT2OBC', 'Financiera->Creditos->Observaciones de Crédito', '<li><p id="menuItemFinaCreditosObservaciones"><span class="icon-binoculars"></span>Observaciones de Crédito</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- ..
		-- Caja
			-- Apertura de Caja
				-- menuItemFinaAperturaCaja
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN2CJA1ATC', 'Financiera->Caja->Apertura de Caja', '<li><p id="menuItemFinaAperturaCaja"><span class="icon-drawer"></span>Apertura de Caja</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- Cierre de Caja
				-- menuItemFinaCloseCaja
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN2CJA2CEC', 'Financiera->Caja->Cierre de Caja', '<li><p id="menuItemFinaCloseCaja"><span class="icon-safe"></span>Cierre de Caja</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- Desembolso de Credito
				-- menuItemFinaDesembolsoCredit
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN2CJA3DSC', 'Financiera->Caja->Desembolso de Credito', '<li><p id="menuItemFinaDesembolsoCredit"><span class="icon-dollar2"></span>Desembolso de Credito</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- Amortizacion de Credito
				-- menuItemFinaAmotizacionCredit
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN2CJA4PGC', 'Financiera->Caja->Amortización de Créditos', '<li><p id="menuItemFinaAmotizacionCredit"><span class="icon-dollar"></span>Amortización de Créditos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- Egresos y/o Gastos
				-- menuItemFinaCajaEgresosList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN2CJA5RGG', 'Financiera->Caja->Egresos y/o Gastos', '<li><p id="menuItemFinaCajaEgresosList"><span class="icon-banknote"></span>Egresos y/o Gastos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- Ingresos Extraordinarios
				-- menuItemFinaIngresosExtraList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN2CJA6RIE', 'Financiera->Caja->Ingresos Extraordinarios', '<li><p id="menuItemFinaIngresosExtraList"><span class="icon-credit-card"></span>Ingresos Extraordinarios</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)

			-- Movimientos Dinero
				-- menuItemFinaMovimientosCajaList
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN2CJA7MOD', 'Financiera->Caja->Movimientos Dinero', '<li><p id="menuItemFinaMovimientosCajaList"><span class="fas fa-exchange-alt"></span>Movimientos Dinero</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- ..
		-- Administracion
			-- menuItemFinaAdministracionListIngresos
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN5ADM1CPI', 'Financiera->administracion->Lista Ingresos', '<li><p id="menuItemFinaAdministracionListIngresos"><span class="fas fa-hand-holding-usd"></span>Lista Ingresos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionListEgresos
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN5ADM2CPE', 'Financiera->administracion->Lista Egresos', '<li><p id="menuItemFinaAdministracionListEgresos"><span class="fab fa-cc-visa"></span>Lista Egresos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionCuadre
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN5ADM3CJA', 'Financiera->administracion->Cajero Cuadre Mes', '<li><p id="menuItemFinaAdministracionCuadre"><span class="icon-justice"></span>Cajero Cuadre Mes</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionSolutionError
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN5ADM4SER', 'Financiera->administracion->Solucion de Errores', '<li><p id="menuItemFinaAdministracionSolutionError"><span class="fas fa-exclamation-triangle"></span>Solucion de Errores</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionCreditsMove
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN5ADM5MCD', 'Financiera->administracion->Movimientos de Credito ', '<li><p id="menuItemFinaAdministracionCreditsMove"><span class="fab fa-stack-overflow"></span>Movimientos de Credito </p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionCreditsList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN5ADM7CDT', 'Financiera->administracion->Creditos ', '<li><p id="menuItemFinaAdministracionCreditsList"><span class="fas fa-atlas"></span>Creditos </p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionAsignacionList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN5ADM8AGC', 'Financiera->Administracion->Asignacion', '<li><p id="menuItemFinaAdministracionAsignacionList"><span class="fas fa-sort-numeric-up-alt"></span>Asignacion</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaAdministracionMetasList
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN5ADM9MTS', 'Financiera->Administracion->Metas', '<li><p id="menuItemFinaAdministracionMetasList"><span class="fas fa-bullseye"></span>Metas</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- ..
		-- Evaluacion de Cliente
			-- menuItemFinaEvalucionClienteskkkkkkk
			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN3EVC1RGA', 'Financiera->Evaluacion de Clientes->Activos Fijos', '<li><p id="itemfinaadmclieact"><span class="icon-stack"></span>Activos Fijos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaEvalucionClientes
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
				('5FN5FIN3EVC2RGR', 'Financiera->Evaluacion de Clientes->Evaluacion', '<li><p id="menuItemFinaEvalucionClientes"><span class="icon-profile"></span>Evaluacion</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- ..
		-- Reportes
			-- menuItemFinaReportsLineCredits
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN4RPT1LCA', 'Financiera->Reportes->Linea de Creditos', '<li><p id="menuItemFinaReportsLineCredits" title="Linea de Creditos"><span class="icon-file-text2"></span>Linea de Creditos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)


			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN4RPT5PGP', 'Financiera->Reportes->Pagos Programados', '<li><p id="itemfinarptpagpog" title="Pagos Programados"><span class="icon-file-text2"></span>Pagos Programados</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)

			INSERT [dbo].[permisos]
				([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
			VALUES
				('5FN5FIN4RPT7DVT', 'Financiera->Reportes->Reporte Central de Riesgos', '<li><p id="menuItemFinaReportsInfoExt" title="Reporte Central de Riesgos"><span class="fas fa-file-excel"></span>Reporte Central de Riesgos</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaReportsCreditsOtorgados
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN4RPT8CTO', 'Financiera->Reportes->Creditos Otorgados', '<li><p id="menuItemFinaReportsCreditsOtorgados" title="Creditos Otorgados"><span class="icon-file-text2"></span>Creditos Otorgados</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
			-- menuItemFinaReportsCreditsMora
				INSERT [dbo].[permisos]
					([c_perm], [l_deta], [l_menu], [k_cont], [k_ctae], [k_stck], [k_plni], [k_fina], [k_pntv], [k_actf], [k_cost], [k_nive])
				VALUES
					('5FN5FIN4RPT9CTM', 'Financiera->Reportes->Creditos en Mora', '<li><p id="menuItemFinaReportsCreditsMora" title="Creditos en Mora"><span class="icon-file-text2"></span>Creditos en Mora</p></li>', 0, 0, 0, 0, 1, 0, 0, 0, 1)
		-- ..
/*..*/
