package
{
   import flash.events.NetStatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.Microphone;
   import flash.media.SoundCodec;
   import flash.net.GroupSpecifier;
   import flash.net.NetConnection;
   import flash.net.NetGroup;
   import flash.net.NetStream;
   import flash.utils.Timer;
   import mx.collections.ArrayCollection;
   import mx.controls.Menu;
   import mx.events.MenuEvent;
   
   public final class VoiceButton extends MyButton
   {
      
      public static const MENU_DIRECT:int = 0;
      
      public static const MENU_SHARED:int = 1;
      
      public static const MENU_BROADCAST:int = 2;
      
      public static const MENU_LISTEN:int = 3;
      
      public static const MENU_OFF:int = 4;
      
      public static const VOICE_EVENT:String = "voice_event";
      
      public static const VOLUME_EVENT:String = "volume_event";
      
      public static const MAX_BROADCASTERS:int = 3;
      
      public static var icon_direct:Class = VoiceButton_icon_direct;
      
      public static var icon_shared:Class = VoiceButton_icon_shared;
      
      public static var icon_broadcast:Class = VoiceButton_icon_broadcast;
      
      public static var icon_listen:Class = VoiceButton_icon_listen;
       
      
      private var _isPlayer:Boolean;
      
      private var _postGame:Boolean;
      
      private var _sendingShared:Boolean;
      
      private var _broadcastAllowed:Boolean;
      
      private var _broadcastingSelf:Boolean;
      
      private var _postGameShared:Boolean;
      
      private var _groupListening:Boolean;
      
      private var _myName:String;
      
      private var _game_name:String;
      
      private var _menu:Menu;
      
      private var _menuCollection:ArrayCollection;
      
      private var _lastChosenItem:int;
      
      private var _isGuest:Boolean = false;
      
      private var _cirrusNetConnection:NetConnection;
      
      private var _directSendStream:NetStream;
      
      private var _groupSendStream:NetStream;
      
      private var _directReceiveStream:NetStream;
      
      private var _groupReceiveStreams:Object;
      
      private var _opponentVoiceID:String;
      
      private var _groupSpecifier:GroupSpecifier;
      
      private var _netGroup:NetGroup;
      
      private var _opponentID:String;
      
      private var _opponentName:String;
      
      private var _mic:Microphone;
      
      private var _micLevelTimer:Timer;
      
      private var _broadcasters:Array;
      
      private var _blackSharedOn:Boolean;
      
      private var _whiteSharedOn:Boolean;
      
      private var _icon_off:Class;
      
      public function VoiceButton()
      {
         this._groupReceiveStreams = new Object();
         this._micLevelTimer = new Timer(50);
         this._icon_off = VoiceButton__icon_off;
         super();
         this.reset();
         this._micLevelTimer.addEventListener(TimerEvent.TIMER,this._handleTimer);
      }
      
      public function loadMenu() : void
      {
         this._menuCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.voice_direct,
            "data":MENU_DIRECT,
            "icon":icon_direct
         },{
            "label":LanguageSelector.lan.voice_shared,
            "data":MENU_SHARED,
            "icon":icon_shared
         },{
            "label":LanguageSelector.lan.voice_broadcast,
            "data":MENU_BROADCAST,
            "icon":icon_broadcast
         },{
            "label":LanguageSelector.lan.voice_listen,
            "data":MENU_LISTEN,
            "icon":icon_listen
         },{
            "label":LanguageSelector.lan.voice_off,
            "data":MENU_OFF,
            "icon":this._icon_off
         }]);
         this._menu = Menu.createMenu(this,this._menuCollection);
         this._menu.setStyle("fontSize",12);
         this._menu.addEventListener(MenuEvent.ITEM_CLICK,this._menuHandler);
      }
      
      private function _menuHandler(param1:MenuEvent) : void
      {
         this._lastChosenItem = parseInt(param1.item.data);
         switch(this._lastChosenItem)
         {
            case MENU_DIRECT:
            case MENU_SHARED:
               this._connect();
               break;
            case MENU_BROADCAST:
               if(this._cirrusNetConnection == null)
               {
                  this._connect();
               }
               else if(this._netGroup == null)
               {
                  this._connectGroup();
               }
               else
               {
                  this._sendGroup();
                  this.receiveBroadcast();
                  this.refresh();
               }
               break;
            case MENU_LISTEN:
               if(this._cirrusNetConnection == null)
               {
                  this._connect();
               }
               else if(this._netGroup == null)
               {
                  this._connectGroup();
               }
               else
               {
                  this.receiveBroadcast();
                  this.refresh();
               }
               break;
            case MENU_OFF:
               this.close(true);
         }
      }
      
      private function _loadMic() : void
      {
         this._mic = Microphone.getMicrophone();
         this._mic.codec = SoundCodec.SPEEX;
         this._mic.encodeQuality = 8;
         this._mic.setSilenceLevel(3);
      }
      
      private function _connect() : void
      {
         if(this._cirrusNetConnection != null)
         {
            return;
         }
         this._cirrusNetConnection = new NetConnection();
         this._cirrusNetConnection.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusHandler);
         this._cirrusNetConnection.connect("rtmfp://p2p.rtmfp.net/" + Config.RTMFP_DEVKEY + "/");
         this.enabled = false;
      }
      
      public function close(param1:Boolean = false) : void
      {
         var _loc2_:* = null;
         if(param1)
         {
            if(this._directSendStream)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"DIRECT_OFF"));
            }
            if(this._sendingShared)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"SHARED_OFF"));
            }
            if(this._broadcastingSelf)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"BROADCAST_OFF"));
            }
            if(this._groupListening)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"V002,"));
               for(_loc2_ in this._groupReceiveStreams)
               {
                  dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"@" + _loc2_ + ",QUIT"));
               }
            }
         }
         if(this._cirrusNetConnection == null)
         {
            return;
         }
         this._cirrusNetConnection.close();
         this._cirrusNetConnection = null;
         this._groupSpecifier = null;
         this._netGroup = null;
         this._micLevelTimer.stop();
         dispatchEvent(new ServerMessageEvent(VOLUME_EVENT,"0"));
         this._directSendStream = null;
         this._sendingShared = false;
         this._groupSendStream = null;
         this._broadcastingSelf = false;
         this._groupListening = false;
         this._directReceiveStream = null;
         this._groupReceiveStreams = new Object();
         this.refresh();
      }
      
      public function click() : void
      {
         var _loc1_:Point = this.localToGlobal(new Point(mouseX,mouseY));
         this._menu.show(_loc1_.x - 150,_loc1_.y - 115);
      }
      
      private function _netStatusHandler(param1:NetStatusEvent) : void
      {
         var _loc2_:* = null;
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            switch(this._lastChosenItem)
            {
               case MENU_DIRECT:
                  dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"DIRECT_ON," + this._cirrusNetConnection.nearID));
                  this._sendDirect();
                  this.receiveDirect();
                  this.refresh();
                  break;
               case MENU_SHARED:
               case MENU_BROADCAST:
               case MENU_LISTEN:
                  this._connectGroup();
            }
         }
         else if(param1.info.code == "NetGroup.Connect.Success")
         {
            switch(this._lastChosenItem)
            {
               case MENU_SHARED:
                  this._sendGroup();
                  this.receiveGroup(this._opponentName);
                  this.refresh();
                  break;
               case MENU_BROADCAST:
                  this._sendGroup();
                  this.receiveBroadcast();
                  this.refresh();
                  break;
               case MENU_LISTEN:
                  this.receiveBroadcast();
                  this.refresh();
            }
         }
         else if(param1.info.code == "NetStream.MulticastStream.Reset")
         {
            for(_loc2_ in this._groupReceiveStreams)
            {
               if(this._groupReceiveStreams[_loc2_] == param1.target)
               {
                  dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"V001," + _loc2_));
                  dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"@" + _loc2_ + ",LISTEN"));
               }
            }
         }
         else if(param1.info.code == "NetStream.Connect.Success")
         {
            if(this._lastChosenItem == MENU_DIRECT)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"V000,"));
            }
         }
      }
      
      private function _connectGroup() : void
      {
         if(this._netGroup != null)
         {
            return;
         }
         this._groupSpecifier = new GroupSpecifier(this._game_name + Config.VOICE_GROUP_KEY);
         this._groupSpecifier.multicastEnabled = true;
         this._groupSpecifier.serverChannelEnabled = true;
         this._groupSpecifier.postingEnabled = true;
         this._netGroup = new NetGroup(this._cirrusNetConnection,this._groupSpecifier.toString());
         this._netGroup.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusHandler);
      }
      
      private function _sendDirect() : void
      {
         if(this._cirrusNetConnection == null || this._game_name == null)
         {
            return;
         }
         this._directSendStream = new NetStream(this._cirrusNetConnection,NetStream.DIRECT_CONNECTIONS);
         this._directSendStream.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusHandler);
         this._loadMic();
         this._directSendStream.attachAudio(this._mic);
         this._directSendStream.publish(this._game_name);
         this._micLevelTimer.start();
      }
      
      public function receiveDirect() : void
      {
         if(this._lastChosenItem != MENU_DIRECT)
         {
            return;
         }
         if(this._cirrusNetConnection == null || this._opponentID == null || this._game_name == null)
         {
            return;
         }
         if(this._directReceiveStream)
         {
            return;
         }
         this._directReceiveStream = new NetStream(this._cirrusNetConnection,this._opponentID);
         this._directReceiveStream.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusHandler);
         this._directReceiveStream.play(this._game_name);
      }
      
      public function stopReceiveDirect() : void
      {
         if(this._directReceiveStream == null)
         {
            return;
         }
         this._directReceiveStream.close();
         this._directReceiveStream = null;
      }
      
      private function _sendGroup() : void
      {
         if(this._cirrusNetConnection == null || this._netGroup == null)
         {
            return;
         }
         this._groupSendStream = new NetStream(this._cirrusNetConnection,this._groupSpecifier.toString());
         this._groupSendStream.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusHandler);
         this._loadMic();
         this._groupSendStream.attachAudio(this._mic);
         this._groupSendStream.publish(this._myName + Config.VOICE_GROUP_KEY);
         this._micLevelTimer.start();
         if(this._lastChosenItem == MENU_BROADCAST)
         {
            this._broadcastingSelf = true;
            dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"BROADCAST_ON"));
         }
         else if(this._lastChosenItem == MENU_SHARED)
         {
            this._sendingShared = true;
            dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"SHARED_ON"));
         }
      }
      
      public function receiveGroup(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this._lastChosenItem != MENU_SHARED && this._lastChosenItem != MENU_LISTEN && this._lastChosenItem != MENU_BROADCAST)
         {
            return;
         }
         if(this._groupReceiveStreams[param1])
         {
            return;
         }
         if(!this._cirrusNetConnection)
         {
            return;
         }
         var _loc2_:NetStream = new NetStream(this._cirrusNetConnection,this._groupSpecifier.toString());
         _loc2_.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusHandler);
         _loc2_.play(param1 + Config.VOICE_GROUP_KEY);
         this._groupReceiveStreams[param1] = _loc2_;
         this._groupListening = true;
      }
      
      public function sharedOn(param1:String) : void
      {
         if(this._game_name.split("+")[2] == param1)
         {
            this._blackSharedOn = true;
         }
         else if(this._game_name.split("+")[3] == param1)
         {
            this._whiteSharedOn = true;
         }
         this.refresh();
      }
      
      public function sharedOff(param1:String) : void
      {
         if(this._game_name.split("+")[2] == param1)
         {
            this._blackSharedOn = false;
         }
         else if(this._game_name.split("+")[3] == param1)
         {
            this._whiteSharedOn = false;
         }
         this.removeBroadcaster(param1);
         this.refresh();
      }
      
      public function refresh() : void
      {
         if(this._isPlayer && !this._postGame || this._isGuest)
         {
            this.visible = false;
         }
         else if(this._isPlayer || this._broadcasters.length > 0 || this._broadcastAllowed || this._cirrusNetConnection || this._blackSharedOn && this._whiteSharedOn)
         {
            this.visible = true;
            this._menuCollection.getItemAt(MENU_DIRECT).enabled = this._isPlayer && this._postGame && !this._cirrusNetConnection?true:false;
            this._menuCollection.getItemAt(MENU_SHARED).enabled = this._isPlayer && this._postGame && !this._cirrusNetConnection?true:false;
            this._menuCollection.getItemAt(MENU_BROADCAST).enabled = (this._broadcastAllowed && this._nPureBroadcasters() < MAX_BROADCASTERS || this._isPlayer && this._postGame && this._broadcasters.length > 0) && !this._broadcastingSelf && !this.sendingDirect() && !this._sendingShared?true:false;
            this._menuCollection.getItemAt(MENU_LISTEN).enabled = !this._groupListening && (this._broadcasters.length > 0 && (!this._isPlayer || this._postGame) || !this._isPlayer && this._blackSharedOn && this._whiteSharedOn)?true:false;
            this._menuCollection.getItemAt(MENU_OFF).enabled = !!this._cirrusNetConnection?true:false;
         }
         else
         {
            this.visible = false;
         }
         this.enabled = true;
      }
      
      public function reset() : void
      {
         this.close();
         this.visible = false;
         this._isPlayer = false;
         this._postGame = false;
         this._sendingShared = false;
         this._broadcastingSelf = false;
         this._broadcastAllowed = false;
         this._postGameShared = false;
         this._opponentID = null;
         this._opponentName = null;
         this._game_name = "*+*+*+*+*";
         this._broadcasters = [];
         this._blackSharedOn = false;
         this._whiteSharedOn = false;
      }
      
      public function addBroadcaster(param1:String) : void
      {
         if(this._broadcasters.indexOf(param1) >= 0)
         {
            return;
         }
         this._broadcasters.push(param1);
         if(this._groupListening || this._broadcastingSelf)
         {
            this.receiveBroadcast(true);
         }
         this.refresh();
      }
      
      public function removeBroadcaster(param1:String) : void
      {
         var _loc2_:int = 0;
         if(this._broadcasters.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this._broadcasters.length)
            {
               if(this._broadcasters[_loc2_] == param1)
               {
                  this._broadcasters.splice(_loc2_,1);
                  break;
               }
               _loc2_++;
            }
         }
         if(this._groupReceiveStreams[param1])
         {
            this._groupReceiveStreams[param1] == null;
            delete this._groupReceiveStreams[param1];
         }
         this.refresh();
      }
      
      private function _nPureBroadcasters() : int
      {
         var _loc1_:int = this._broadcasters.length;
         if(this._broadcasters.indexOf(this._game_name.split("+")[2]) >= 0)
         {
            _loc1_--;
         }
         if(this._broadcasters.indexOf(this._game_name.split("+")[3]) >= 0)
         {
            _loc1_--;
         }
         return _loc1_;
      }
      
      public function receiveBroadcast(param1:Boolean = false) : void
      {
         var _loc2_:String = null;
         if(!param1 && this._blackSharedOn && this._whiteSharedOn)
         {
            if(this._broadcasters.indexOf(this._game_name.split("+")[2]) < 0)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"@" + this._game_name.split("+")[2] + ",REQUEST"));
            }
            if(this._broadcasters.indexOf(this._game_name.split("+")[3]) < 0)
            {
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"@" + this._game_name.split("+")[3] + ",REQUEST"));
            }
            if(!this._groupListening)
            {
               this._groupListening = true;
               dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"V004,"));
            }
         }
         if(this._broadcasters.length == 0)
         {
            return;
         }
         for each(_loc2_ in this._broadcasters)
         {
            if(!this._groupReceiveStreams[_loc2_])
            {
               this.receiveGroup(_loc2_);
            }
         }
         dispatchEvent(new ServerMessageEvent(VOICE_EVENT,"V003,"));
      }
      
      public function playerLeave(param1:String) : void
      {
         if(param1 == this._opponentName)
         {
            this._opponentName = null;
            this._opponentID = null;
            this.stopReceiveDirect();
         }
         this.removeBroadcaster(param1);
      }
      
      public function sendingDirect() : Boolean
      {
         return this._directSendStream != null;
      }
      
      private function _handleTimer(param1:TimerEvent) : void
      {
         dispatchEvent(new ServerMessageEvent(VOLUME_EVENT,String(this._mic.activityLevel)));
      }
      
      public function get nearID() : String
      {
         return this._cirrusNetConnection.nearID;
      }
      
      public function set opponentID(param1:String) : void
      {
         this._opponentID = param1;
      }
      
      public function set opponentName(param1:String) : void
      {
         this._opponentName = param1;
      }
      
      public function set isPlayer(param1:Boolean) : void
      {
         this._isPlayer = param1;
         this.refresh();
      }
      
      public function set postGame(param1:Boolean) : void
      {
         this._postGame = param1;
         this.refresh();
      }
      
      public function set broadcastAllowed(param1:Boolean) : void
      {
         this._broadcastAllowed = param1;
         this.refresh();
      }
      
      public function get broadcastingSelf() : Boolean
      {
         return this._broadcastingSelf;
      }
      
      public function get sendingShared() : Boolean
      {
         return this._sendingShared;
      }
      
      public function set game_name(param1:String) : void
      {
         this._game_name = param1;
      }
      
      public function set myName(param1:String) : void
      {
         this._myName = param1;
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         this._isGuest = param1;
      }
   }
}
