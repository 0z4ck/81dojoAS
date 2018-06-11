package
{
   import mx.controls.Alert;
   
   public final class User
   {
      
      public static const STATE_CONNECTED:String = "connected";
      
      public static const STATE_GAME_WAITING:String = "game_waiting";
      
      public static const STATE_GAME:String = "game";
      
      public static const STATE_POSTGAME:String = "post_game";
      
      public static const STATE_OFFLINE:String = "offline";
      
      private static const IMAGE_DIRECTORY:String = "https://81dojo.com/dojo/images/";
       
      
      public var name:String;
      
      public var rating:int;
      
      public var country_code:int = 0;
      
      public var wins:int;
      
      public var losses:int;
      
      public var streak:int;
      
      public var streak_best:int;
      
      public var status:String = "connected";
      
      public var opponent:String = "";
      
      public var game_name:String = "*";
      
      public var turn:String = "*";
      
      public var monitor_game:String = "*";
      
      public var moves:int = 0;
      
      public var mark:String = "";
      
      public var markWidth:int = 0;
      
      public var markTip:String = "";
      
      public var idle:Boolean = false;
      
      public var comment:String = "";
      
      public var disconnected:Boolean = false;
      
      public var sendingDirect:Boolean = false;
      
      public var sendingShared:Boolean = false;
      
      public var broadcasting:Boolean = false;
      
      public var listening:Boolean = false;
      
      public var isHost:Boolean = false;
      
      private var _isMobile:Boolean = false;
      
      private var _isHTML:Boolean = false;
      
      public var exist:Boolean;
      
      public function User(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public function initialize() : void
      {
         this.status = STATE_CONNECTED;
         this.opponent = "";
         this.game_name = "*";
         this.turn = "*";
         this.monitor_game = "*";
         this.moves = 0;
         this.mark = "";
         this.markWidth = 0;
         this.markTip = "";
         this.idle = false;
         this.comment = "";
         this.disconnected = false;
      }
      
      public function setFromWho(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:String, param8:String, param9:String, param10:String, param11:String, param12:int, param13:Boolean, param14:String) : void
      {
         this.rating = param1;
         this.country_code = param2;
         this.wins = param3;
         this.losses = param4;
         this.streak = param5;
         this.streak_best = param6;
         if(param7 == STATE_GAME_WAITING && param9.match(/_@/))
         {
            this.status = STATE_CONNECTED;
         }
         else
         {
            this.status = param7;
         }
         this.opponent = param8;
         this.game_name = param9;
         this.turn = param10;
         this.monitor_game = param11;
         this.moves = param12;
         this.idle = param13;
         this.comment = param14;
         this.mark = "";
         this.markWidth = 0;
         this.markTip = "";
         this.exist = true;
      }
      
      public function setFromLobbyIn(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         this.rating = param1;
         this.country_code = param2;
         this.wins = param3;
         this.losses = param4;
         this.streak = param5;
         this.streak_best = param6;
      }
      
      public function setFromList(param1:String, param2:int, param3:Boolean = false) : void
      {
         if(param1.match(/^\*/))
         {
            if(parseInt(param1.substr(1)) > 3500)
            {
               this.rating = parseInt(param1.substr(1));
            }
            else
            {
               this.rating = 0;
            }
         }
         else if(param3)
         {
            this.rating = parseInt(param1) + 550;
         }
         else
         {
            this.rating = parseInt(param1);
         }
         this.country_code = param2;
      }
      
      public function setFromGame(param1:String, param2:String, param3:String) : void
      {
         this.game_name = param1;
         this.turn = param2;
         this.comment = param3;
         if(param1 == "*")
         {
            this.status = STATE_CONNECTED;
         }
         else
         {
            this.status = STATE_GAME_WAITING;
         }
      }
      
      public function setFromStart(param1:String, param2:String) : void
      {
         this.game_name = param1;
         this.turn = param2;
         this.status = STATE_GAME;
         this.moves = 0;
      }
      
      public function setFromStudy(param1:Boolean) : void
      {
         this.rating = 0;
         this.country_code = !!param1?1:2;
         this.wins = 0;
         this.losses = 0;
      }
      
      public function setFromPlayerSearch(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         this.rating = param1;
         this.country_code = param2;
         this.wins = param3;
         this.losses = param4;
         this.streak = param5;
         this.streak_best = param6;
         this.status = STATE_OFFLINE;
      }
      
      public function waitingTournamentID() : int
      {
         var _loc2_:Array = null;
         if(this.game_name == "*")
         {
            return 0;
         }
         var _loc1_:Array = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         if(_loc2_ = _loc1_[2].match(/\-\-(\d+)$/))
         {
            return parseInt(_loc2_[1]);
         }
         return 0;
      }
      
      public function get country() : String
      {
         return !!LanguageSelector.isJapanese()?InfoFetcher.country_names[this.country_code]:InfoFetcher.country_names_en[this.country_code];
      }
      
      public function get country3() : String
      {
         return InfoFetcher.country_names3[this.country_code];
      }
      
      public function get flag_m() : String
      {
         return IMAGE_DIRECTORY + "flags_m/" + String(this.country_code + 1000).substring(1) + ".swf";
      }
      
      public function get flag_s() : String
      {
         return IMAGE_DIRECTORY + "flags_s/" + String(this.country_code + 1000).substring(1) + ".gif";
      }
      
      public function get flag_ss() : String
      {
         return IMAGE_DIRECTORY + "flags_ss/" + String(this.country_code + 1000).substring(1) + ".png";
      }
      
      public function get nowChallengeable() : Boolean
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         if(this.status == STATE_GAME || this.status == STATE_POSTGAME)
         {
            return false;
         }
         if(this.status == STATE_GAME_WAITING)
         {
            _loc1_ = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
            if(_loc2_ = _loc1_[2].match(/\-\-(\d+)$/))
            {
               return InfoFetcher.systemTournamentJoined(parseInt(_loc2_[1]));
            }
         }
         return true;
      }
      
      public function get statusMark() : String
      {
         var _loc1_:String = "";
         if(this.monitor_game != "*")
         {
            _loc1_ = LanguageSelector.EJ("M ","観");
         }
         if(this.status == STATE_GAME_WAITING && !this.game_name.match(/_@/))
         {
            _loc1_ = _loc1_ + LanguageSelector.EJ("W","待");
         }
         else if(this.status == STATE_POSTGAME)
         {
            _loc1_ = LanguageSelector.EJ("P ","感想 ");
         }
         else if(this.status == STATE_GAME)
         {
            _loc1_ = LanguageSelector.EJ("G ","対") + InfoFetcher.textBar(this.moves);
         }
         if(this.disconnected)
         {
            _loc1_ = LanguageSelector.EJ("D","中断");
         }
         return _loc1_;
      }
      
      public function get statusMarkTip() : String
      {
         var _loc1_:* = "";
         if(this.monitor_game != "*")
         {
            if(this.status == STATE_GAME_WAITING && !this.game_name.match(/_@/))
            {
               _loc1_ = LanguageSelector.lan.stat_m + " / " + LanguageSelector.lan.stat_w;
            }
            else
            {
               _loc1_ = LanguageSelector.lan.stat_m;
            }
         }
         else if(this.status == STATE_GAME_WAITING && !this.game_name.match(/_@/))
         {
            _loc1_ = LanguageSelector.lan.stat_w;
         }
         else if(this.status == STATE_POSTGAME)
         {
            _loc1_ = LanguageSelector.lan.stat_p;
         }
         else if(this.status == STATE_GAME)
         {
            _loc1_ = LanguageSelector.lan.stat_g + ": ";
            if(this.moves < 10)
            {
               _loc1_ = _loc1_ + LanguageSelector.lan.stat_g1;
            }
            else if(this.moves < 20)
            {
               _loc1_ = _loc1_ + LanguageSelector.lan.stat_g2;
            }
            else if(this.moves < 40)
            {
               _loc1_ = _loc1_ + LanguageSelector.lan.stat_g3;
            }
            else if(this.moves < 60)
            {
               _loc1_ = _loc1_ + LanguageSelector.lan.stat_g4;
            }
            else
            {
               _loc1_ = _loc1_ + LanguageSelector.lan.stat_g5;
            }
         }
         if(this.disconnected)
         {
            _loc1_ = LanguageSelector.lan.stat_g + "(" + LanguageSelector.lan.stat_d + ")";
         }
         return _loc1_;
      }
      
      public function get titleName() : String
      {
         var _loc1_:String = "";
         if(this.rating > 4500)
         {
            _loc1_ = "プロ";
         }
         else if(this.rating > 3500)
         {
            _loc1_ = "livebot";
         }
         var _loc2_:int = 0;
         while(_loc2_ < InfoFetcher.titleUser.length)
         {
            if(this.name.toLowerCase() == InfoFetcher.titleUser[_loc2_])
            {
               _loc1_ = InfoFetcher.titleName[_loc2_] == "*"?"":InfoFetcher.titleName[_loc2_];
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get titleSubName() : String
      {
         var _loc1_:String = "";
         if(this.rating > 4500)
         {
            _loc1_ = "Professional Player";
         }
         else if(this.rating > 3500)
         {
            _loc1_ = "中継ボット";
         }
         var _loc2_:int = 0;
         while(_loc2_ < InfoFetcher.titleUser.length)
         {
            if(this.name.toLowerCase() == InfoFetcher.titleUser[_loc2_])
            {
               _loc1_ = InfoFetcher.titleSubName[_loc2_] == "*"?"":InfoFetcher.titleSubName[_loc2_];
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get avatar() : String
      {
         var _loc1_:String = "";
         if(this.country_code == 1)
         {
            _loc1_ = "study_black";
         }
         else if(this.country_code == 2)
         {
            _loc1_ = "study_white";
         }
         if(InfoFetcher.avatarHolders.indexOf(this.name.toLowerCase()) >= 0)
         {
            _loc1_ = this.name.toLowerCase();
         }
         var _loc2_:int = 0;
         while(_loc2_ < InfoFetcher.titleUser.length)
         {
            if(this.name.toLowerCase() == InfoFetcher.titleUser[_loc2_])
            {
               if(InfoFetcher.titleAvatar[_loc2_] != "*")
               {
                  _loc1_ = InfoFetcher.titleAvatar[_loc2_];
               }
               break;
            }
            _loc2_++;
         }
         if(_loc1_ == "")
         {
            return "https://" + Config.RAILS_HOST + (Config.RAILS_PORT == 80?"":":" + Config.RAILS_PORT) + "/players/" + this.name + "/avatar.jpg";
         }
         return IMAGE_DIRECTORY + "avatars/" + _loc1_ + ".jpg";
      }
      
      public function get rank() : String
      {
         if(!this.isProvisional || this.titleName != "")
         {
            if(this.rating == 0)
            {
               return "-";
            }
            return InfoFetcher.makeRankFromRating(this.rating);
         }
         return "-";
      }
      
      public function get rankColor() : uint
      {
         if(!this.isProvisional || this.titleName != "")
         {
            return InfoFetcher.makeColorFromRating(this.rating);
         }
         return 13421772;
      }
      
      public function get gameDescriptionRated() : String
      {
         if(this.game_name == "*")
         {
            return "";
         }
         var _loc1_:Array = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         if(_loc1_[1] == "r")
         {
            return "R";
         }
         return "NR";
      }
      
      public function get gameDescriptionTime() : String
      {
         var _loc2_:Array = null;
         if(this.game_name == "*")
         {
            return "";
         }
         var _loc1_:Array = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         if(_loc2_ = _loc1_[2].match(/\-\-(\d+)$/))
         {
            return InfoFetcher.getSystemTournamentNameShort(parseInt(_loc2_[1]));
         }
         if(_loc1_[2].match(/\-\-..$/))
         {
            return InfoFetcher.fetchTournamentJp(_loc1_[2].substr(_loc1_[2].length - 2,2));
         }
         return parseInt(_loc1_[3]) / 60 + "-" + _loc1_[4];
      }
      
      public function get gameDescriptionTimeTip() : String
      {
         var _loc2_:Array = null;
         if(this.game_name == "*")
         {
            return "";
         }
         var _loc1_:Array = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         if(_loc2_ = _loc1_[2].match(/\-\-(\d+)$/))
         {
            return InfoFetcher.getSystemTournamentName(parseInt(_loc2_[1]));
         }
         if(_loc1_[2].match(/\-\-..$/))
         {
            return InfoFetcher.fetchTournamentEn(_loc1_[2].substr(_loc1_[2].length - 2,2));
         }
         return "";
      }
      
      public function get gameDescriptionHandicap() : String
      {
         if(this.game_name == "*")
         {
            return "";
         }
         var _loc1_:Array = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         return !!LanguageSelector.isJapanese()?InfoFetcher.gameTypeShort(_loc1_[1]):InfoFetcher.gameTypeShortEn(_loc1_[1]);
      }
      
      public function get rateStr() : String
      {
         if(this.isProvisional && this.rating <= 0)
         {
            return "????";
         }
         if(this.isProvisional && this.rating < InfoFetcher.rank_thresholds[1])
         {
            return "*" + String(this.rating);
         }
         return String(this.rating);
      }
      
      public function get description() : String
      {
         var _loc1_:String = this.titleName;
         return "R:" + this.rateStr + ", " + (_loc1_ == ""?this.rank:_loc1_);
      }
      
      public function get total() : int
      {
         return this.wins + this.losses;
      }
      
      public function get percentage() : Number
      {
         if(this.wins + this.losses == 0)
         {
            return 0;
         }
         return this.wins / (this.wins + this.losses) * 100;
      }
      
      public function get idleColor() : uint
      {
         return !!this._isMobile?uint(34816):!!this.idle?uint(255):uint(0);
      }
      
      public function markSelf() : void
      {
         this.mark = "◆";
         this.markWidth = 11;
         this.markTip = LanguageSelector.lan.status_tip_self;
      }
      
      public function markFavorite() : void
      {
         this.mark = "★";
         this.markWidth = 11;
         this.markTip = LanguageSelector.lan.favorite;
      }
      
      public function markColleague() : void
      {
         this.mark = "〇";
         this.markWidth = 11;
         this.markTip = LanguageSelector.EJ("Clubmate","サークルメンバ");
      }
      
      public function markTournamentOpponent() : void
      {
         this.mark = "⬕";
         this.markWidth = 11;
         this.markTip = LanguageSelector.EJ("Tournament opponent","同大会参加者");
      }
      
      public function unmark() : void
      {
         this.mark = "";
         this.markWidth = 0;
         this.markTip = "";
      }
      
      public function get isProvisional() : Boolean
      {
         return this.total < 5;
      }
      
      public function get voice_icon() : Class
      {
         if(this.broadcasting)
         {
            return VoiceButton.icon_broadcast;
         }
         return VoiceButton.icon_listen;
      }
      
      public function get voiceTooltip() : String
      {
         if(this.broadcasting)
         {
            return LanguageSelector.lan.status_tip_broadcast;
         }
         if(this.listening)
         {
            return LanguageSelector.lan.status_tip_listen;
         }
         return "";
      }
      
      public function get showMic() : Boolean
      {
         return this.broadcasting || this.listening;
      }
      
      public function clearTags() : void
      {
         this.sendingDirect = false;
         this.sendingShared = false;
         this.broadcasting = false;
         this.listening = false;
         this.isHost = false;
      }
      
      public function set isMobile(param1:Boolean) : void
      {
         this._isMobile = param1;
      }
      
      public function get isMobile() : Boolean
      {
         return this._isMobile;
      }
      
      public function set isHTML(param1:Boolean) : void
      {
         this._isHTML = param1;
      }
      
      public function get isHTML() : Boolean
      {
         return this._isHTML;
      }
      
      public function checkMobile() : Boolean
      {
         if(this._isMobile)
         {
            Alert.show(LanguageSelector.lan.msg_mobile,LanguageSelector.lan.error);
            return true;
         }
         return false;
      }
   }
}
