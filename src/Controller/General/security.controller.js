const {Security}= require('../../Model/App/General/Security')
const jwt= require('jsonwebtoken')
const config= require('../../config')
const generador= require('../../Library/generador')
const securityControl={}
securityControl.insert=async (req,res)=>{
	try {
		if(!req.body.passwordAgain) return res.json({statusCode:400,status:'error',message:'revisar datos enviados'});
		const reqData= req.body;
		
		let newUser='';

		for (let i = 0; i <=8; i++) {
			newUser=generador.user({firstName:reqData.l_name,secondName:reqData.l_name,firstLastName:reqData.l_lname1,secondLastName:reqData.l_lname2},i);
			console.log(newUser,newUser.length)
			if(newUser){
				let userSecurity= await Security.findOne({attributes:['user'],where:{user:newUser}});
				if(userSecurity){
					continue;
				}else{
					break;
				}

			}else{
				return res.status(401).json({statusCode:400,status:'error',message:'Error al crear usuario, al parecer no se envió datos correctos y/o ocurrió un error de servidor'});
			}
		}
		const newUserSecurity =new Security({...reqData,user:newUser});
		newUserSecurity.password=await newUserSecurity.encryptPassword(newUserSecurity.password);
		if(reqData.password!=reqData.passwordAgain)return res.json({statusCode:400,status:'error',message:'Error contraseñas no coinciden'});
		const saveUser=await newUserSecurity.save();
		console.log(saveUser);
		return res.json({statusCode:200,status:'success',message:''})
	} catch (error) {
		if(error.name=='SequelizeValidationError'){
			msg=[];
			error.errors.map(i=>{
				msg.push(i.message);
			});

			return res.status(400).json({statusCode:400,status:'error',message:msg});
		}else if(error.name=='SequelizeDatabaseError'){
			return res.status(400).json({statusCode:400,status:'error',message:error.parent.message});
		}

		
		return res.status(400).json({statusCode:400,status:'error',message:error});
	}

}
securityControl.update=async (req,res)=>{
	try {
		const {email,password}= req.body;
		// const userFound = await User.findOne({where:{user:'deybin_04@platcont.com'}});
		const userFound = await User.findOne({where:{user:email}});
		if(!userFound) return res.status(500).json({statusCode:400,status:'error',message:'usuario o contraseña incorrecta'});
		const modelUser= new User;
		// const matchPassword= await modelUser.comparePassword('dddd',userFound.password);
		const matchPassword= await modelUser.comparePassword(password,userFound.password);
		if(!matchPassword) return res.status(500).json({statusCode:400,status:'error',message:'usuario o contraseña incorrecta'});

		const token=jwt.sign({id:userFound.id},config.SECRET,{
				expiresIn:86400 // 24 horas
		});
		
		res.status(200).json({statusCode:200,status:'success',message:'Ok',token})
	} catch (error) {
		return res.status(400).json({statusCode:400,status:'error',message:error});
	}
}

securityControl.delete=async (req,res)=>{	
	try {

		let token = req.headers["x-access-token"];
		const decoded = jwt.verify(token, config.SECRET);
		
		const userFound=await userSchema.findById(decoded.id);
		if(!userFound) return res.json({ statusCode: 400,status:'error', message: 'Usuario no Existe'});
		if(userFound.stateUpdate===true) return res.json({ statusCode: 201,status:'success', message:"actualización ya fue realizado"});

		const {...data } = req.body;
		data.stateUpdate=true;
		const updatedUser=await userSchema.findByIdAndUpdate(decoded.id, data);
		return res.json({ statusCode: 200, status: "success"});
				
	} catch (error) {
		return res.json({ statusCode: 400, status: "error",message: error });
	}
		

}

securityControl.load=async (req,res)=>{
	try {
		const {email,password}= req.body;
		// const userFound = await User.findOne({where:{user:'deybin_04@platcont.com'}});
		const userFound = await User.findOne({where:{user:email}});
		if(!userFound) return res.status(500).json({statusCode:400,status:'error',message:'usuario o contraseña incorrecta'});
		const modelUser= new User;
		// const matchPassword= await modelUser.comparePassword('dddd',userFound.password);
		const matchPassword= await modelUser.comparePassword(password,userFound.password);
		if(!matchPassword) return res.status(500).json({statusCode:400,status:'error',message:'usuario o contraseña incorrecta'});

		const token=jwt.sign({id:userFound.id},config.SECRET,{
				expiresIn:86400 // 24 horas
		});
		
		res.status(200).json({statusCode:200,status:'success',message:'Ok',token})
	} catch (error) {
		return res.status(400).json({statusCode:400,status:'error',message:error});
	}
}

securityControl.load=async (req,res)=>{
	try {
		const {email,password}= req.body;
		// const userFound = await User.findOne({where:{user:'deybin_04@platcont.com'}});
		const userFound = await User.findOne({where:{user:email}});
		if(!userFound) return res.status(500).json({statusCode:400,status:'error',message:'usuario o contraseña incorrecta'});
		const modelUser= new User;
		// const matchPassword= await modelUser.comparePassword('dddd',userFound.password);
		const matchPassword= await modelUser.comparePassword(password,userFound.password);
		if(!matchPassword) return res.status(500).json({statusCode:400,status:'error',message:'usuario o contraseña incorrecta'});

		const token=jwt.sign({id:userFound.id},config.SECRET,{
				expiresIn:86400 // 24 horas
		});
		
		res.status(200).json({statusCode:200,status:'success',message:'Ok',token})
	} catch (error) {
		return res.status(400).json({statusCode:400,status:'error',message:error});
	}
}



module.exports=securityControl;