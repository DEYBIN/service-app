const {Router}= require('express')
const router = Router();
const securityCtrl=require('../../Controller/General/security.controller')
const {verifyUserToken}= require('../../Middleware/Middleware')

router.post('/register',verifyUserToken,securityCtrl.insert);
router.put('/update',verifyUserToken,securityCtrl.update);
router.delete('/delete',verifyUserToken,securityCtrl.delete);
router.get('/load',verifyUserToken,securityCtrl.load);
router.get('/load/:id',verifyUserToken,securityCtrl.load);

module.exports=router;