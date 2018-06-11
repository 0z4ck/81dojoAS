package
{
   import flash.filters.ColorMatrixFilter;
   import mx.utils.ObjectProxy;
   
   public final class Game
   {
      
      private static const filterDefault:ColorMatrixFilter = new ColorMatrixFilter([1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0]);
      
      private static const filterGrey:ColorMatrixFilter = new ColorMatrixFilter([0.5,0.25,0.25,0,120,0.25,0.5,0.25,0,120,0.25,0.25,0.5,0,120,0,0,0,1,0]);
       
      
      public var id:String;
      
      public var black:ObjectProxy;
      
      public var white:ObjectProxy;
      
      public var game_name:String;
      
      public var game_tag:String;
      
      public var total:int;
      
      public var byoyomi:int;
      
      public var status:String = "game";
      
      public var moves:int = 0;
      
      public var isIn:Array;
      
      public var watchers:int = 0;
      
      public var opening:String = "*";
      
      public var watcher_names:String = "";
      
      public var tag:String;
      
      public var password:String = "";
      
      public var exist:Boolean;
      
      public function Game(param1:String, param2:User, param3:User)
      {
         var _loc5_:Array = null;
         this.isIn = new Array(true,true);
         this.tag = LanguageSelector.EJ("N","新");
         super();
         this.id = param1;
         this.game_name = param1.split("+")[1];
         var _loc4_:Array = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         this.game_tag = _loc4_[1];
         this.total = parseInt(_loc4_[3]);
         this.byoyomi = parseInt(_loc4_[4]);
         this.black = new ObjectProxy(param2);
         this.white = new ObjectProxy(param3);
         if(_loc5_ = _loc4_[2].match(/\.([0-9a-z]{6})/))
         {
            this.password = _loc5_[1];
         }
      }
      
      public function setFromList(param1:int, param2:String, param3:Boolean, param4:Boolean, param5:int, param6:String) : void
      {
         this.moves = param1;
         this.status = param2;
         this.isIn[0] = param3;
         this.isIn[1] = param4;
         this.watchers = param5;
         this.opening = param6;
         this.exist = true;
      }
      
      public function get openingJp() : String
      {
         if(this.password != "")
         {
            return LanguageSelector.EJ("PRIVATE","[ロック]");
         }
         if(this.game_tag.match(/^(hc|va)/) && this.game_tag != "hcfixed")
         {
            return InfoFetcher.gameTypeJp(this.game_tag);
         }
         return InfoFetcher.openingNameJp(this.opening);
      }
      
      public function get openingEn() : String
      {
         if(this.game_tag.match(/^(hc|va)/) && this.game_tag != "hcfixed")
         {
            return InfoFetcher.gameTypeShort(this.game_tag);
         }
         return InfoFetcher.openingNameEn(this.opening);
      }
      
      public function get openingTip() : String
      {
         if(this.password != "")
         {
            return LanguageSelector.lan.private_room;
         }
         if(this.game_tag.match(/^(hc|va)/) && this.game_tag != "hcfixed")
         {
            return !!LanguageSelector.isJapanese()?InfoFetcher.gameTypeShort(this.game_tag):InfoFetcher.gameTypeShortEn(this.game_tag);
         }
         return !!LanguageSelector.isJapanese()?InfoFetcher.openingNameJpTip(this.opening):InfoFetcher.openingNameEn(this.opening);
      }
      
      public function get statusMark() : String
      {
         if(this.tag == "新" || this.tag == "N")
         {
            return LanguageSelector.EJ("New","開始");
         }
         if(this.status == "game" || this.status == "suspend")
         {
            return String(this.moves);
         }
         return LanguageSelector.EJ("End","終局");
      }
      
      public function get statusColor() : uint
      {
         if(this.tag == "新" || this.tag == "N")
         {
            return 255;
         }
         if(this.status == "game" || this.status == "suspend")
         {
            return 0;
         }
         return 34816;
      }
      
      public function get description() : String
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(this.id.match(/^STUDY/))
         {
            return LanguageSelector.EJ("STUDY","検討室");
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
         if(_loc1_[1] == "r")
         {
            _loc3_ = "R";
         }
         else if(_loc1_[1].match(/^hc/))
         {
            _loc3_ = "HC";
         }
         else if(_loc1_[1].match(/^va/))
         {
            _loc3_ = "VA";
         }
         else
         {
            _loc3_ = "NR";
         }
         return _loc3_ + ": " + (parseInt(_loc1_[3]) >= 600?"":" ") + parseInt(_loc1_[3]) / 60 + "-" + _loc1_[4];
      }
      
      public function get descriptionTip() : String
      {
         var _loc2_:Array = null;
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
      
      public function get maxRating() : int
      {
         if((!this.isIn[0] || !this.isIn[1]) && this.watchers < 5)
         {
            return Math.max(this.black.rating,this.white.rating) - 3000;
         }
         if(this.game_name.match(/\-\-\d+\-\d/) || this.id.match(/^STUDY/) && this.watchers >= 5 || this.watchers >= 10)
         {
            return Math.max(this.black.rating,this.white.rating) + 3000;
         }
         return Math.max(this.black.rating,this.white.rating);
      }
      
      public function get superior() : int
      {
         if(this.game_tag.match(/^hc/) || this.black.isProvisional)
         {
            return Kyokumen.GOTE;
         }
         if(this.white.isProvisional)
         {
            return Kyokumen.SENTE;
         }
         if(this.black.rating > this.white.rating)
         {
            return Kyokumen.SENTE;
         }
         return Kyokumen.GOTE;
      }
      
      public function nameColor(param1:int) : uint
      {
         if(this.id.match(/^STUDY/))
         {
            return 10066329;
         }
         return !!this.isIn[param1]?uint(0):uint(10066329);
      }
      
      public function get watchersText() : String
      {
         if(this.watchers == 0)
         {
            return "";
         }
         return String(this.watchers);
      }
      
      public function get watchersColor() : uint
      {
         if(this.watchers >= 10)
         {
            return 16711680;
         }
         if(this.watchers >= 5)
         {
            return 15632384;
         }
         return 0;
      }
      
      public function flagFilter(param1:int) : ColorMatrixFilter
      {
         if(this.id.match(/^STUDY/))
         {
            return filterGrey;
         }
         return !!this.isIn[param1]?filterDefault:filterGrey;
      }
      
      public function nameDecoration(param1:int) : String
      {
         if(param1 == 0 && this.status == "win" || param1 == 1 && this.status == "lose")
         {
            return "underline";
         }
         return undefined;
      }
      
      public function isStudyHost(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         if(this.id.match(/^STUDY/))
         {
            _loc2_ = this.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
            return param1 == _loc2_[2].split(".")[0];
         }
         return false;
      }
   }
}
