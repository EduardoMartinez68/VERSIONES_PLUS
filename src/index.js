function _0x2940(){const _0x4daca2=['./router/links/boutique','locals','this_email_exist','get','set','getAllTheOrders','morgan','319840XgzHSj','sendAllTheOrders','socket.io','multer','get_the_first_notification','connect-pg-simple','Server\x20running\x20on\x20http://','Ups,\x20parece\x20que\x20ya\x20estás\x20conectado\x20en\x20otro\x20dispositivo.','push','pack_branch','78gPfSat','Socket\x20','session','port','layouts','./lib/system','success','public/img/uploads','pack_company','./services/chat.js','Mensaje\x20enviado\x20con\x20éxito','0.0.0.0','./router/authentication','internal','single','./router/links/branch','./router/links/app','12jFRDYB','canSend','length','join','./lib/passport','use','messageStatus','./router/links/ceo','3259060qOjZoI','311731vZrvsl','connectionRejected','log','IPv4','./lib/addFrom','188296kRNoEy','config','privateMessage','user','newNotification','initialize','./router/links/subscription','./router/links','132hTNhAV','./lib/handlebars','Un\x20usuario\x20se\x20ha\x20conectado','privateNotifications','4qJAMpN','dotenv','create_new_chat','image','view\x20engine','family','userId','./router/links/CRM','engine','1232952bfICgG','address','socketId','filter','./keys','diskStorage','get_max_employee_of_this_company','.hbs','originalname','196438oGNUyy','./router/links/delivery','public','\x27\x20no\x20existe\x20🤔','company','/links','theUserIsConnect','sendMessageToUser','views','urlencoded','flash','Mensaje\x20enviado\x20con\x20éxito.\x20👌','emit','./lib/editFrom','20JjZkzx','broadcast','saveANewOrder','1785843tbUrDO','main','./router/links/cashCut','listen','FudSession','http','send_new_message','env','Nueva\x20notificación:','message','partials','express','json','./router','networkInterfaces','companyId','desktop'];_0x2940=function(){return _0x4daca2;};return _0x2940();}const _0x3f5d30=_0x4697;(function(_0x2938a4,_0x4eee23){const _0x48985e=_0x4697,_0x18206f=_0x2938a4();while(!![]){try{const _0x1191c5=parseInt(_0x48985e(0xf7))/0x1*(parseInt(_0x48985e(0xe9))/0x2)+-parseInt(_0x48985e(0x9c))/0x3+-parseInt(_0x48985e(0x103))/0x4*(-parseInt(_0x48985e(0xf1))/0x5)+-parseInt(_0x48985e(0xd8))/0x6*(parseInt(_0x48985e(0xf2))/0x7)+parseInt(_0x48985e(0xce))/0x8+parseInt(_0x48985e(0xb6))/0x9*(-parseInt(_0x48985e(0xb3))/0xa)+parseInt(_0x48985e(0xa5))/0xb*(parseInt(_0x48985e(0xff))/0xc);if(_0x1191c5===_0x4eee23)break;else _0x18206f['push'](_0x18206f['shift']());}catch(_0x1b4d96){_0x18206f['push'](_0x18206f['shift']());}}}(_0x2940,0x9a1c7));const system=require(_0x3f5d30(0xdd)),express=require(_0x3f5d30(0xc1)),morgan=require(_0x3f5d30(0xcd)),{engine}=require('express-handlebars'),multer=require(_0x3f5d30(0xd1)),flash=require('connect-flash'),session=require('express-session'),passport=require('passport'),{database}=require(_0x3f5d30(0xa0)),{v4:uuid}=require('uuid'),path=require('path'),{RecaptchaV2}=require('express-recaptcha'),serverExpress=express();function _0x4697(_0x54acf8,_0x2ce662){const _0x29407b=_0x2940();return _0x4697=function(_0x4697c0,_0x3f8f89){_0x4697c0=_0x4697c0-0x9b;let _0x1ecefa=_0x29407b[_0x4697c0];return _0x1ecefa;},_0x4697(_0x54acf8,_0x2ce662);}require(_0x3f5d30(0xed)),require(_0x3f5d30(0xb2)),serverExpress[_0x3f5d30(0xcb)](_0x3f5d30(0xdb),process[_0x3f5d30(0xbd)]['PORT']||0xfa0),serverExpress[_0x3f5d30(0xcb)](_0x3f5d30(0xad),path[_0x3f5d30(0xec)](__dirname,_0x3f5d30(0xad))),serverExpress[_0x3f5d30(0x9b)](_0x3f5d30(0xa3),engine({'defaultLayout':_0x3f5d30(0xb7),'layoutsDir':path[_0x3f5d30(0xec)](serverExpress[_0x3f5d30(0xca)]('views'),_0x3f5d30(0xdc)),'partialsDir':path[_0x3f5d30(0xec)](serverExpress[_0x3f5d30(0xca)](_0x3f5d30(0xad)),_0x3f5d30(0xc0)),'extname':'.hbs','helpers':require(_0x3f5d30(0x100))})),serverExpress[_0x3f5d30(0xcb)](_0x3f5d30(0x107),_0x3f5d30(0xa3)),require(_0x3f5d30(0x104))[_0x3f5d30(0xf8)]();const {APP_PG_USER,APP_PG_HOST,APP_PG_DATABASE,APP_PG_PASSWORD,APP_PG_PORT}=process[_0x3f5d30(0xbd)],pg=require('pg'),pgPool=new pg['Pool']({'user':APP_PG_USER,'host':APP_PG_HOST,'database':APP_PG_DATABASE,'password':APP_PG_PASSWORD,'port':APP_PG_PORT});serverExpress[_0x3f5d30(0xee)](session({'secret':_0x3f5d30(0xba),'resave':![],'saveUninitialized':![],'store':new(require(_0x3f5d30(0xd3))(session))({'pool':pgPool,'tableName':_0x3f5d30(0xda)})})),serverExpress[_0x3f5d30(0xee)](flash()),serverExpress[_0x3f5d30(0xee)](morgan('dev')),serverExpress[_0x3f5d30(0xee)](express[_0x3f5d30(0xae)]({'extended':![]})),serverExpress[_0x3f5d30(0xee)](express[_0x3f5d30(0xc2)]()),serverExpress['use'](passport[_0x3f5d30(0xfc)]()),serverExpress[_0x3f5d30(0xee)](passport[_0x3f5d30(0xda)]());const storage=multer[_0x3f5d30(0xa1)]({'destination':path[_0x3f5d30(0xec)](__dirname,_0x3f5d30(0xdf)),'filename':(_0x31326a,_0x18b9a7,_0x2b2b94,_0x1bcdce)=>{const _0x5bb404=_0x3f5d30;_0x2b2b94(null,uuid()+path['extname'](_0x18b9a7[_0x5bb404(0xa4)]));}});serverExpress[_0x3f5d30(0xee)](multer({'storage':storage})[_0x3f5d30(0xe6)](_0x3f5d30(0x106))),serverExpress[_0x3f5d30(0xee)]((_0x53146c,_0x565e40,_0x273fea)=>{const _0x34cd22=_0x3f5d30;serverExpress[_0x34cd22(0xc8)][_0x34cd22(0xde)]=_0x53146c[_0x34cd22(0xaf)](_0x34cd22(0xde)),serverExpress[_0x34cd22(0xc8)][_0x34cd22(0xbf)]=_0x53146c[_0x34cd22(0xaf)]('message'),serverExpress[_0x34cd22(0xc8)][_0x34cd22(0xfa)]=_0x53146c[_0x34cd22(0xfa)],serverExpress[_0x34cd22(0xc8)][_0x34cd22(0xa9)]=_0x53146c[_0x34cd22(0xa9)],serverExpress['locals'][_0x34cd22(0xe0)]=0x0,serverExpress[_0x34cd22(0xc8)][_0x34cd22(0xd7)]=0x0,_0x273fea();});const http=require(_0x3f5d30(0xbb)),serverSocket=http['createServer'](serverExpress),{Server}=require(_0x3f5d30(0xd0)),io=new Server(serverSocket),users={},connectedEmployees={},companyLimitsCache={},orderKitchen={},chat=require(_0x3f5d30(0xe1));serverSocket[_0x3f5d30(0xb9)](serverExpress[_0x3f5d30(0xca)](_0x3f5d30(0xdb)),()=>{const _0x18f18d=_0x3f5d30;console[_0x18f18d(0xf4)]('Server\x20running\x20on\x20port\x20'+serverExpress[_0x18f18d(0xca)](_0x18f18d(0xdb)));}),io['on']('connection',async _0x4bbeb3=>{const _0x576989=_0x3f5d30;console['log'](_0x576989(0x101)),_0x4bbeb3['on']('registerUser',async(_0x2290d9,_0x1d4eee)=>{const _0x98a3d8=_0x576989,_0x1b5af5=connectedEmployees[_0x1d4eee]||[],_0x1c9b7b=_0x1b5af5['some'](_0x55ef59=>_0x55ef59[_0x98a3d8(0x109)]===_0x2290d9);if(_0x1c9b7b){_0x4bbeb3[_0x98a3d8(0xb1)](_0x98a3d8(0xf3),_0x98a3d8(0xd5));return;}if(system!=_0x98a3d8(0xc6)){!companyLimitsCache[_0x1d4eee]&&(companyLimitsCache[_0x1d4eee]=await chat[_0x98a3d8(0xa2)](_0x1d4eee));const _0xe06d73=companyLimitsCache[_0x1d4eee];if(_0x1b5af5[_0x98a3d8(0xeb)]>=_0xe06d73){_0x4bbeb3[_0x98a3d8(0xb1)]('connectionRejected','Ups,\x20parece\x20que\x20alcanzaste\x20tu\x20límite\x20de\x20dispositivos\x20conectados.\x20Por\x20favor,\x20actualiza\x20tu\x20membresía.');return;}}_0x4bbeb3[_0x98a3d8(0xc5)]=_0x1d4eee,_0x1b5af5[_0x98a3d8(0xd6)]({'userId':_0x2290d9,'socketId':_0x4bbeb3['id']}),connectedEmployees[_0x1d4eee]=_0x1b5af5;const _0x3d796b=await chat['get_the_first_notification'](_0x2290d9,0xa);io['to'](_0x2290d9)['emit'](_0x98a3d8(0x102),{'notifications':_0x3d796b});});async function _0x38a35b(_0x56ea2a){const _0x8908ad=_0x576989,_0x319a04=users[_0x56ea2a];let _0x1920c6=_0x319a04;!_0x319a04&&(_0x1920c6=await chat[_0x8908ad(0xc9)](toUserId));const _0x341a4d={'canSend':_0x1920c6,'theUserIsConnect':_0x319a04};return _0x341a4d;}_0x4bbeb3['on']('sendNotificationToUser',async({userEmail:_0xc10bfb,toUserEmail:_0x1ea8c3,message:_0x18fc3e})=>{const _0xee4cae=_0x576989,_0x54a883=await _0x38a35b(_0x1ea8c3);_0x54a883[_0xee4cae(0xea)]?await chat['create_notification'](_0xc10bfb,_0x1ea8c3,_0x18fc3e)?(_0x54a883[_0xee4cae(0xab)]&&io['to'](recipientSocketId)[_0xee4cae(0xb1)](_0xee4cae(0xf9),{'userId':userId,'message':_0x18fc3e}),_0x4bbeb3[_0xee4cae(0xb1)]('messageStatus',{'success':!![],'message':_0xee4cae(0xb0)})):_0x4bbeb3['emit'](_0xee4cae(0xef),{'success':![],'message':'No\x20pudimos\x20enviar\x20el\x20mensaje\x20al\x20usuario\x20\x27'+_0x1ea8c3+'\x27.\x20Inténtalo\x20de\x20nuevo.\x20😳'}):_0x4bbeb3['emit'](_0xee4cae(0xef),{'success':![],'message':'El\x20usuario\x20\x27'+_0x1ea8c3+'\x27\x20no\x20existe.\x20🤔'});}),_0x4bbeb3['on']('getTheFirstTenNotifications',async({userEmail:_0x312fe8})=>{const _0x22ec18=_0x576989,_0x4eca6e=await chat[_0x22ec18(0xd2)](_0x312fe8,0xa);io['to'](recipientSocketId)[_0x22ec18(0xb1)](_0x22ec18(0x102),{'notifications':_0x4eca6e});}),_0x4bbeb3['on'](_0x576989(0xac),async({userId:_0x474718,toUserId:_0x17c230,message:_0x5c3fdb})=>{const _0x3a7306=_0x576989,_0x1a7277=users[_0x17c230];let _0x1bce89=_0x1a7277;!_0x1a7277&&(_0x1bce89=await chat[_0x3a7306(0xc9)](_0x17c230));if(_0x1bce89){const _0x46dcf8=await chat[_0x3a7306(0x105)](_0x474718,_0x17c230);await chat[_0x3a7306(0xbc)](_0x46dcf8,_0x474718,_0x5c3fdb)&&(_0x1a7277&&io['to'](_0x1a7277)['emit'](_0x3a7306(0xf9),{'userId':_0x474718,'message':_0x5c3fdb})),_0x4bbeb3[_0x3a7306(0xb1)](_0x3a7306(0xef),{'success':!![],'message':_0x3a7306(0xe2)});}else _0x4bbeb3[_0x3a7306(0xb1)](_0x3a7306(0xef),{'success':![],'message':'Este\x20email\x20\x27'+_0x17c230+_0x3a7306(0xa8)});}),_0x4bbeb3['on']('disconnect',()=>{const _0x9800a=_0x576989,{companyId:_0x2a3c00}=_0x4bbeb3;_0x2a3c00&&connectedEmployees[_0x2a3c00]?(connectedEmployees[_0x2a3c00]=connectedEmployees[_0x2a3c00][_0x9800a(0x9f)](_0x42c8b4=>_0x42c8b4[_0x9800a(0x9e)]!==_0x4bbeb3['id']),connectedEmployees[_0x2a3c00][_0x9800a(0xeb)]===0x0&&delete connectedEmployees[_0x2a3c00]):console[_0x9800a(0xf4)](_0x9800a(0xd9)+_0x4bbeb3['id']+'\x20desconectado,\x20pero\x20no\x20estaba\x20asociado\x20a\x20ninguna\x20empresa.');}),_0x4bbeb3['on']('sendNotification',_0x227838=>{const _0x9dd876=_0x576989;console[_0x9dd876(0xf4)](_0x9dd876(0xbe),_0x227838),_0x4bbeb3[_0x9dd876(0xb4)]['emit'](_0x9dd876(0xfb),_0x227838);}),_0x4bbeb3['on'](_0x576989(0xcf),_0x2ad707=>{const _0x53aaa4=_0x576989;_0x4bbeb3['emit'](_0x53aaa4(0xcc),{'orderKitchen':orderKitchen});}),_0x4bbeb3['on'](_0x576989(0xb5),_0x38f508=>{const _0x3743b4=_0x576989,_0xc2c261=JSON['parse'](_0x38f508);_0xc2c261['id']=orderKitchen[_0x3743b4(0xeb)]+0x1,orderKitchen[_0x3743b4(0xd6)](_0xc2c261);});});const companyName=_0x3f5d30(0xaa);serverExpress['use'](require(_0x3f5d30(0xc3))),serverExpress[_0x3f5d30(0xee)](require(_0x3f5d30(0xe4))),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xfe))),serverExpress[_0x3f5d30(0xee)](companyName,require('./router/links/fudone')),serverExpress['use'](companyName,require(_0x3f5d30(0xf0))),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xe7))),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xfd))),serverExpress[_0x3f5d30(0xee)](companyName,require('./router/links/store')),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xa6))),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xe8))),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0x10a))),serverExpress[_0x3f5d30(0xee)](companyName,require('./router/links/desktop')),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xc7))),serverExpress[_0x3f5d30(0xee)](companyName,require(_0x3f5d30(0xb8))),serverExpress[_0x3f5d30(0xee)](companyName,require('./router/links/orders')),serverExpress['use'](require(_0x3f5d30(0xf6))),serverExpress[_0x3f5d30(0xee)](express['static'](path[_0x3f5d30(0xec)](__dirname,_0x3f5d30(0xa7))));const os=require('os');function getLocalIP(){const _0x2b11f1=_0x3f5d30,_0x39db93=os[_0x2b11f1(0xc4)]();for(let _0x2cd154 in _0x39db93){for(let _0x408201=0x0;_0x408201<_0x39db93[_0x2cd154]['length'];_0x408201++){const _0x152db9=_0x39db93[_0x2cd154][_0x408201];if(_0x152db9[_0x2b11f1(0x108)]===_0x2b11f1(0xf5)&&!_0x152db9[_0x2b11f1(0xe5)])return _0x152db9[_0x2b11f1(0x9d)];}}return'127.0.0.1';}serverExpress[_0x3f5d30(0xb9)](serverExpress[_0x3f5d30(0xca)](_0x3f5d30(0xdb)),_0x3f5d30(0xe3),()=>{const _0x643b6e=_0x3f5d30;console[_0x643b6e(0xf4)](_0x643b6e(0xd4)+getLocalIP()+':'+serverExpress[_0x643b6e(0xca)](_0x643b6e(0xdb)));});