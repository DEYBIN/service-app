require('dotenv').config();
const express= require('express')
const cors = require('cors')
const morgan = require('morgan')
const pkg = require('../package.json');

const app = express();

app.set('pkg',pkg);
app.set("port", process.env.PORT||3000);



app.use(cors());
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({extended: false}));

// Ruta de Bienvenida 
app.get("/",(req,res)=>{
	res.json({
		message: "Welcome to my Products API",
		name: app.get("pkg").name,
		version: app.get("pkg").version,
		description: app.get("pkg").description,
		author: app.get("pkg").author,
	});
});

const authRoutes= require('./Routes/auth.routes')
const securityRoutes= require('./Routes/General/security.routes')
// Routes
app.use('/auth',authRoutes);
app.use('/security',securityRoutes);
// app.use('/cars',carsRoutes);
module.exports=app;





