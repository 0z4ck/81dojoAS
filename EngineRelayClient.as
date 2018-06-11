package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.Socket;
   
   public final class EngineRelayClient extends EventDispatcher
   {
       
      
      private var _socket:Socket;
      
      private var _host:String = "127.0.0.1";
      
      private var _port:int = 3081;
      
      private var _clientPass:String = "";
      
      private var _position:Kyokumen;
      
      private var _mate:Boolean;
      
      private var _go:Boolean = false;
      
      public function EngineRelayClient()
      {
         this._socket = new Socket();
         super();
      }
      
      public function sendPosition(param1:Kyokumen, param2:Boolean = false) : void
      {
         this._position = param1;
         this._mate = param2;
         if(this._socket.connected)
         {
            this._setStartPosition();
         }
         else
         {
            this.connect();
         }
      }
      
      private function _setStartPosition() : void
      {
         this._send("position sfen " + this._position.toSFEN() + " moves");
         if(this._mate)
         {
            this._send("go mate 10000");
            dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("Searching for mate...","詰みチェック中...")));
         }
         else
         {
            this._send("go byoyomi 30000");
            dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("Starting analysis...","解析開始...")));
         }
         this._go = true;
      }
      
      public function connect() : void
      {
         this._socket.addEventListener(Event.CONNECT,this._handleConnect);
         this._socket.addEventListener(Event.CLOSE,this._handleClose);
         this._socket.addEventListener(ProgressEvent.SOCKET_DATA,this._handleSocketData);
         this._socket.addEventListener(IOErrorEvent.IO_ERROR,this._handleIOError);
         this._socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._handleSecurityError);
         this._socket.connect(this._host,this._port);
      }
      
      public function disconnect() : void
      {
         if(!this._socket.connected)
         {
            return;
         }
         this._go = false;
         this._socket.close();
         this._socket.removeEventListener(Event.CONNECT,this._handleConnect);
         this._socket.removeEventListener(Event.CLOSE,this._handleClose);
         this._socket.removeEventListener(ProgressEvent.SOCKET_DATA,this._handleSocketData);
         this._socket.removeEventListener(IOErrorEvent.IO_ERROR,this._handleIOError);
         this._socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._handleSecurityError);
      }
      
      public function _send(param1:String) : void
      {
         this._socket.writeUTFBytes(param1 + "\n");
         this._socket.flush();
      }
      
      private function _handleConnect(param1:Event) : void
      {
         this._setStartPosition();
      }
      
      private function _handleClose(param1:Event) : void
      {
         this._socket.removeEventListener(Event.CONNECT,this._handleConnect);
         this._socket.removeEventListener(Event.CLOSE,this._handleClose);
         this._socket.removeEventListener(ProgressEvent.SOCKET_DATA,this._handleSocketData);
         this._socket.removeEventListener(IOErrorEvent.IO_ERROR,this._handleIOError);
         this._socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._handleSecurityError);
         if(this._go)
         {
            dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("Connecction with engine is lost.","エンジンとの通信が切れました。")));
         }
      }
      
      private function _handleSocketData(param1:ProgressEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Kyokumen = null;
         var _loc7_:* = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:Movement = null;
         var _loc2_:String = param1.target.readUTFBytes(param1.target.bytesAvailable);
         for each(_loc3_ in _loc2_.split("\n"))
         {
            _loc5_ = [];
            if(_loc4_ = _loc3_.match(/^info.*\sdepth\s(\d+).+score\scp\s(\-?\d+).+pv\s(.+)$/))
            {
               if(!(this._mate || parseInt(_loc4_[1]) < 8))
               {
                  _loc6_ = new Kyokumen(this._position.toString());
                  _loc7_ = LanguageSelector.EJ("[CP: ","[評価値: ") + (1 - 2 * _loc6_.turn) * parseInt(_loc4_[2]) + LanguageSelector.EJ(" (Depth: "," (探索深さ: ") + _loc4_[1] + ")] ";
                  _loc8_ = _loc4_[3].split(" ");
                  for each(_loc9_ in _loc8_)
                  {
                     if(_loc9_.length >= 4)
                     {
                        _loc10_ = this._generateMovementFromUSI(_loc6_,_loc9_);
                        _loc10_.n = 1;
                        _loc7_ = _loc7_ + (" " + _loc10_.toMoveString);
                        _loc6_.move(_loc10_);
                     }
                  }
                  dispatchEvent(new ServerMessageEvent("engine",_loc7_));
               }
            }
            else if(_loc4_ = _loc3_.match(/^bestmove\s(.+)$/))
            {
               if(_loc4_[1] == "resign")
               {
                  dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("[Best move] Not available.","[最善手] 手がありません")));
               }
               else
               {
                  _loc10_ = this._generateMovementFromUSI(this._position,_loc4_[1]);
                  _loc10_.n = 1;
                  dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("[Best move] ","[最善手] ") + _loc10_.toMoveString));
                  this.stop();
               }
            }
            else if(_loc4_ = _loc3_.match(/^checkmate\s(.+)$/))
            {
               this.stop();
               if(_loc4_[1] == "nomate")
               {
                  dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("No mate","詰みません")));
               }
               else if(_loc4_[1] == "timeout")
               {
                  dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("Mate was not found within time limit","時間内に詰みませんでした")));
               }
               else
               {
                  _loc6_ = new Kyokumen(this._position.toString());
                  _loc7_ = LanguageSelector.EJ("Mate found: ","詰みが有ります: ");
                  _loc8_ = _loc4_[1].split(" ");
                  for each(_loc9_ in _loc8_)
                  {
                     if(_loc9_.length >= 4)
                     {
                        _loc10_ = this._generateMovementFromUSI(_loc6_,_loc9_);
                        _loc10_.n = 1;
                        _loc7_ = _loc7_ + (" " + _loc10_.toMoveString);
                        _loc6_.move(_loc10_);
                     }
                  }
                  dispatchEvent(new ServerMessageEvent("engine",_loc7_));
               }
            }
         }
      }
      
      private function _generateMovementFromUSI(param1:Kyokumen, param2:String) : Movement
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         if(param2.substr(1,1) == "*")
         {
            _loc3_ = new Point(Kyokumen.HAND + ["","r","b","g","s","n","l","p"].indexOf(param2.substr(0,1).toLowerCase()),0);
         }
         else
         {
            _loc3_ = new Point(parseInt(param2.substr(0,1)),["","a","b","c","d","e","f","g","h","i"].indexOf(param2.substr(1,1)));
         }
         _loc4_ = new Point(parseInt(param2.substr(2,1)),["","a","b","c","d","e","f","g","h","i"].indexOf(param2.substr(3,1)));
         return param1.generateMovementFromCoordinates(_loc3_,_loc4_,param2.length == 5);
      }
      
      public function stop() : void
      {
         if(!this._socket.connected || !this._go)
         {
            return;
         }
         this._send("stop");
         this._send("position startpos moves");
         this._go = false;
      }
      
      private function _handleIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("Relay program is not found. Launch 81dojo2engine first.","エンジンとの通信が確立できません。81dojo2engineを先に起動して下さい。")));
      }
      
      private function _handleSecurityError(param1:SecurityErrorEvent) : void
      {
         dispatchEvent(new ServerMessageEvent("engine",LanguageSelector.EJ("Relay program is not found. Launch 81dojo2engine first.","エンジンとの通信が確立できません。81dojo2engineを先に起動して下さい。")));
      }
   }
}
