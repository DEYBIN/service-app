const { Sequelize, DataTypes } = require('sequelize')
const bcrypt= require('bcryptjs')
const {cnnCloud} =require('../../database')
const sequelize = new cnnCloud()




const User = sequelize.define('User', {

	id: {
		type: DataTypes.UUID,
		defaultValue: DataTypes.UUIDV4,
		primaryKey: true
	},
	user:{
		type: DataTypes.STRING(100),
		allowNull: false
	},
	k_modu:{
		type: DataTypes.STRING(50),
		allowNull: false
	}, 
	k_mlte:{
		type: DataTypes.INTEGER,
		allowNull: false
	},
	password:{
		type: DataTypes.STRING(200),
		require: true
	},
	c_empr:{
		type: DataTypes.STRING(4),
		allowNull: false
	}
}, {
	timestamps: false,
  // Other model options go here
	// instanceMethods: {
	// 	encryptPassword:async(password)=>{
	// 		const salt = await bcrypt.genSalt(10);
	// 		return await bcrypt.hash(password,salt);
	// 	},
	// 	comparePassword:async(password,receivedPassword)=>{
	// 		return await bcrypt.compare(password,receivedPassword)
	// 	}
  // }
});
User.prototype.encryptPassword=async(password)=>{
	const salt = await bcrypt.genSalt(10);
	return await bcrypt.hash(password,salt);
};
User.prototype.comparePassword=async(password,receivedPassword)=>{
	return await bcrypt.compare(password,receivedPassword)
};
// User.statics.encryptPassword=async(password)=>{
// 	const salt = await bcrypt.genSalt(10);
// 	return await bcrypt.hash(password,salt);
// };

// User.statics.comparePassword=async(password,receivedPassword)=>{
// 	return await bcrypt.compare(password,receivedPassword)
// };
// User.sync()
// `sequelize.define` also returns the model
module.exports={User};
// console.log(User === sequelize.models.User); // true

// let d='9b1ae600-b5ed-11eb-b997-0550b7408d0d';
// console.log(d.length)


// const {Schema,model}= require('mongoose')
// const bcrypt= require('bcryptjs')

// const userSchema =new Schema({
// 	email:{type:String,unique:true},
// 	name:String,
// 	lastName:String,
// 	birthDate:Date,
// 	documento: String,
// 	licencia: Object,
// 	celular: String,
// 	address: String,
// 	password:{type:String, required:true},
// 	nickName:String,
// 	stateUpdate:{type: Boolean, default: false},
// 	roles:[{
// 		ref:"Role",
// 		type:Schema.Types.ObjectId
// 	}]

// 	},{
// 		timestamps:true,
// 		versionKey:false
// 	}
// );
// userSchema.statics.encryptPassword=async(password)=>{
// 	const salt = await bcrypt.genSalt(10);
// 	return await bcrypt.hash(password,salt);
// };
// userSchema.statics.comparePassword=async(password,receivedPassword)=>{
// 	return await bcrypt.compare(password,receivedPassword)
// };


// module.exports =model('User',userSchema)
// CREATE TABLE [dbo].[Clientes](
// 	[c_clie] [char](3) DEFAULT '',
// 	[c_docu] [char](2) DEFAULT '',
// 	[n_docu] [varchar](11) DEFAULT '',
// 	[l_clie] [varchar](100) DEFAULT '',
// 	[l_dire] [varchar](500) DEFAULT '',
// 	[l_dire1] [varchar](500) DEFAULT '',
// 	[k_modu] [varchar](20) DEFAULT '',
// 	[k_mlte] [varchar](1) DEFAULT '',
// 	[l_giro] [char](200) DEFAULT '',
// 	[n_celu] [varchar](30) DEFAULT '',
// 	[l_obse] [varchar](100) DEFAULT '',
// 	[l_emai] [varchar](100) DEFAULT '',
// 	[f_insc] [varchar](10) DEFAULT '',
// 	[f_regi] [varchar](10) DEFAULT '',
// 	[f_venc] [varchar](10) DEFAULT '',
// 	[l_inst] [varchar](500) DEFAULT '',
// 	[n_pred] [int] DEFAULT 0,
// 	[l_cons] [varchar](50) DEFAULT '',
// 	[c_session] [varchar](150) DEFAULT '',
// 	[l_password] [varchar](200) DEFAULT '',
// 	[users_sql] [varchar](150) DEFAULT '',
// 	[passw_sql] [varchar](200) DEFAULT '',
// 	[c_empr] [varchar](3) DEFAULT ''
// )