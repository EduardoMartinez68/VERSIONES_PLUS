function _0x3792(_0x4bdff5,_0x2c85f6){const _0x3341d8=_0x3341();return _0x3792=function(_0x379234,_0x5e2245){_0x379234=_0x379234-0x1e3;let _0xa07ddf=_0x3341d8[_0x379234];return _0xa07ddf;},_0x3792(_0x4bdff5,_0x2c85f6);}const _0x3e1d5a=_0x3792;(function(_0x58bf59,_0x1af5ce){const _0x2cd697=_0x3792,_0x39896b=_0x58bf59();while(!![]){try{const _0x42d570=-parseInt(_0x2cd697(0x1eb))/0x1+-parseInt(_0x2cd697(0x229))/0x2*(parseInt(_0x2cd697(0x22c))/0x3)+-parseInt(_0x2cd697(0x1f9))/0x4*(-parseInt(_0x2cd697(0x23a))/0x5)+-parseInt(_0x2cd697(0x20e))/0x6+-parseInt(_0x2cd697(0x1f5))/0x7*(-parseInt(_0x2cd697(0x254))/0x8)+parseInt(_0x2cd697(0x202))/0x9+parseInt(_0x2cd697(0x226))/0xa*(parseInt(_0x2cd697(0x1ef))/0xb);if(_0x42d570===_0x1af5ce)break;else _0x39896b['push'](_0x39896b['shift']());}catch(_0x3ffb99){_0x39896b['push'](_0x39896b['shift']());}}}(_0x3341,0x6a261));const system=require(_0x3e1d5a(0x1f2)),express=require('express'),morgan=require(_0x3e1d5a(0x1fd)),{engine}=require('express-handlebars'),multer=require(_0x3e1d5a(0x243)),flash=require(_0x3e1d5a(0x1e7)),session=require('express-session'),passport=require(_0x3e1d5a(0x248)),{database}=require(_0x3e1d5a(0x201)),{v4:uuid}=require(_0x3e1d5a(0x22f)),path=require('path'),{RecaptchaV2}=require('express-recaptcha'),serverExpress=express();require(_0x3e1d5a(0x220)),require(_0x3e1d5a(0x20c)),serverExpress['set']('port',process[_0x3e1d5a(0x21e)]['PORT']||0xfa0),serverExpress[_0x3e1d5a(0x205)](_0x3e1d5a(0x227),path[_0x3e1d5a(0x1e5)](__dirname,'views')),serverExpress[_0x3e1d5a(0x1fa)](_0x3e1d5a(0x20a),engine({'defaultLayout':_0x3e1d5a(0x251),'layoutsDir':path['join'](serverExpress[_0x3e1d5a(0x237)](_0x3e1d5a(0x227)),'layouts'),'partialsDir':path[_0x3e1d5a(0x1e5)](serverExpress['get'](_0x3e1d5a(0x227)),_0x3e1d5a(0x1ee)),'extname':_0x3e1d5a(0x20a),'helpers':require('./lib/handlebars')})),serverExpress[_0x3e1d5a(0x205)](_0x3e1d5a(0x21a),_0x3e1d5a(0x20a)),require(_0x3e1d5a(0x22d))['config']();const {APP_PG_USER,APP_PG_HOST,APP_PG_DATABASE,APP_PG_PASSWORD,APP_PG_PORT}=process[_0x3e1d5a(0x21e)],pg=require('pg'),pgPool=new pg['Pool']({'user':APP_PG_USER,'host':APP_PG_HOST,'database':APP_PG_DATABASE,'password':APP_PG_PASSWORD,'port':APP_PG_PORT});serverExpress[_0x3e1d5a(0x244)](session({'secret':_0x3e1d5a(0x235),'resave':![],'saveUninitialized':![],'store':new(require(_0x3e1d5a(0x252))(session))({'pool':pgPool,'tableName':_0x3e1d5a(0x218)})})),serverExpress[_0x3e1d5a(0x244)](flash()),serverExpress[_0x3e1d5a(0x244)](morgan('dev')),serverExpress[_0x3e1d5a(0x244)](express[_0x3e1d5a(0x242)]({'extended':![]})),serverExpress[_0x3e1d5a(0x244)](express[_0x3e1d5a(0x1e8)]()),serverExpress[_0x3e1d5a(0x244)](passport[_0x3e1d5a(0x21d)]()),serverExpress[_0x3e1d5a(0x244)](passport[_0x3e1d5a(0x218)]());const storage=multer[_0x3e1d5a(0x234)]({'destination':path[_0x3e1d5a(0x1e5)](__dirname,_0x3e1d5a(0x215)),'filename':(_0x57d678,_0x5836d9,_0x45cbc2,_0x12835b)=>{const _0x2aa69e=_0x3e1d5a;_0x45cbc2(null,uuid()+path['extname'](_0x5836d9[_0x2aa69e(0x22a)]));}});function _0x3341(){const _0x2db86e=['No\x20pudimos\x20enviar\x20el\x20mensaje\x20al\x20usuario\x20\x27','connection','getTheFirstTenNotifications','IPv4','length','join','./lib/addFrom','connect-flash','json','get_the_first_notification','create_notification','791441feSWYe','Ups,\x20parece\x20que\x20ya\x20estás\x20conectado\x20en\x20otro\x20dispositivo.','send_new_message','partials','3498mmXFtT','Nueva\x20notificación:','getAllTheOrders','./lib/system','./router/authentication','socketId','215348wsGuMe','broadcast','port','this_email_exist','548LjFEBP','engine','./router/links/branch','0.0.0.0','morgan','./router/links/delivery','messageStatus','Server\x20running\x20on\x20http://','./keys','1029780TPIcJL','./router/links/subscription','public','set','locals','emit','Este\x20email\x20\x27','./router/links/desktop','.hbs','Server\x20running\x20on\x20port\x20','./lib/editFrom','./services/chat.js','4035444spTuAc','registerUser','/links','flash','pack_branch','El\x20usuario\x20\x27','companyId','public/img/uploads','internal','\x27.\x20Inténtalo\x20de\x20nuevo.\x20😳','session','./router/links/store','view\x20engine','create_new_chat','company','initialize','env','filter','./lib/passport','parse','static','./router/links/fudone','./router/links/orders','./router/links/ceo','39070YVaZnS','views','Ups,\x20parece\x20que\x20alcanzaste\x20tu\x20límite\x20de\x20dispositivos\x20conectados.\x20Por\x20favor,\x20actualiza\x20tu\x20membresía.','16azQkwC','originalname','sendNotificationToUser','81852tHGyiM','dotenv','log','uuid','createServer','single','pack_company','get_max_employee_of_this_company','diskStorage','FudSession','\x27\x20no\x20existe.\x20🤔','get','address','\x27\x20no\x20existe\x20🤔','5290vSsCeo','sendNotification','push','Socket\x20','./router/links','./router/links/cashCut','family','Mensaje\x20enviado\x20con\x20éxito.\x20👌','urlencoded','multer','use','./router/links/boutique','canSend','./router','passport','privateMessage','http','listen','message','image','networkInterfaces','./router/links/app','theUserIsConnect','main','connect-pg-simple','connectionRejected','160kdpZxA','success','user','socket.io'];_0x3341=function(){return _0x2db86e;};return _0x3341();}serverExpress[_0x3e1d5a(0x244)](multer({'storage':storage})[_0x3e1d5a(0x231)](_0x3e1d5a(0x24d))),serverExpress['use']((_0x3554d6,_0x163086,_0x350e67)=>{const _0x12a9b0=_0x3e1d5a;serverExpress[_0x12a9b0(0x206)][_0x12a9b0(0x255)]=_0x3554d6[_0x12a9b0(0x211)]('success'),serverExpress[_0x12a9b0(0x206)][_0x12a9b0(0x24c)]=_0x3554d6[_0x12a9b0(0x211)]('message'),serverExpress[_0x12a9b0(0x206)][_0x12a9b0(0x256)]=_0x3554d6[_0x12a9b0(0x256)],serverExpress[_0x12a9b0(0x206)][_0x12a9b0(0x21c)]=_0x3554d6[_0x12a9b0(0x21c)],serverExpress['locals'][_0x12a9b0(0x232)]=0x0,serverExpress[_0x12a9b0(0x206)][_0x12a9b0(0x212)]=0x0,_0x350e67();});const http=require(_0x3e1d5a(0x24a)),serverSocket=http[_0x3e1d5a(0x230)](serverExpress),{Server}=require(_0x3e1d5a(0x257)),io=new Server(serverSocket),users={},connectedEmployees={},companyLimitsCache={},orderKitchen={},chat=require(_0x3e1d5a(0x20d));serverSocket[_0x3e1d5a(0x24b)](serverExpress[_0x3e1d5a(0x237)](_0x3e1d5a(0x1f7)),()=>{const _0x2ae3c8=_0x3e1d5a;console[_0x2ae3c8(0x22e)](_0x2ae3c8(0x20b)+serverExpress[_0x2ae3c8(0x237)](_0x2ae3c8(0x1f7)));}),io['on'](_0x3e1d5a(0x259),async _0x43384d=>{const _0x58c33e=_0x3e1d5a;console[_0x58c33e(0x22e)]('Un\x20usuario\x20se\x20ha\x20conectado'),_0x43384d['on'](_0x58c33e(0x20f),async(_0xb6a614,_0x425f43)=>{const _0x4148f4=_0x58c33e,_0x4e9e31=connectedEmployees[_0x425f43]||[],_0x35355d=_0x4e9e31['some'](_0x17abf8=>_0x17abf8['userId']===_0xb6a614);if(_0x35355d){_0x43384d[_0x4148f4(0x207)](_0x4148f4(0x253),_0x4148f4(0x1ec));return;}if(system!='desktop'){!companyLimitsCache[_0x425f43]&&(companyLimitsCache[_0x425f43]=await chat[_0x4148f4(0x233)](_0x425f43));const _0x33915c=companyLimitsCache[_0x425f43];if(_0x4e9e31[_0x4148f4(0x1e4)]>=_0x33915c){_0x43384d[_0x4148f4(0x207)]('connectionRejected',_0x4148f4(0x228));return;}}_0x43384d[_0x4148f4(0x214)]=_0x425f43,_0x4e9e31[_0x4148f4(0x23c)]({'userId':_0xb6a614,'socketId':_0x43384d['id']}),connectedEmployees[_0x425f43]=_0x4e9e31;const _0x595999=await chat[_0x4148f4(0x1e9)](_0xb6a614,0xa);io['to'](_0xb6a614)[_0x4148f4(0x207)]('privateNotifications',{'notifications':_0x595999});});async function _0x468b98(_0x44b9a3){const _0x47803f=users[_0x44b9a3];let _0x3f6469=_0x47803f;!_0x47803f&&(_0x3f6469=await chat['this_email_exist'](toUserId));const _0x11a6ef={'canSend':_0x3f6469,'theUserIsConnect':_0x47803f};return _0x11a6ef;}_0x43384d['on'](_0x58c33e(0x22b),async({userEmail:_0x1dea06,toUserEmail:_0x2971e3,message:_0x28ec81})=>{const _0x2a11e0=_0x58c33e,_0x1a4934=await _0x468b98(_0x2971e3);_0x1a4934[_0x2a11e0(0x246)]?await chat[_0x2a11e0(0x1ea)](_0x1dea06,_0x2971e3,_0x28ec81)?(_0x1a4934[_0x2a11e0(0x250)]&&io['to'](recipientSocketId)[_0x2a11e0(0x207)](_0x2a11e0(0x249),{'userId':userId,'message':_0x28ec81}),_0x43384d[_0x2a11e0(0x207)](_0x2a11e0(0x1ff),{'success':!![],'message':_0x2a11e0(0x241)})):_0x43384d[_0x2a11e0(0x207)]('messageStatus',{'success':![],'message':_0x2a11e0(0x258)+_0x2971e3+_0x2a11e0(0x217)}):_0x43384d[_0x2a11e0(0x207)]('messageStatus',{'success':![],'message':_0x2a11e0(0x213)+_0x2971e3+_0x2a11e0(0x236)});}),_0x43384d['on'](_0x58c33e(0x25a),async({userEmail:_0x197212})=>{const _0x358eb8=_0x58c33e,_0x3f307a=await chat['get_the_first_notification'](_0x197212,0xa);io['to'](recipientSocketId)[_0x358eb8(0x207)]('privateNotifications',{'notifications':_0x3f307a});}),_0x43384d['on']('sendMessageToUser',async({userId:_0x1617e3,toUserId:_0x4af521,message:_0x141335})=>{const _0x5c65d6=_0x58c33e,_0x177d25=users[_0x4af521];let _0x386eca=_0x177d25;!_0x177d25&&(_0x386eca=await chat[_0x5c65d6(0x1f8)](_0x4af521));if(_0x386eca){const _0x2e10f5=await chat[_0x5c65d6(0x21b)](_0x1617e3,_0x4af521);await chat[_0x5c65d6(0x1ed)](_0x2e10f5,_0x1617e3,_0x141335)&&(_0x177d25&&io['to'](_0x177d25)[_0x5c65d6(0x207)](_0x5c65d6(0x249),{'userId':_0x1617e3,'message':_0x141335})),_0x43384d['emit'](_0x5c65d6(0x1ff),{'success':!![],'message':'Mensaje\x20enviado\x20con\x20éxito'});}else _0x43384d['emit'](_0x5c65d6(0x1ff),{'success':![],'message':_0x5c65d6(0x208)+_0x4af521+_0x5c65d6(0x239)});}),_0x43384d['on']('disconnect',()=>{const _0x99982b=_0x58c33e,{companyId:_0x577693}=_0x43384d;_0x577693&&connectedEmployees[_0x577693]?(connectedEmployees[_0x577693]=connectedEmployees[_0x577693][_0x99982b(0x21f)](_0x7d2b48=>_0x7d2b48[_0x99982b(0x1f4)]!==_0x43384d['id']),connectedEmployees[_0x577693][_0x99982b(0x1e4)]===0x0&&delete connectedEmployees[_0x577693]):console[_0x99982b(0x22e)](_0x99982b(0x23d)+_0x43384d['id']+'\x20desconectado,\x20pero\x20no\x20estaba\x20asociado\x20a\x20ninguna\x20empresa.');}),_0x43384d['on'](_0x58c33e(0x23b),_0x194849=>{const _0x766f25=_0x58c33e;console[_0x766f25(0x22e)](_0x766f25(0x1f0),_0x194849),_0x43384d[_0x766f25(0x1f6)][_0x766f25(0x207)]('newNotification',_0x194849);}),_0x43384d['on']('sendAllTheOrders',_0x57134e=>{const _0x2a5797=_0x58c33e;_0x43384d[_0x2a5797(0x207)](_0x2a5797(0x1f1),{'orderKitchen':orderKitchen});}),_0x43384d['on']('saveANewOrder',_0x56c7e7=>{const _0x14fb34=_0x58c33e,_0x273743=JSON[_0x14fb34(0x221)](_0x56c7e7);_0x273743['id']=orderKitchen['length']+0x1,orderKitchen[_0x14fb34(0x23c)](_0x273743);});});const companyName=_0x3e1d5a(0x210);serverExpress[_0x3e1d5a(0x244)](require(_0x3e1d5a(0x247))),serverExpress['use'](require(_0x3e1d5a(0x1f3))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x23e))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x223))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x225))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x1fb))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x203))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x219))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x1fe))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x24f))),serverExpress[_0x3e1d5a(0x244)](companyName,require('./router/links/CRM')),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x209))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x245))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x23f))),serverExpress[_0x3e1d5a(0x244)](companyName,require(_0x3e1d5a(0x224))),serverExpress['use'](require(_0x3e1d5a(0x1e6))),serverExpress[_0x3e1d5a(0x244)](express[_0x3e1d5a(0x222)](path[_0x3e1d5a(0x1e5)](__dirname,_0x3e1d5a(0x204))));const os=require('os');function getLocalIP(){const _0x347b6c=_0x3e1d5a,_0x222293=os[_0x347b6c(0x24e)]();for(let _0x5e5992 in _0x222293){for(let _0x19fc1e=0x0;_0x19fc1e<_0x222293[_0x5e5992][_0x347b6c(0x1e4)];_0x19fc1e++){const _0xc66b1e=_0x222293[_0x5e5992][_0x19fc1e];if(_0xc66b1e[_0x347b6c(0x240)]===_0x347b6c(0x1e3)&&!_0xc66b1e[_0x347b6c(0x216)])return _0xc66b1e[_0x347b6c(0x238)];}}return'127.0.0.1';}serverExpress[_0x3e1d5a(0x24b)](serverExpress['get'](_0x3e1d5a(0x1f7)),_0x3e1d5a(0x1fc),()=>{const _0x18d64e=_0x3e1d5a;console[_0x18d64e(0x22e)](_0x18d64e(0x200)+getLocalIP()+':'+serverExpress[_0x18d64e(0x237)](_0x18d64e(0x1f7)));});