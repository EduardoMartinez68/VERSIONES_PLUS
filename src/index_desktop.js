const _0xce888=_0x3a2b;(function(_0x370b43,_0x2bc624){const _0x2ec6c5=_0x3a2b,_0x212af3=_0x370b43();while(!![]){try{const _0x9c2a5e=-parseInt(_0x2ec6c5(0x156))/0x1+-parseInt(_0x2ec6c5(0x122))/0x2*(-parseInt(_0x2ec6c5(0x12d))/0x3)+-parseInt(_0x2ec6c5(0xd5))/0x4*(parseInt(_0x2ec6c5(0x12b))/0x5)+-parseInt(_0x2ec6c5(0xcb))/0x6+-parseInt(_0x2ec6c5(0x146))/0x7+-parseInt(_0x2ec6c5(0xdd))/0x8*(parseInt(_0x2ec6c5(0x126))/0x9)+-parseInt(_0x2ec6c5(0x139))/0xa*(-parseInt(_0x2ec6c5(0xfe))/0xb);if(_0x9c2a5e===_0x2bc624)break;else _0x212af3['push'](_0x212af3['shift']());}catch(_0xd66f54){_0x212af3['push'](_0x212af3['shift']());}}}(_0x1ff9,0x89e59));const system=require(_0xce888(0x114)),thiIsADemo=![],{app,BrowserWindow,dialog,ipcMain}=require(_0xce888(0x111)),express=require(_0xce888(0x13b)),morgan=require(_0xce888(0xee)),{engine}=require(_0xce888(0xed)),multer=require('multer'),flash=require(_0xce888(0xa2)),session=require('express-session'),passport=require(_0xce888(0xdf)),{database}=require(_0xce888(0xb8)),{v4:uuid}=require(_0xce888(0x13f)),path=require(_0xce888(0xe7)),{RecaptchaV2}=require(_0xce888(0xe6)),nodePersist=require(_0xce888(0x128));nodePersist[_0xce888(0xd0)]({'dir':path[_0xce888(0xaf)](__dirname,_0xce888(0xbc))});async function initialize_software(){const _0x3aacd2=_0xce888,_0x144c80=await nodePersist['get'](_0x3aacd2(0x110));!_0x144c80&&await nodePersist[_0x3aacd2(0x14f)](_0x3aacd2(0x110),_0x3aacd2(0x113));}async function the_software_have_a_token(){const _0x4d2b28=_0xce888,_0x41d937=await nodePersist[_0x4d2b28(0x135)](_0x4d2b28(0x110));if(!_0x41d937)return![];return _0x41d937!=_0x4d2b28(0x113);}async function create_expiration_date_of_the_token(_0x543e00){const _0x45cd2a=_0xce888,_0x5ce676=await nodePersist[_0x45cd2a(0x135)](_0x45cd2a(0xb9));!_0x5ce676&&await nodePersist[_0x45cd2a(0x14f)](_0x45cd2a(0xb9),_0x543e00);}async function token_expired(){const _0x25df84=await nodePersist['get']('expirationDateOFTheToken'),_0x3a4f2b=new Date(_0x25df84),_0x30b09e=new Date();return _0x30b09e<_0x3a4f2b;}function _0x3a2b(_0x58ca4a,_0x2c05cf){const _0x1ff9bd=_0x1ff9();return _0x3a2b=function(_0x3a2b43,_0x8353c){_0x3a2b43=_0x3a2b43-0x9a;let _0x1f4605=_0x1ff9bd[_0x3a2b43];return _0x1f4605;},_0x3a2b(_0x58ca4a,_0x2c05cf);}async function remove_install_token(){const _0xadd70=_0xce888;await nodePersist[_0xadd70(0x12a)](_0xadd70(0x110)),await nodePersist[_0xadd70(0x12a)](_0xadd70(0xb9)),console[_0xadd70(0x109)]('installToken\x20eliminado');}async function initialize_token(_0x28513c){const _0x36273e=_0xce888,_0x29dc8f=await nodePersist[_0x36273e(0x135)]('installToken');await nodePersist['set'](_0x36273e(0x110),_0x28513c);}async function initialize_demo(){const _0x249569=_0xce888,_0x49d29e=await nodePersist[_0x249569(0x135)](_0x249569(0xd6));if(!_0x49d29e){const _0x3b4fef=new Date()[_0x249569(0x155)]();await nodePersist['set'](_0x249569(0xa1),_0x3b4fef),console[_0x249569(0x109)]('Fecha\x20de\x20instalación\x20guardada:',_0x3b4fef);}else console['log'](_0x249569(0xca),_0x49d29e);}async function is_demo_expired(){const _0x529059=_0xce888,_0x20c92e=await nodePersist['get']('installDemo');if(!_0x20c92e)return console[_0x529059(0x109)](_0x529059(0x160)),![];const _0xbe4626=new Date(_0x20c92e),_0x2ebdc9=new Date(),_0x140ecb=_0x2ebdc9-_0xbe4626,_0x2599e8=_0x140ecb/(0x3e8*0x3c*0x3c*0x18);return _0x2599e8>0x1e?(console[_0x529059(0x109)](_0x529059(0x10f)),!![]):(console[_0x529059(0x109)]('La\x20demo\x20aún\x20está\x20activa.'),![]);}async function this_software_count_have_a_count(){}async function the_user_have_a_token_active_in_the_database(){}function _0x1ff9(){const _0x32f8d4=['981628ivudFI','installDemo','\x0a\x20\x20\x20\x20\x20\x20\x20\x20SELECT\x20*\x20FROM\x20pagos\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20WHERE\x20token\x20=\x20?\x0a\x20\x20\x20\x20','main','./router/links/app','La\x20conexión\x20a\x20la\x20base\x20de\x20datos\x20fue\x20cerrada.','\x0a\x20\x20\x20\x20\x20\x20\x20\x20UPDATE\x20pagos\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20SET\x20active\x20=\x20false\x0a\x20\x20\x20\x20\x20\x20\x20\x20WHERE\x20token\x20=\x20?\x0a\x20\x20\x20\x20','public','825464qGKzfV','pop','passport','Se\x20ha\x20descargado\x20una\x20nueva\x20versión.\x20Reinicia\x20la\x20aplicación\x20para\x20aplicar\x20los\x20cambios.','this_email_exist','La\x20base\x20de\x20datos\x20tiene\x20muchas\x20conexiones.','mysql','answer-from-login-render-token','active','express-recaptcha','path','createServer','getTheFirstTenNotifications','error','sendNotificationToUser','success','express-handlebars','morgan','HEAD','Conexión\x20a\x20la\x20base\x20de\x20datos\x20exitosa\x20MYSQL.','password','partials','address','socket.io','El\x20usuario\x20\x27','Ups,\x20parece\x20que\x20ya\x20estás\x20conectado\x20en\x20otro\x20dispositivo.','theUserIsConnect','Pool','Este\x20usuario\x20ya\x20tiene\x20un\x20TOKEN\x20registrado\x20en\x20un\x20equipo.','pack_branch','preload.js','static','relaunch','11rGDcKs','messageStatus','PROTOCOL_CONNECTION_LOST','Mensaje\x20enviado\x20con\x20éxito','Socket\x20','\x27\x20no\x20existe.\x20🤔','\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20UPDATE\x20users\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20SET\x20activation_date\x20=\x20?\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20WHERE\x20token\x20=\x20?\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20','originalname','Nueva\x20notificación:','message','\x27.\x20Inténtalo\x20de\x20nuevo.\x20😳','log','emit','ready','http://localhost:','./router/links','connectionRejected','La\x20demo\x20ha\x20expirado.','installToken','electron','🔄\x20Nueva\x20versión\x20encontrada,\x20actualizando...','false','./lib/system','length','\x0a\x20\x20\x20\x20\x20\x20\x20\x20SELECT\x20token,\x20type_membresy,\x20password\x20AS\x20hashedPassword,\x20activation_date\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20FROM\x20users\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20WHERE\x20email\x20=\x20?\x0a\x20\x20\x20\x20','internal','activation_date','Actualización','single','origin','./router/links/CRM','company','config','IPv4','PORT','flash','9626EOHsWG','platform','privateNotifications','latest','45HqJpCm','addRemote','node-persist','dev','removeItem','5wlcmMl','window-all-closed','435MZAZoY','./router/links/fudone','release','El\x20token\x20no\x20está\x20activo\x20o\x20no\x20existe.','desktop','broadcast','view\x20engine','Token\x20no\x20encontrado.','get','locals','privateMessage','FudSession','26149670BsvsYY','util','express','./lib/handlebars','use','./router','uuid','simple-git','engine','.hbs','origin/main','Error\x20al\x20verificar\x20el\x20token:','some','5615358uEXznU','answer-from-login-render','dotenv','image','json','showMessageBoxSync','❌\x20Error\x20verificando\x20actualizaciones:','--assume-unchanged','user','set','companyId','bcrypt','get_max_employee_of_this_company','create_notification','canSend','toISOString','523640nwQRUZ','then','extname','raw','./router/links/delivery','token','Usuario\x20autenticado\x20con\x20éxito.','catch','Error\x20al\x20actualizar\x20el\x20UUID\x20del\x20dispositivo:','activation.html','No\x20se\x20encontró\x20la\x20fecha\x20de\x20instalación','maximize','warning','login-from-render-token','push','getConnection','env','disconnect','Error\x20al\x20agregar\x20el\x20repositorio\x20remoto','urlencoded','createPool','info','listen','installDate','connect-flash','src/public/img/uploads/','127.0.0.1','https://github.com/EduardoMartinez68/VERSIONES_PLUS','quit','reply','device_id','setFullYear','userId','Ups,\x20parece\x20que\x20alcanzaste\x20tu\x20límite\x20de\x20dispositivos\x20conectados.\x20Por\x20favor,\x20actualiza\x20tu\x20membresía.','sendMessageToUser','Error\x20al\x20verificar\x20usuario:','loadFile','join','query','./router/links/desktop','\x0a\x20\x20\x20\x20\x20\x20\x20\x20SELECT\x20token,\x20type_membresy,\x20activation_date\x20,\x20device_id\x0a\x20\x20\x20\x20\x20\x20\x20\x20FROM\x20pagos\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20WHERE\x20token\x20=\x20?\x0a\x20\x20\x20\x20','Mensaje\x20enviado\x20con\x20éxito.\x20👌','getFullYear','login-from-render','Tu\x20demo\x20de\x2030\x20días\x20ha\x20expirado.\x20Por\x20favor,\x20compra\x20la\x20versión\x20completa\x20y\x20sigue\x20creciendo\x20con\x20ED\x20PLUS\x20🚀.','Datos\x20actualizados\x20con\x20éxito.\x20Cierra\x20y\x20vuelve\x20a\x20abrir\x20el\x20programa\x20😄','./keys','expirationDateOFTheToken','socketId','code','data','session','send_new_message','Bobesponja48*','./router/links/boutique','connect-pg-simple','/links','hash','get_the_first_notification','Repositorio\x20remoto\x20configurado\x20correctamente','filter','family','./lib/addFrom','./router/links/ceo','Fecha\x20de\x20instalación\x20existente:','3965226XLEnZB','views','port','u995592926_bestpoint','connection','init','node-machine-id','stash','darwin','\x20desconectado,\x20pero\x20no\x20estaba\x20asociado\x20a\x20ninguna\x20empresa.'];_0x1ff9=function(){return _0x32f8d4;};return _0x1ff9();}async function verify_membership_of_user(){initialize_software();if(await the_software_have_a_token())return await token_expired();return![];}const simpleGit=require(_0xce888(0x140)),fs=require('fs'),repoPath=path[_0xce888(0xaf)](__dirname),git=simpleGit(repoPath),repoURL=_0xce888(0xa5),remote=_0xce888(0x11b);git[_0xce888(0x127)](remote,repoURL)[_0xce888(0x157)](()=>{const _0x537a8d=_0xce888;console[_0x537a8d(0x109)](_0x537a8d(0xc5));})[_0xce888(0x15d)](_0x579501=>{const _0x3e39e5=_0xce888;console[_0x3e39e5(0xea)](_0x3e39e5(0x9c),_0x579501);});async function check_if_exist_updates(){const _0x25fc36=_0xce888;try{await git['fetch'](remote),await git[_0x25fc36(0x159)](['update-index',_0x25fc36(0x14d),_0x25fc36(0xa3)]),await git[_0x25fc36(0xd2)]();const _0x59094c=await git[_0x25fc36(0x109)]([_0x25fc36(0x143),'-1']),_0x13a1fd=await git[_0x25fc36(0x109)]([_0x25fc36(0xef),'-1']);_0x59094c[_0x25fc36(0x125)]['hash']!==_0x13a1fd['latest'][_0x25fc36(0xc3)]?(console[_0x25fc36(0x109)](_0x25fc36(0x112)),await git['pull'](_0x25fc36(0x11b),_0x25fc36(0xd8),{'--rebase':null}),dialog[_0x25fc36(0x14b)]({'type':_0x25fc36(0x9f),'title':_0x25fc36(0x119),'message':_0x25fc36(0xe0),'buttons':['Reiniciar\x20ahora']}),app[_0x25fc36(0xfd)](),app['quit']()):console[_0x25fc36(0x109)]('✅\x20La\x20aplicación\x20ya\x20está\x20actualizada.'),await git['stash']([_0x25fc36(0xde)]);}catch(_0x504ec9){console[_0x25fc36(0xea)](_0x25fc36(0x14c),_0x504ec9);}}const serverExpress=express();require('./lib/passport'),require('./lib/editFrom'),serverExpress['set'](_0xce888(0xcd),process[_0xce888(0x9a)][_0xce888(0x120)]||0xfa0),serverExpress[_0xce888(0x14f)](_0xce888(0xcc),path[_0xce888(0xaf)](__dirname,_0xce888(0xcc))),serverExpress[_0xce888(0x141)]('.hbs',engine({'defaultLayout':_0xce888(0xd8),'layoutsDir':path[_0xce888(0xaf)](serverExpress[_0xce888(0x135)](_0xce888(0xcc)),'layouts'),'partialsDir':path[_0xce888(0xaf)](serverExpress['get'](_0xce888(0xcc)),_0xce888(0xf2)),'extname':'.hbs','helpers':require(_0xce888(0x13c))})),serverExpress[_0xce888(0x14f)](_0xce888(0x133),_0xce888(0x142)),require(_0xce888(0x148))[_0xce888(0x11e)]();const {APP_PG_USER,APP_PG_HOST,APP_PG_DATABASE,APP_PG_PASSWORD,APP_PG_PORT,TOKEN}=process['env'],pg=require('pg'),pgPool=new pg[(_0xce888(0xf8))]({'user':APP_PG_USER,'host':APP_PG_HOST,'database':APP_PG_DATABASE,'password':APP_PG_PASSWORD,'port':APP_PG_PORT});serverExpress[_0xce888(0x13d)](session({'secret':_0xce888(0x138),'resave':![],'saveUninitialized':![],'store':new(require(_0xce888(0xc1))(session))({'pool':pgPool,'tableName':_0xce888(0xbd)})})),serverExpress['use'](flash()),serverExpress[_0xce888(0x13d)](morgan(_0xce888(0x129))),serverExpress[_0xce888(0x13d)](express[_0xce888(0x9d)]({'extended':![]})),serverExpress[_0xce888(0x13d)](express[_0xce888(0x14a)]()),serverExpress[_0xce888(0x13d)](passport['initialize']()),serverExpress[_0xce888(0x13d)](passport[_0xce888(0xbd)]());const storage=multer['diskStorage']({'destination':path[_0xce888(0xaf)](__dirname,'public/img/uploads'),'filename':(_0x8644b8,_0x55cfbe,_0x4fe46c,_0x56ee2f)=>{const _0x541104=_0xce888;_0x4fe46c(null,uuid()+path[_0x541104(0x158)](_0x55cfbe[_0x541104(0x105)]));}});serverExpress[_0xce888(0x13d)](multer({'storage':storage})[_0xce888(0x11a)](_0xce888(0x149))),serverExpress[_0xce888(0x13d)]((_0x3b83b4,_0x12ed91,_0x10fe03)=>{const _0x3251a1=_0xce888;serverExpress[_0x3251a1(0x136)][_0x3251a1(0xec)]=_0x3b83b4[_0x3251a1(0x121)](_0x3251a1(0xec)),serverExpress[_0x3251a1(0x136)]['message']=_0x3b83b4['flash']('message'),serverExpress['locals'][_0x3251a1(0x14e)]=_0x3b83b4[_0x3251a1(0x14e)],serverExpress[_0x3251a1(0x136)][_0x3251a1(0x11d)]=_0x3b83b4['company'],serverExpress['locals']['pack_company']=0x0,serverExpress[_0x3251a1(0x136)][_0x3251a1(0xfa)]=0x0,_0x10fe03();});const http=require('http'),server=http[_0xce888(0xe8)](serverExpress),{Server}=require(_0xce888(0xf4)),io=new Server(server),users={},connectedEmployees={},companyLimitsCache={},chat=require('./services/chat.js');io['on'](_0xce888(0xcf),async _0x3295b8=>{const _0x5741b1=_0xce888;_0x3295b8['on']('registerUser',async(_0x362f1c,_0x218d80)=>{const _0x2a8568=_0x3a2b,_0x2965a6=connectedEmployees[_0x218d80]||[],_0x524d44=_0x2965a6[_0x2a8568(0x145)](_0x22e852=>_0x22e852[_0x2a8568(0xaa)]===_0x362f1c);if(_0x524d44){_0x3295b8['emit']('connectionRejected',_0x2a8568(0xf6));return;}if(system!=_0x2a8568(0x131)){!companyLimitsCache[_0x218d80]&&(companyLimitsCache[_0x218d80]=await chat[_0x2a8568(0x152)](_0x218d80));const _0x2ac6bf=companyLimitsCache[_0x218d80];if(_0x2965a6[_0x2a8568(0x115)]>=_0x2ac6bf){_0x3295b8['emit'](_0x2a8568(0x10e),_0x2a8568(0xab));return;}}_0x3295b8[_0x2a8568(0x150)]=_0x218d80,_0x2965a6[_0x2a8568(0x164)]({'userId':_0x362f1c,'socketId':_0x3295b8['id']}),connectedEmployees[_0x218d80]=_0x2965a6;const _0x3b3e51=await chat[_0x2a8568(0xc4)](_0x362f1c,0xa);io['to'](_0x362f1c)[_0x2a8568(0x10a)](_0x2a8568(0x124),{'notifications':_0x3b3e51});});async function _0x450c23(_0x539c55){const _0x5ba893=_0x3a2b,_0x1a7976=users[_0x539c55];let _0x47d481=_0x1a7976;!_0x1a7976&&(_0x47d481=await chat[_0x5ba893(0xe1)](toUserId));const _0x4db0e1={'canSend':_0x47d481,'theUserIsConnect':_0x1a7976};return _0x4db0e1;}_0x3295b8['on'](_0x5741b1(0xeb),async({userEmail:_0x1c9500,toUserEmail:_0x265a9d,message:_0x271558})=>{const _0x2e3e25=_0x5741b1,_0x5cbf04=await _0x450c23(_0x265a9d);_0x5cbf04[_0x2e3e25(0x154)]?await chat[_0x2e3e25(0x153)](_0x1c9500,_0x265a9d,_0x271558)?(_0x5cbf04[_0x2e3e25(0xf7)]&&io['to'](recipientSocketId)[_0x2e3e25(0x10a)](_0x2e3e25(0x137),{'userId':userId,'message':_0x271558}),_0x3295b8[_0x2e3e25(0x10a)](_0x2e3e25(0xff),{'success':!![],'message':_0x2e3e25(0xb3)})):_0x3295b8['emit']('messageStatus',{'success':![],'message':'No\x20pudimos\x20enviar\x20el\x20mensaje\x20al\x20usuario\x20\x27'+_0x265a9d+_0x2e3e25(0x108)}):_0x3295b8['emit'](_0x2e3e25(0xff),{'success':![],'message':_0x2e3e25(0xf5)+_0x265a9d+_0x2e3e25(0x103)});}),_0x3295b8['on'](_0x5741b1(0xe9),async({userEmail:_0x8cd97d})=>{const _0x48f2c4=_0x5741b1,_0x599853=await chat[_0x48f2c4(0xc4)](_0x8cd97d,0xa);io['to'](recipientSocketId)[_0x48f2c4(0x10a)](_0x48f2c4(0x124),{'notifications':_0x599853});}),_0x3295b8['on'](_0x5741b1(0xac),async({userId:_0x170d48,toUserId:_0x4802a8,message:_0x1fb5c8})=>{const _0x160fca=_0x5741b1,_0x381b56=users[_0x4802a8];let _0x414b28=_0x381b56;!_0x381b56&&(_0x414b28=await chat[_0x160fca(0xe1)](_0x4802a8));if(_0x414b28){const _0x13658c=await chat['create_new_chat'](_0x170d48,_0x4802a8);await chat[_0x160fca(0xbe)](_0x13658c,_0x170d48,_0x1fb5c8)&&(_0x381b56&&io['to'](_0x381b56)[_0x160fca(0x10a)]('privateMessage',{'userId':_0x170d48,'message':_0x1fb5c8})),_0x3295b8[_0x160fca(0x10a)](_0x160fca(0xff),{'success':!![],'message':_0x160fca(0x101)});}else _0x3295b8['emit']('messageStatus',{'success':![],'message':'Este\x20email\x20\x27'+_0x4802a8+'\x27\x20no\x20existe\x20🤔'});}),_0x3295b8['on'](_0x5741b1(0x9b),()=>{const _0x9b4059=_0x5741b1,{companyId:_0x4fc599}=_0x3295b8;_0x4fc599&&connectedEmployees[_0x4fc599]?(connectedEmployees[_0x4fc599]=connectedEmployees[_0x4fc599][_0x9b4059(0xc6)](_0x2ba597=>_0x2ba597[_0x9b4059(0xba)]!==_0x3295b8['id']),connectedEmployees[_0x4fc599][_0x9b4059(0x115)]===0x0&&delete connectedEmployees[_0x4fc599]):console[_0x9b4059(0x109)](_0x9b4059(0x102)+_0x3295b8['id']+_0x9b4059(0xd4));}),_0x3295b8['on']('sendNotification',_0x10f198=>{const _0x390278=_0x5741b1;console[_0x390278(0x109)](_0x390278(0x106),_0x10f198),_0x3295b8[_0x390278(0x132)][_0x390278(0x10a)]('newNotification',_0x10f198);});});const companyName=_0xce888(0xc2);serverExpress['use'](require(_0xce888(0x13e))),serverExpress[_0xce888(0x13d)](require('./router/authentication')),serverExpress[_0xce888(0x13d)](companyName,require(_0xce888(0x10d))),serverExpress[_0xce888(0x13d)](companyName,require(_0xce888(0x12e))),serverExpress[_0xce888(0x13d)](companyName,require(_0xce888(0xc9))),serverExpress['use'](companyName,require('./router/links/branch')),serverExpress[_0xce888(0x13d)](companyName,require('./router/links/subscription')),serverExpress[_0xce888(0x13d)](companyName,require('./router/links/store')),serverExpress['use'](companyName,require(_0xce888(0x15a))),serverExpress[_0xce888(0x13d)](companyName,require(_0xce888(0xd9))),serverExpress['use'](companyName,require(_0xce888(0x11c))),serverExpress[_0xce888(0x13d)](companyName,require(_0xce888(0xb1))),serverExpress[_0xce888(0x13d)](companyName,require(_0xce888(0xc0))),serverExpress[_0xce888(0x13d)](companyName,require('./router/links/cashCut')),serverExpress[_0xce888(0x13d)](require(_0xce888(0xc8))),serverExpress[_0xce888(0x13d)](express[_0xce888(0xfc)](path[_0xce888(0xaf)](__dirname,_0xce888(0xdc))));const os=require('os');function getLocalIP(){const _0x323d2a=_0xce888,_0x350412=os['networkInterfaces']();for(let _0x39a1bf in _0x350412){for(let _0x374f79=0x0;_0x374f79<_0x350412[_0x39a1bf][_0x323d2a(0x115)];_0x374f79++){const _0x5a60a9=_0x350412[_0x39a1bf][_0x374f79];if(_0x5a60a9[_0x323d2a(0xc7)]===_0x323d2a(0x11f)&&!_0x5a60a9[_0x323d2a(0x117)])return _0x5a60a9[_0x323d2a(0xf3)];}}return _0x323d2a(0xa4);}const mysql=require(_0xce888(0xe3)),{promisify}=require(_0xce888(0x13a)),pool=mysql[_0xce888(0x9e)]({'host':'193.203.166.165','user':_0xce888(0xce),'password':_0xce888(0xbf),'database':_0xce888(0xce),'waitForConnections':!![],'connectionLimit':0xa,'queueLimit':0x0});pool[_0xce888(0x165)]((_0x3f7973,_0x508c09)=>{const _0x2d7d0d=_0xce888;_0x3f7973&&(_0x3f7973[_0x2d7d0d(0xbb)]===_0x2d7d0d(0x100)&&console[_0x2d7d0d(0xea)](_0x2d7d0d(0xda)),_0x3f7973[_0x2d7d0d(0xbb)]==='ER_CON_COUNT_ERROR'&&console[_0x2d7d0d(0xea)](_0x2d7d0d(0xe2)),_0x3f7973[_0x2d7d0d(0xbb)]==='ECONNREFUSED'&&console[_0x2d7d0d(0xea)]('La\x20conexión\x20a\x20la\x20base\x20de\x20datos\x20fue\x20rechazada.'));_0x508c09&&(_0x508c09[_0x2d7d0d(0x12f)](),console['log'](_0x2d7d0d(0xf0)));return;}),pool['query']=promisify(pool[_0xce888(0xb0)]);let mainWindow,activationWindow,loginWindow;const createMainWindow=()=>{const _0x45f9b3=_0xce888;mainWindow=new BrowserWindow({'width':0x320,'height':0x258}),mainWindow[_0x45f9b3(0x161)](),mainWindow['loadURL'](_0x45f9b3(0x10c)+serverExpress[_0x45f9b3(0x135)]('port'));},createMainWindowRegister=()=>{const _0x5b0d94=_0xce888;loginWindow=new BrowserWindow({'width':0x320,'height':0x258,'parent':mainWindow,'webPreferences':{'preload':path[_0x5b0d94(0xaf)](__dirname,_0x5b0d94(0xfb)),'nodeIntegration':!![],'contextIsolation':![]}}),loginWindow[_0x5b0d94(0x161)](),loginWindow[_0x5b0d94(0xae)](path[_0x5b0d94(0xaf)](__dirname,_0x5b0d94(0x15f)));},{machineIdSync}=require(_0xce888(0xd1)),deviceId=machineIdSync();ipcMain['on'](_0xce888(0x163),async(_0x5925b8,_0x36d189)=>{const _0x1bb198=_0xce888,_0x294f1f=_0x36d189[_0x1bb198(0x15b)],_0x12afb0=await see_if_exist_this_token_in_the_database_of_the_web(_0x294f1f);if(_0x12afb0['token']){let _0x3c56e6=!![];_0x12afb0[_0x1bb198(0x13f)]&&(_0x12afb0['uuid']!==deviceId&&(_0x12afb0[_0x1bb198(0x107)]=_0x1bb198(0xf9),_0x3c56e6=![])),_0x3c56e6&&(await save_the_uui_of_the_user_in_the_database(_0x294f1f,deviceId)&&(await initialize_token(_0x294f1f),await create_expiration_date_of_the_token(_0x12afb0['activation_date']),_0x12afb0[_0x1bb198(0x107)]=_0x1bb198(0xb7)));}_0x5925b8[_0x1bb198(0xa7)](_0x1bb198(0xe4),_0x12afb0['message']);}),ipcMain['on'](_0xce888(0xb5),async(_0x41fdff,_0x1d001c)=>{const _0x4fe2a7=_0xce888,_0x592022=_0x1d001c['username'],_0x56cea8=_0x1d001c[_0x4fe2a7(0xf1)],_0x3dc9a8=await see_if_exist_this_user_in_the_database_of_the_web(_0x592022,_0x56cea8);if(_0x3dc9a8['token']){if(_0x3dc9a8['uuid']&&_0x3dc9a8[_0x4fe2a7(0x13f)]!==deviceId)_0x3dc9a8[_0x4fe2a7(0x107)]=_0x4fe2a7(0xf9);else{if(await save_the_uui_of_the_user_in_the_database(_0x592022,deviceId)){}}}_0x41fdff[_0x4fe2a7(0xa7)](_0x4fe2a7(0x147),_0x3dc9a8[_0x4fe2a7(0x107)]);});const bcrypt=require(_0xce888(0x151));async function see_if_exist_this_user_in_the_database_of_the_web(_0x34cf17,_0x58c72f){const _0x3bd5ec=_0xce888,_0x5ed757=_0x3bd5ec(0x116);try{const _0x8b5676=await pool['query'](_0x5ed757,[_0x34cf17]);if(_0x8b5676['length']===0x0)return{'token':null,'message':'Usuario\x20no\x20encontrado.'};const _0x2a5f26=_0x8b5676[0x0],_0x34b162=await bcrypt['compare'](_0x58c72f,_0x2a5f26['hashedPassword']);if(!_0x34b162)return{'token':null,'message':'Contraseña\x20incorrecta.'};const _0x5ef0f=new Date();_0x5ef0f[_0x3bd5ec(0xa9)](_0x5ef0f['getFullYear']()-0x1);if(new Date(_0x2a5f26[_0x3bd5ec(0x118)])<_0x5ef0f)return{'token':null,'message':'Suscripción\x20expirada.\x20Por\x20favor,\x20vuelve\x20a\x20activar\x20tu\x20membresía.'};return console[_0x3bd5ec(0x109)](_0x3bd5ec(0x15c)),{'token':_0x2a5f26['token'],'type_membresy':_0x2a5f26['type_membresy'],'message':_0x3bd5ec(0x15c)};}catch(_0x34a237){return console[_0x3bd5ec(0xea)](_0x3bd5ec(0xad),_0x34a237),{'token':null};}}async function see_if_exist_this_token_in_the_database_of_the_web(_0x39ea68){const _0x206745=_0xce888,_0x454913=_0x206745(0xb2);try{const _0x90ad40=await pool['query'](_0x454913,[_0x39ea68]);if(_0x90ad40[_0x206745(0x115)]===0x0)return{'token':null,'message':_0x206745(0x134)};const _0x3ebbcb=_0x90ad40[0x0],_0x5307b7=new Date();_0x5307b7[_0x206745(0xa9)](_0x5307b7[_0x206745(0xb4)]()-0x1);if(_0x3ebbcb[_0x206745(0x118)]!='0000-00-00'&&new Date(_0x3ebbcb[_0x206745(0x118)])<_0x5307b7)return{'token':null,'message':'Suscripción\x20expirada.\x20Por\x20favor,\x20vuelve\x20a\x20activar\x20tu\x20membresía.'};if(_0x3ebbcb['activation_date']==='0000-00-00'){const _0x5ee815=new Date();_0x5ee815[_0x206745(0xa9)](_0x5ee815[_0x206745(0xb4)]()+0x1);const _0x2d6e60=_0x206745(0x104);await pool[_0x206745(0xb0)](_0x2d6e60,[_0x5ee815['toISOString']()['split']('T')[0x0],_0x3ebbcb['token']]),_0x3ebbcb[_0x206745(0x118)]=_0x5ee815;}return console[_0x206745(0x109)](_0x206745(0x15c)),{'token':!![],'type_membresy':_0x3ebbcb['type_membresy'],'uuid':_0x3ebbcb[_0x206745(0xa8)],'activation_date':_0x3ebbcb['activation_date'],'message':_0x206745(0x15c)};}catch(_0x397e63){return console[_0x206745(0xea)]('Error\x20al\x20verificar\x20usuario:',_0x397e63),{'token':null};}}async function save_the_uui_of_the_user_in_the_database(_0x54746a,_0x4a32eb){const _0x85319e=_0xce888,_0x113835='\x0a\x20\x20\x20\x20\x20\x20\x20\x20UPDATE\x20pagos\x20\x0a\x20\x20\x20\x20\x20\x20\x20\x20SET\x20device_id\x20=\x20?\x20,\x20active\x20=\x20false\x0a\x20\x20\x20\x20\x20\x20\x20\x20WHERE\x20token\x20=\x20?\x0a\x20\x20\x20\x20';try{const _0x20cd89=await pool['query'](_0x113835,[_0x4a32eb,_0x54746a]);return!![];}catch(_0x257a57){return console[_0x85319e(0xea)](_0x85319e(0x15e),_0x257a57),![];}}async function verificarTokenActivo(){const _0x48ddfc=_0xce888,_0x2c8704=_0x48ddfc(0xd7);try{const _0x38c787=await pool['query'](_0x2c8704,[TOKEN]);return console['log'](_0x38c787[0x0]),_0x38c787[0x0][_0x48ddfc(0xe5)]===0x1?(console[_0x48ddfc(0x109)]('Token\x20encontrado\x20y\x20activo.'),!![]):(console[_0x48ddfc(0x109)](_0x48ddfc(0x130)),![]);}catch(_0x5db7f2){return console[_0x48ddfc(0xea)](_0x48ddfc(0x144),_0x5db7f2),![];}}async function actualizarToken(){const _0xfc419d=_0xce888,_0x577436=_0xfc419d(0xdb);await pool[_0xfc419d(0xb0)](_0x577436,[TOKEN]);}app['on'](_0xce888(0x10b),async()=>{const _0x2cc4f3=_0xce888;await check_if_exist_updates();if(thiIsADemo){await initialize_demo();if(await is_demo_expired()){dialog[_0x2cc4f3(0x14b)]({'type':_0x2cc4f3(0x162),'title':'Demo\x20Expirada','message':_0x2cc4f3(0xb6)}),app[_0x2cc4f3(0xa6)]();return;}}else await verify_membership_of_user()?(serverExpress[_0x2cc4f3(0xa0)](serverExpress['get']('port'),'0.0.0.0',()=>{const _0x2ab0ec=_0x2cc4f3;console['log']('Server\x20running\x20on\x20http://'+getLocalIP()+':'+serverExpress['get'](_0x2ab0ec(0xcd)));}),createMainWindow()):createMainWindowRegister();}),app['on'](_0xce888(0x12c),()=>{const _0x2b7099=_0xce888;process[_0x2b7099(0x123)]!==_0x2b7099(0xd3)&&app['quit']();});