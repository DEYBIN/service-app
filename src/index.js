const app = require('./app');
require('./database')
app.listen(app.get('port'));
console.log(`Server listener on por: ${app.get('port')}`)