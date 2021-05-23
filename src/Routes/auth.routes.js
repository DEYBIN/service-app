const {Router}= require('express')
const router = Router();
const {...userCtrl}=require('../Controller/auth.controller')
const authJwt= require('../Middleware/Middleware')

router.post('/singUp',userCtrl.signUp);
router.post('/singIn',userCtrl.signIn);
router.post('/register',authJwt.verifyToken,userCtrl.register);
router.post('/login',authJwt.verifyToken,userCtrl.login);

module.exports=router;