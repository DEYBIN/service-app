const {Sequelize}= require('sequelize');
console.log(process.env.DEY)
const connectionCloud = new Sequelize({
	host:process.env.DB_URL_HOST,
	dialect:'mssql',
	database:process.env.DB_DATABASE,
	username:process.env.DB_USER,
	password:process.env.DB_PASSWORD

});

const connectionLocal = new Sequelize({
	host:process.env.DB_URL_HOST,
	dialect:'mssql',
	database:process.env.DB_DATABASE,
	username:process.env.DB_USER,
	password:process.env.DB_PASSWORD

});

async function  cnnClouds(){
	try {
		await connectionCloud.authenticate();
		connectionCloud.sync()
		console.log('Connection has been established successfully.');
	} catch (error) {
		console.error('Unable to connect to the database:', error);
	}
}
async function  cnnLocals(){
	try {
		await connectionLocal.authenticate();
		connectionLocal.sync()
		console.log('Connection has been established successfully.');
	} catch (error) {
		console.error('Unable to connect to the database:', error);
	}
}
cnnClouds();

cnnLocals();

function cnnCloud(){
	return connectionCloud;
}
function cnnLocal(){
	return connectionLocal;
}

module.exports = { cnnCloud:cnnCloud,cnnLocal:cnnLocal};