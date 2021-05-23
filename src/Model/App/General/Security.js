
const { Sequelize, DataTypes } = require('sequelize')
const bcrypt= require('bcryptjs')
const {cnnLocal} =require('../../../database')
const sequelize = new cnnLocal()
const regEX= require('../../../Library/regex')



const Security = sequelize.define('Requ_Seguridad', {

	id: {
		type: DataTypes.UUID,
		defaultValue: DataTypes.UUIDV4,
		primaryKey: true
	},
	user:{
		type: DataTypes.STRING(25),
		allowNull: false,
		validate:{
			is:{
				args: regEX.letras(4,25),
				msg:"Nombre de usuario no cumple con las características"
			},
			get() {
				const rawValue = this.getDataValue();				
				return rawValue ? rawValue.toUpperCase() : null;
			}
		}

	},
	password:{
		type: DataTypes.STRING(200),
		require: true
	},
	n_docu:{
		type: DataTypes.STRING(8),
		allowNull: false,
		validate:{
			is:{
				args: regEX.int(8),
				msg:"Numero de documento no cumple con las características"
			}
		}
	},
	l_name:{
		type: DataTypes.STRING(25),
		allowNull: false,
		validate:{
			is:{
				args: regEX.name(3,25,true),
				msg:"Nombre no cumple con las características"
			},
			get() {
				const rawValue = this.getDataValue();				
				return rawValue ? rawValue.toUpperCase() : null;
			}
		}
	},
	l_lname1:{
		type: DataTypes.STRING(25),
		allowNull: false,
		validate:{
			is:{
				args: regEX.name(3,25,true),
				msg:"Apellido paterno no cumple con las características"
			},
			get() {
				const rawValue = this.getDataValue();				
				return rawValue ? rawValue.toUpperCase() : null;
			}
		}
	},
	l_lname2:{
		type: DataTypes.STRING(25),
		allowNull: false,
		validate:{
			is:{
				args: regEX.name(3,25,true),
				msg:"Apellido materno no cumple con las características"
			},
			get() {
				const rawValue = this.getDataValue();
				return rawValue ? rawValue.toUpperCase() : null;
			}
		}
	},
	k_carg:{
		type: DataTypes.INTEGER,
		allowNull: false,
		defaultValue: 0,//--0- administrador  1-supervisor 3- vendedor 4- cajero	 5- asesor de créditos
		validate:{
			is:{
				args: regEX.int(),
				msg:"Tipo de cargo no cumple con las características"
			}
		}
	},
	l_dire:{
		type: DataTypes.STRING(200),
		allowNull: false,
		validate:{
			is:{
				args: regEX.address(7,200),
				msg:"Dirección no cumple con las características"
			},
			get() {
				const rawValue = this.getDataValue();				
				return rawValue ? rawValue.toUpperCase() : null;
			}
		}
	},
	l_celu:{
		type: DataTypes.STRING(25),
		allowNull: false
	},
	l_emai:{
		type: DataTypes.STRING(150),
		allowNull: true,
		validate:{
			is:{
				args: regEX.email(),
				msg:"Email no cumple con las características"
			},
			get() {
				const rawValue = this.getDataValue();				
				return rawValue ? rawValue.toUpperCase() : null;
			}
		}
	},
	c_turn:{
		type: DataTypes.INTEGER,
		allowNull: false,
		defaultValue: 0,
		validate:{
			is:{
				args: regEX.int(),
				msg:"Turno no cumple con las características"
			}
		}
	},
	n_sero:{
		type: DataTypes.STRING(4),
		allowNull: false,
		validate:{
			is:{
				args: regEX.int(4),
				msg:"Numero de serie de operación no cumple con las características"
			}
		}
	},
	c_sucu:{
		type: DataTypes.STRING(3),
		allowNull: false,
		defaultValue:'001',
		validate:{
			is:{
				args: regEX.int(3),
				msg:"Código de Sucursal no cumple con las características"
			}
		}
	},
	c_alma:{
		type: DataTypes.STRING(3),
		allowNull: false,
		defaultValue:'001',
		validate:{
			is:{
				args: regEX.int(3),
				msg:"Código de almacén no cumple con las características"
			}
		}
	},
	k_update:{ // si se encuentra 0 quiere decir que todo esta actualizado si es 1 necesita actualizar password
		type: DataTypes.INTEGER,
		allowNull: false,
		defaultValue: 0,
		validate:{
			is:{
				args: regEX.int(),
				msg:"Update no cumple con las características"
			}
		}
	}
}, {
	timestamps: false
});
Security.prototype.encryptPassword=async(password)=>{
	const salt = await bcrypt.genSalt(10);
	return await bcrypt.hash(password,salt);
};
Security.prototype.comparePassword=async(password,receivedPassword)=>{
	return await bcrypt.compare(password,receivedPassword)
};

module.exports={Security};