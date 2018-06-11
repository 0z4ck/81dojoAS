package
{
   import com.hurlant.crypto.Crypto;
   import com.hurlant.crypto.hash.IHash;
   import com.hurlant.util.Hex;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import mx.controls.Alert;
   
   public final class CsaShogiClient extends EventDispatcher
   {
      
      public static var CONNECTED:String = "connected";
      
      public static var LOGIN:String = "login";
      
      public static var LOGIN_FAILED:String = "login_failed";
      
      public static var LOGOUT_COMPLETED:String = "logout_completed";
      
      public static var GAME_STARTED:String = "game_started";
      
      public static var GAME_END:String = "game_end";
      
      public static var SERVER_MESSAGE:String = "receive_message";
      
      public static var SERVER_DISCONNECT:String = "server_disconnect";
      
      public static var MOVE:String = "move";
      
      public static var CHAT:String = "chat";
      
      public static var GAMECHAT:String = "gamechat";
      
      public static var PRIVATECHAT:String = "privatechat";
      
      public static var OFFLINE_PM:String = "offline_pm";
      
      public static var WHO:String = "who";
      
      public static var MONITOR:String = "monitor";
      
      public static var RECONNECT:String = "reconnect";
      
      public static var START_WATCH:String = "start_watch";
      
      public static var LIST:String = "list";
      
      public static var GAME_SUMMARY:String = "game_summary";
      
      public static var REJECT:String = "reject";
      
      public static var WATCHERS:String = "watchers";
      
      public static var ENTER:String = "enter";
      
      public static var LEAVE:String = "leave";
      
      public static var DISCONNECT:String = "disconnect";
      
      public static var CHALLENGE:String = "challenge";
      
      public static var ACCEPT:String = "accept";
      
      public static var DECLINE:String = "decline";
      
      public static var LOBBY_IN:String = "lobby_in";
      
      public static var LOBBY_OUT:String = "lobby_out";
      
      public static var GAME:String = "game";
      
      public static var START:String = "start";
      
      public static var RESULT:String = "result";
      
      public static var SETRATE:String = "setrate";
      
      public static var MILE:String = "mile";
      
      public static var EXP:String = "exp";
      
      public static var ADMIN_MONITOR:String = "admin_monitor";
      
      public static var ERROR:String = "error";
      
      public static var STATE_CONNECTED:int = 0;
      
      public static var STATE_GAME_WAITING:int = 1;
      
      public static var STATE_AGREE_WAITING:int = 2;
      
      public static var STATE_START_WAITING:int = 3;
      
      public static var STATE_GAME:int = 4;
      
      public static var STATE_FINISHED:int = 5;
      
      public static var STATE_NOT_CONNECTED:int = 6;
       
      
      private var _socket:Socket;
      
      private var _host:String = "81dojo.com";
      
      private var _port:int = 4081;
      
      private var _clientPass:String = "";
      
      private var _isAdmin:Boolean = false;
      
      private var _current_state:int;
      
      private var _my_turn:int;
      
      private var _player_names:Array;
      
      private var _login_name:String;
      
      private var _waiting_gamename:String;
      
      private var _idle:Boolean = false;
      
      private var _sentMileDiff:int;
      
      private var _isGuest:Boolean;
      
      private var _buffer:String;
      
      private var _buffers:Object;
      
      private var _reading_game_summary_flag:Boolean;
      
      public function CsaShogiClient()
      {
         var _loc1_:String = null;
         super();
         this._current_state = STATE_NOT_CONNECTED;
         this._player_names = new Array(2);
         this._buffer = "";
         this._buffers = new Object();
         for each(_loc1_ in [WHO,LIST,MONITOR,RECONNECT,GAME_END,GAME_SUMMARY,WATCHERS,OFFLINE_PM])
         {
            this._buffers[_loc1_] = "";
         }
      }
      
      public static function generateMD5Hex(param1:String) : String
      {
         var _loc2_:ByteArray = Hex.toArray(Hex.fromString(param1));
         var _loc3_:IHash = Crypto.getHash("md5");
         return Hex.fromArray(_loc3_.hash(_loc2_));
      }
      
      public function connect() : void
      {
         Security.loadPolicyFile("xmlsocket://" + this._host + ":" + this._port);
         this._socket = new Socket();
         this._socket.addEventListener(Event.CONNECT,this._handleConnect);
         this._socket.addEventListener(Event.CLOSE,this._handleClose);
         this._socket.addEventListener(ProgressEvent.SOCKET_DATA,this._handleSocketData);
         this._socket.addEventListener(IOErrorEvent.IO_ERROR,this._handleIOError);
         this._socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._handleSecurityError);
         this._socket.connect(this._host,this._port);
      }
      
      public function close() : void
      {
         this._socket.close();
         this._socket.removeEventListener(Event.CONNECT,this._handleConnect);
         this._socket.removeEventListener(Event.CLOSE,this._handleClose);
         this._socket.removeEventListener(ProgressEvent.SOCKET_DATA,this._handleSocketData);
         this._socket.removeEventListener(IOErrorEvent.IO_ERROR,this._handleIOError);
         this._socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._handleSecurityError);
      }
      
      public function send(param1:String) : void
      {
         this._socket.writeUTFBytes(param1 + "\n");
         this._socket.flush();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"----- SENT> " + param1 + "\n"));
         }
      }
      
      public function login(param1:String, param2:String) : void
      {
         this._login_name = param1;
         this.send("LOGIN  " + param1 + " " + param2 + " x2 " + this._clientPass);
      }
      
      public function logout() : void
      {
         this.send("LOGOUT");
      }
      
      public function waitForGame(param1:int = 1500, param2:int = 30, param3:String = "r", param4:String = "", param5:int = 0, param6:String = "", param7:String = "") : void
      {
         this._current_state = STATE_GAME_WAITING;
         if(param7 != "")
         {
            param7 = "." + generateMD5Hex(Config.PRIVATE_ROOM_SALT + param7).substr(0,6);
         }
         if(param5 > 0)
         {
            this._waiting_gamename = param3 + "_" + this._login_name + param7 + param4 + "-" + param1.toString() + "-" + param2.toString() + (param6 == ""?"":"," + param6) + " +";
         }
         else if(param5 < 0)
         {
            this._waiting_gamename = param3 + "_" + this._login_name + param7 + param4 + "-" + param1.toString() + "-" + param2.toString() + (param6 == ""?"":"," + param6) + " -";
         }
         else if(Math.round(Math.random()) == 1)
         {
            this._waiting_gamename = param3 + "_" + this._login_name + param7 + param4 + "-" + param1.toString() + "-" + param2.toString() + (param6 == ""?"":"," + param6) + " +";
         }
         else
         {
            this._waiting_gamename = param3 + "_" + this._login_name + param7 + param4 + "-" + param1.toString() + "-" + param2.toString() + (param6 == ""?"":"," + param6) + " -";
         }
         this.send("%%GAME " + this._waiting_gamename);
      }
      
      public function stopWaiting() : void
      {
         if(this._current_state == STATE_GAME_WAITING)
         {
            this._current_state = STATE_CONNECTED;
            this.send("%%GAME");
         }
      }
      
      public function study(param1:String, param2:String, param3:String, param4:String, param5:String = "") : void
      {
         this.send("%%%STUDY " + param1 + " " + param2 + " " + param3 + " " + param4 + " " + param5);
      }
      
      public function resetStudyPosition(param1:String) : void
      {
         if(this._current_state == STATE_CONNECTED)
         {
            this.send("%%%POSITION " + param1);
         }
      }
      
      public function accept() : void
      {
         this.send("ACCEPT");
      }
      
      public function decline(param1:String = null) : void
      {
         this.send("DECLINE" + (!!param1?" " + param1:""));
      }
      
      public function challenge(param1:String) : void
      {
         this.send("%%CHALLENGE " + param1);
      }
      
      public function seek(param1:Object) : void
      {
         if(param1.game_name)
         {
            if(param1.turn == "+")
            {
               this.send("%%SEEK " + param1.game_name + " -");
            }
            else if(param1.turn == "-")
            {
               this.send("%%SEEK " + param1.game_name + " +");
            }
            else
            {
               this.send("%%SEEK " + param1.game_name + " *");
            }
         }
      }
      
      public function rematch(param1:String, param2:int) : void
      {
         this._current_state = STATE_GAME_WAITING;
         var _loc3_:Array = param1.match(/^([0-9a-z]+?)_(.*)$/);
         if(_loc3_[0].match(/^hc/))
         {
            this.send("%%GAME " + _loc3_[1] + "_@" + _loc3_[2] + (param2 == Kyokumen.SENTE?" +":" -"));
         }
         else
         {
            this.send("%%GAME " + _loc3_[1] + "_@" + _loc3_[2] + (param2 == Kyokumen.SENTE?" -":" +"));
         }
      }
      
      public function agree() : void
      {
         this.send("AGREE");
      }
      
      public function reject() : void
      {
         this.send("REJECT");
      }
      
      public function closeGame() : void
      {
         this.send("CLOSE");
      }
      
      public function move(param1:String) : void
      {
         this.send(param1);
      }
      
      public function resign() : void
      {
         this.send("%TORYO");
      }
      
      public function kachi() : void
      {
         this.send("%KACHI");
      }
      
      public function declare() : void
      {
         this.send("%%%DECLARE");
      }
      
      public function who() : void
      {
         this.send("%%WHO");
      }
      
      public function chat(param1:String) : void
      {
         this.send("%%CHAT " + param1);
      }
      
      public function privateChat(param1:String, param2:String) : void
      {
         this.send("%%PRIVATECHAT " + param1 + " " + param2);
      }
      
      public function gameChat(param1:String, param2:String) : void
      {
         this.send("%%GAMECHAT : " + param2);
      }
      
      public function checkTimeout() : void
      {
         this.send("%%%TIMEOUT");
      }
      
      public function monitorOn(param1:String) : void
      {
         this.send("%%MONITOR2ON " + param1);
      }
      
      public function monitorOff(param1:String) : void
      {
         this.send("%%MONITOR2OFF " + param1);
      }
      
      public function reconnect(param1:String) : void
      {
         this.send("%%RECONNECT " + param1);
      }
      
      public function list() : void
      {
         this.send("%%LIST");
      }
      
      public function refresh(param1:Boolean) : void
      {
         this.who();
         if(param1)
         {
            this.list();
         }
      }
      
      public function setRate(param1:int) : void
      {
         if(this._current_state == STATE_CONNECTED)
         {
            this.send("%%SETRATE " + param1);
         }
         else
         {
            Alert.show(LanguageSelector.EJ("You cannot set rate while playing or waiting for a game.","対局中や対局待の状態ではレート更新を行えません。"),LanguageSelector.lan.error);
         }
      }
      
      public function keepAlive() : void
      {
         this.send("\n");
      }
      
      public function idle(param1:Boolean) : void
      {
         if(this._idle != param1)
         {
            this._idle = param1;
            this.send("%%IDLE " + (!!param1?1:0));
         }
      }
      
      public function watchers(param1:String) : void
      {
         this.send("%%%WATCHERS " + param1);
      }
      
      public function mileage(param1:int) : void
      {
         if(this._isGuest)
         {
            return;
         }
         var _loc2_:Date = new Date();
         if(_loc2_.month == 7 && _loc2_.date == 1 && param1 > 0)
         {
            param1 = 2 * param1;
         }
         this._sentMileDiff = param1;
         this.send("%%MILE " + Config.MILE_KEY + " " + param1);
      }
      
      private function _handleConnect(param1:Event) : void
      {
         if(InfoFetcher.socketNeedsHandshake)
         {
            this.send("%%HANDSHAKE");
         }
      }
      
      private function _handleClose(param1:Event) : void
      {
         this._socket.removeEventListener(Event.CONNECT,this._handleConnect);
         this._socket.removeEventListener(Event.CLOSE,this._handleClose);
         this._socket.removeEventListener(ProgressEvent.SOCKET_DATA,this._handleSocketData);
         this._socket.removeEventListener(IOErrorEvent.IO_ERROR,this._handleIOError);
         this._socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._handleSecurityError);
         if(this._current_state != STATE_NOT_CONNECTED)
         {
            dispatchEvent(new Event(CsaShogiClient.SERVER_DISCONNECT));
         }
      }
      
      private function _handleSocketData(param1:ProgressEvent) : void
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc2_:String = param1.target.readUTFBytes(param1.target.bytesAvailable);
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,_loc2_));
         }
         this._buffer = this._buffer + _loc2_;
         var _loc3_:Array = this._buffer.split("\n");
         if(this._buffer.match(/(##\[MONITOR2\]|##\[LIST\]|##\[WHO\]|##\[RECONNECT\])/))
         {
            if(!this._buffer.match(/(\+OK$|##\[GAME\].+$|##\[LOBBY_(IN|OUT)\].+$|##\[ENTER\].+$|##\[LEAVE\].+$|##\[START\].+$|##\[CHAT\].+$|##\[GAMECHAT\].+$|##\[PRIVATECHAT\].+$|START\:.+$|[-+][0-9]{4}[A-Z]{2},T\d+$|Game_Summary$)/))
            {
               return;
            }
         }
         for each(_loc5_ in _loc3_)
         {
            if(this._reading_game_summary_flag)
            {
               if(_loc4_ = _loc5_.match(/^Your_Turn\:([+-])/))
               {
                  this._my_turn = _loc4_[1] == "+"?int(Kyokumen.SENTE):int(Kyokumen.GOTE);
               }
               else if(_loc4_ = _loc5_.match(/^Name\+\:(.*)/))
               {
                  this._player_names[0] = _loc4_[1];
                  this._buffer_response(GAME_SUMMARY,_loc4_[1]);
               }
               else if(_loc4_ = _loc5_.match(/^Name\-\:(.*)/))
               {
                  this._player_names[1] = _loc4_[1];
                  this._buffer_response(GAME_SUMMARY,_loc4_[1]);
               }
               else if(_loc4_ = _loc5_.match(/^To_Move\:([+-])/))
               {
                  this._buffer_response(GAME_SUMMARY,"P0" + _loc4_[1]);
               }
               else if(_loc5_.match(/^P[0-9\+\-]/))
               {
                  this._buffer_response(GAME_SUMMARY,_loc5_);
               }
               else if(_loc5_ == "END Game_Summary")
               {
                  this._current_state = STATE_AGREE_WAITING;
                  this._reading_game_summary_flag = false;
                  this._dispatchServerMessageEvent(GAME_SUMMARY);
               }
            }
            if(_loc5_.match(/^##\[GAMECHAT\]/))
            {
               dispatchEvent(new ServerMessageEvent(GAMECHAT,_loc5_ + "\n"));
               continue;
            }
            if(_loc5_.match(/^##\[PRIVATECHAT\]/))
            {
               dispatchEvent(new ServerMessageEvent(PRIVATECHAT,_loc5_ + "\n"));
               continue;
            }
            if(_loc5_.match(/^##\[CHAT\]/))
            {
               dispatchEvent(new ServerMessageEvent(CHAT,_loc5_ + "\n"));
               continue;
            }
            if(_loc5_.match(/^([-+][0-9]{4}[A-Z]{2}|%TORYO),T/))
            {
               dispatchEvent(new ServerMessageEvent(MOVE,_loc5_));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[ERROR\](.*)$/))
            {
               dispatchEvent(new ServerMessageEvent(ERROR,_loc4_[1]));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[MILE\](.+)$/))
            {
               dispatchEvent(new ServerMessageEvent(MILE,_loc4_[1] + "," + this._sentMileDiff));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[EXP\](.+)$/))
            {
               dispatchEvent(new ServerMessageEvent(EXP,_loc4_[1]));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[LOBBY_IN\](.*)$/))
            {
               dispatchEvent(new ServerMessageEvent(LOBBY_IN,_loc4_[1]));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[LOBBY_OUT\]\[(.*)\]$/))
            {
               dispatchEvent(new ServerMessageEvent(LOBBY_OUT,_loc4_[1]));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[ENTER\]\[(.+)\]$/))
            {
               dispatchEvent(new ServerMessageEvent(ENTER,_loc4_[1]));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[LEAVE\]\[(.+)\]/))
            {
               dispatchEvent(new ServerMessageEvent(LEAVE,_loc4_[1]));
               continue;
            }
            if(_loc4_ = _loc5_.match(/^##\[DISCONNECT\]\[(.+)\]/))
            {
               dispatchEvent(new ServerMessageEvent(DISCONNECT,_loc4_[1]));
               continue;
            }
            if(_loc5_.match(/^##\[WHO\]/) != null)
            {
               this._buffer_response(WHO,_loc5_);
               if(_loc5_.match(/^##\[WHO\] \+OK$/))
               {
                  this._dispatchServerMessageEvent(WHO);
               }
               continue;
            }
            if(_loc5_.match(/^##\[LIST\]/) != null)
            {
               this._buffer_response(LIST,_loc5_);
               if(_loc5_ == "##[LIST] +OK")
               {
                  this._dispatchServerMessageEvent(LIST);
               }
               continue;
            }
            if(_loc5_.match(/^##\[WATCHERS\]/) != null)
            {
               this._buffer_response(WATCHERS,_loc5_);
               if(_loc5_.match(/^##\[WATCHERS\] \+OK$/))
               {
                  this._dispatchServerMessageEvent(WATCHERS);
               }
               continue;
            }
            switch(this._current_state)
            {
               case STATE_NOT_CONNECTED:
                  if(_loc4_ = _loc5_.match(/LOGIN:(.*) OK/))
                  {
                     this._current_state = STATE_CONNECTED;
                     this._idle = false;
                     dispatchEvent(new ServerMessageEvent(LOGIN,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/LOGIN:incorrect ([A-Z]\d{3})/))
                  {
                     dispatchEvent(new ServerMessageEvent(LOGIN_FAILED,_loc4_[1]));
                  }
                  else if(_loc5_.match(/LOGIN:incorrect/))
                  {
                     dispatchEvent(new ServerMessageEvent(LOGIN_FAILED,"L003"));
                  }
                  else if(_loc4_ = _loc5_.match(/^<cross\-domain\-policy>.+salt="(\w{16})"/))
                  {
                     this._clientPass = generateMD5Hex(Config.CLIENT_PASS_JP + _loc4_[1]);
                     dispatchEvent(new Event(CONNECTED));
                  }
                  continue;
               case STATE_CONNECTED:
                  if(_loc5_ == "BEGIN Game_Summary")
                  {
                     this._reading_game_summary_flag = true;
                  }
                  if(_loc5_.match(/^##\[MONITOR2\]/))
                  {
                     this._buffer_response(MONITOR,_loc5_);
                     if(_loc5_.match(/##\[MONITOR2\]\[.*\] \+OK/))
                     {
                        this._dispatchServerMessageEvent(MONITOR);
                     }
                  }
                  else if(_loc5_.match(/^##\[RECONNECT\]/))
                  {
                     this._buffer_response(RECONNECT,_loc5_);
                     if(_loc4_ = _loc5_.match(/^##\[RECONNECT\]\[.+\]\sN\+(.+)$/))
                     {
                        this._player_names[0] = _loc4_[1];
                        if(_loc4_[1] == this._login_name)
                        {
                           this._my_turn = Kyokumen.SENTE;
                        }
                     }
                     else if(_loc4_ = _loc5_.match(/^##\[RECONNECT\]\[.+\]\sN\-(.+)$/))
                     {
                        this._player_names[1] = _loc4_[1];
                        if(_loc4_[1] == this._login_name)
                        {
                           this._my_turn = Kyokumen.GOTE;
                        }
                     }
                     else if(_loc5_.match(/##\[RECONNECT\]\[.*\] \+OK/))
                     {
                        this._current_state = STATE_GAME;
                        if(this._buffers[RECONNECT].match(/##\[RECONNECT\]\[.+\]\s#(WIN|LOSE|DRAW|RESIGN|TIME_UP|ILLEGAL_MOVE|SENNICHITE|OUTE_SENNICHITE|DISCONNECT|JISHOGI|SUSPEND|CATCH|TRY)/))
                        {
                           this._current_state = STATE_CONNECTED;
                        }
                        this._dispatchServerMessageEvent(RECONNECT);
                     }
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[GAME\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(GAME,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[START\]\[(.*)\]$/))
                  {
                     dispatchEvent(new ServerMessageEvent(START,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[ACCEPT\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(ACCEPT,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[DECLINE\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(DECLINE,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[RESULT\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(RESULT,_loc4_[1]));
                  }
                  else if(_loc5_.match(/^LOGOUT:completed/))
                  {
                     this._current_state = STATE_NOT_CONNECTED;
                     dispatchEvent(new ServerMessageEvent(LOGOUT_COMPLETED,"Logout Completed"));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[OFFLINE_PM\]/))
                  {
                     this._buffer_response(OFFLINE_PM,_loc5_);
                     if(_loc5_.match(/##\[OFFLINE_PM\] \+OK$/))
                     {
                        this._dispatchServerMessageEvent(OFFLINE_PM);
                     }
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[SETRATE\](\d+)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(SETRATE,_loc4_[1]));
                  }
                  continue;
               case STATE_GAME_WAITING:
                  if(_loc5_ == "BEGIN Game_Summary")
                  {
                     this._reading_game_summary_flag = true;
                  }
                  if(_loc5_.match(/^##\[MONITOR2\]/))
                  {
                     this._buffer_response(MONITOR,_loc5_);
                     if(_loc5_.match(/##\[MONITOR2\]\[.*\] \+OK/))
                     {
                        this._dispatchServerMessageEvent(MONITOR);
                     }
                  }
                  else if(_loc5_.match(/^LOGOUT:completed/))
                  {
                     this._current_state = STATE_NOT_CONNECTED;
                     dispatchEvent(new ServerMessageEvent(LOGOUT_COMPLETED,"Logout Completed"));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[GAME\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(GAME,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[START\]\[(.*)\]$/))
                  {
                     dispatchEvent(new ServerMessageEvent(START,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[CHALLENGE\]\[(.+)\]$/))
                  {
                     dispatchEvent(new ServerMessageEvent(CHALLENGE,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[ACCEPT\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(ACCEPT,_loc4_[1]));
                  }
                  else if(_loc4_ = _loc5_.match(/^##\[DECLINE\](.*)$/))
                  {
                     dispatchEvent(new ServerMessageEvent(DECLINE,_loc4_[1]));
                  }
                  continue;
               case STATE_AGREE_WAITING:
                  if(_loc5_.match(/^START\:/) != null)
                  {
                     this._current_state = STATE_GAME;
                     dispatchEvent(new ServerMessageEvent(GAME_STARTED,_loc5_));
                  }
                  else if(_loc5_.match(/^REJECT\:/) != null)
                  {
                     this._current_state = STATE_CONNECTED;
                     dispatchEvent(new ServerMessageEvent(REJECT,_loc5_));
                  }
                  continue;
               case STATE_START_WAITING:
                  continue;
               case STATE_GAME:
                  if(_loc4_ = _loc5_.match(/^#(WIN|LOSE|DRAW|RESIGN|TIME_UP|ILLEGAL_MOVE|SENNICHITE|OUTE_SENNICHITE|JISHOGI|DISCONNECT|CATCH|TRY)/))
                  {
                     this._buffer_response(GAME_END,_loc5_);
                     if(_loc4_[1] == "WIN" || _loc4_[1] == "LOSE" || _loc4_[1] == "DRAW")
                     {
                        this._current_state = STATE_CONNECTED;
                        this._dispatchServerMessageEvent(GAME_END);
                     }
                  }
                  continue;
               case STATE_FINISHED:
                  continue;
               default:
                  continue;
            }
         }
         this._buffer = "";
      }
      
      private function _dispatchServerMessageEvent(param1:String) : void
      {
         dispatchEvent(new ServerMessageEvent(param1,this._buffers[param1]));
         this._buffers[param1] = "";
      }
      
      private function _buffer_response(param1:String, param2:String) : void
      {
         this._buffers[param1] = this._buffers[param1] + (param2 + "\n");
      }
      
      private function _handleIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new ServerMessageEvent(LOGIN_FAILED,"L005"));
      }
      
      private function _handleSecurityError(param1:SecurityErrorEvent) : void
      {
         dispatchEvent(new ServerMessageEvent(LOGIN_FAILED,"L005"));
      }
      
      public function isConnected() : Boolean
      {
         return this._socket.connected;
      }
      
      public function get myTurn() : int
      {
         return this._my_turn;
      }
      
      public function get playerNames() : Array
      {
         return this._player_names;
      }
      
      public function get waitingGamename() : String
      {
         return this._waiting_gamename;
      }
      
      public function set login_name(param1:String) : void
      {
         this._login_name = param1;
      }
      
      public function setHostToLocal() : void
      {
         this._host = "127.0.0.1";
      }
      
      public function setServer(param1:String, param2:int) : void
      {
         this._host = param1;
         this._port = param2;
      }
      
      public function adminOn() : void
      {
         this._isAdmin = true;
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         this._isGuest = param1;
      }
   }
}
