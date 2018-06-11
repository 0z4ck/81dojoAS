package
{
   import flash.geom.Point;
   
   public final class Movement
   {
      
      public static const RESIGN:int = 1;
      
      public static const TIMEUP:int = 2;
      
      public static const JISHOGI:int = 3;
      
      public static const SENNICHITE:int = 4;
      
      public static const ILLEGAL:int = 5;
      
      public static const OUTE_SENNICHITE:int = 6;
      
      public static const DISCONNECT:int = 7;
      
      public static const CATCH:int = 8;
      
      public static const TRY:int = 9;
      
      public static const LIST_UNIVERSAL:int = 0;
      
      public static const LIST_JAPANESE:int = 1;
      
      public static const LIST_WESTERN:int = 2;
      
      public static const LIST_KK:int = 3;
      
      public static const LIST_1TO1:int = 4;
      
      private static const koma_japanese_names:Array = new Array("玉","飛","角","金","銀","桂","香","歩","","龍","馬","","成銀","成桂","成香","と");
      
      private static const koma_kk_names:Array = new Array("玉","飛","角","金","銀","桂","香","歩","","龍","馬","","+銀","+桂","+香","と");
      
      private static const rank_japanese_names:Array = new Array("一","二","三","四","五","六","七","八","九");
      
      private static const file_japanese_names:Array = new Array("１","２","３","４","５","６","７","８","９");
      
      private static const file_rank_numbers:Array = new Array("1","2","3","4","5","6","7","8","9");
      
      private static const koma_western_names:Array = new Array("Ｋ","Ｒ","Ｂ","Ｇ","Ｓ","Ｎ","Ｌ","Ｐ","","+R","+B","","+S","+N","+L","Ｔ");
      
      private static const koma_universal_names:Array = new Array("Ｋ","Ｒ","Ｂ","Ｇ","Ｓ","Ｎ","Ｌ","Ｐ","","Ｄ","Ｈ","","+S","+N","+L","Ｔ");
      
      private static const rank_western_names:Array = new Array("a","b","c","d","e","f","g","h","i");
      
      private static const rank_universal_names:Array = new Array("ⅰ","ⅱ","ⅲ","ⅳ","ⅴ","ⅵ","ⅶ","ⅷ","ⅸ");
      
      private static const piece_sound_volumes:Array = new Array(1,0.9,0.9,0.65,0.65,0.5,0.5,0.35,1,1,1,0.65,0.65,0.5,0.5,0.4);
      
      public static var listType:int = LIST_JAPANESE;
       
      
      private var _n:int;
      
      private var _turn:int = 0;
      
      private var _from:Point = null;
      
      private var _to:Point = null;
      
      private var _last_to:Point = null;
      
      private var _type:int;
      
      private var _promote:Boolean = false;
      
      private var _capture:Boolean = false;
      
      private var _time:int = 0;
      
      private var _special:int = 0;
      
      private var _branch:Boolean = false;
      
      private var _comment:String = "";
      
      private var _additionalIdentifier:Boolean = false;
      
      public function Movement(param1:int = 0)
      {
         super();
         this._n = param1;
      }
      
      public function setFromKyokumen(param1:int, param2:Point, param3:Point, param4:int, param5:Boolean, param6:Boolean = false, param7:Point = null, param8:Boolean = false, param9:int = 0) : void
      {
         this._turn = param1;
         this._from = param2;
         this._to = param3;
         this._type = param4;
         this._promote = param5;
         this._capture = param6;
         this._last_to = param7;
         this._time = param9;
         this._additionalIdentifier = param8;
      }
      
      public function setGameEnd(param1:int, param2:int, param3:int = 0) : void
      {
         this._turn = param1;
         this._special = param2;
         this._time = param3;
      }
      
      private function toHumanCoordinates(param1:Point) : Point
      {
         return new Point(9 - param1.x,param1.y + 1);
      }
      
      public function toCSA() : String
      {
         var _loc1_:Point = null;
         if(this._from == null)
         {
            if(this._special == 1)
            {
               return "%TORYO";
            }
            return null;
         }
         if(this._from.x >= Kyokumen.HAND)
         {
            _loc1_ = new Point(0,0);
         }
         else
         {
            _loc1_ = this.toHumanCoordinates(this._from);
         }
         var _loc2_:Point = this.toHumanCoordinates(this._to);
         var _loc3_:String = this._turn == 0?"+":"-";
         _loc3_ = _loc3_ + (_loc1_.x.toString() + _loc1_.y.toString() + _loc2_.x.toString() + _loc2_.y.toString());
         if(this._promote)
         {
            _loc3_ = _loc3_ + Kyokumen.koma_names[this._type + Koma.PROMOTE];
         }
         else
         {
            _loc3_ = _loc3_ + Kyokumen.koma_names[this._type];
         }
         return _loc3_;
      }
      
      public function get numStr() : String
      {
         return (!!this._branch?"*":"") + this._n;
      }
      
      public function get toListString() : String
      {
         var _loc1_:* = null;
         if(this._n == 0 || this._special >= SENNICHITE)
         {
            _loc1_ = "";
         }
         else
         {
            _loc1_ = this._turn == 0?LanguageSelector.EJ("▲","☗"):LanguageSelector.EJ("△","☖");
         }
         _loc1_ = _loc1_ + (listType == LIST_JAPANESE || listType == LIST_1TO1?this.toJapaneseNotation(false):this.toWesternNotation());
         if(this._n == 0 || this._special >= TIMEUP)
         {
            return _loc1_;
         }
         do
         {
            _loc1_ = _loc1_ + "　";
         }
         while(_loc1_.length < (listType == LIST_JAPANESE?6:8));
         
         return _loc1_;
      }
      
      public function get toMoveString() : String
      {
         var _loc1_:String = this._turn == 0?"☗":"☖";
         _loc1_ = _loc1_ + (listType == LIST_JAPANESE?this.toJapaneseNotation(false):this.toWesternNotation());
         return _loc1_;
      }
      
      private function _specialMoveName(param1:Boolean = true) : String
      {
         if(this._n == 0)
         {
            return !!param1?"開始":"Start";
         }
         if(this._special > 0)
         {
            switch(this._special)
            {
               case TIMEUP:
                  return !!param1?" Time-up":"切れ負け";
               case RESIGN:
                  return !!param1?"投了":" Resign";
               case ILLEGAL:
                  return !!param1?"反則手":" Illegal move";
               case SENNICHITE:
                  return !!param1?"千日手":" Repetition";
               case OUTE_SENNICHITE:
                  return !!param1?"連続王手の千日手":" Perpetual Check";
               case JISHOGI:
                  return !!param1?"27点宣言勝ち":" 27-point Declare";
               case DISCONNECT:
                  return !!param1?"接続切れ":" Disconnection";
               case CATCH:
                  return !!param1?"キャッチ!":" CATCH!";
               case TRY:
                  return !!param1?"トライ!":" REACH!";
            }
         }
         return "";
      }
      
      public function toWesternNotation() : String
      {
         var _loc1_:* = null;
         if(this._n == 0 || this._special > 0)
         {
            return this._specialMoveName(false);
         }
         if(listType == LIST_KK)
         {
            _loc1_ = koma_kk_names[this._type];
         }
         else if(listType == LIST_UNIVERSAL)
         {
            _loc1_ = koma_universal_names[this._type];
         }
         else
         {
            _loc1_ = koma_western_names[this._type];
         }
         if(this._additionalIdentifier && this._from.x < Kyokumen.HAND)
         {
            _loc1_ = _loc1_ + ("(" + file_rank_numbers[8 - this._from.x] + file_rank_numbers[this._from.y] + ")");
         }
         if(this._from.x >= Kyokumen.HAND)
         {
            _loc1_ = _loc1_ + "*";
         }
         else if(this._capture)
         {
            _loc1_ = _loc1_ + "x";
         }
         else
         {
            _loc1_ = _loc1_ + "-";
         }
         if(listType == LIST_WESTERN || this._to.x != this._last_to.x || this._to.y != this._last_to.y)
         {
            _loc1_ = _loc1_ + (9 - this._to.x);
            _loc1_ = _loc1_ + (listType == LIST_WESTERN?rank_western_names[this._to.y]:this._to.y + 1);
         }
         if(this._promote)
         {
            _loc1_ = _loc1_ + "+";
         }
         else if(this._from.x != Kyokumen.HAND && this._type < Koma.PROMOTE && !this._promote && this._type != Koma.OU && this._type != Koma.KI)
         {
            if((1 - this._turn) * this._from.y + this._turn * (8 - this._from.y) <= 2 || (1 - this._turn) * this._to.y + this._turn * (8 - this._to.y) <= 2)
            {
               _loc1_ = _loc1_ + " =";
            }
         }
         return _loc1_;
      }
      
      public function toJapaneseNotation(param1:Boolean) : String
      {
         var _loc3_:String = null;
         var _loc2_:Boolean = !param1 && listType == LIST_1TO1;
         if(this._n == 0 || this._special > 0)
         {
            return this._specialMoveName(param1 || LanguageSelector.isJapanese());
         }
         if(this._to.x != this._last_to.x || this._to.y != this._last_to.y)
         {
            _loc3_ = file_japanese_names[8 - this._to.x];
            _loc3_ = _loc3_ + (!!_loc2_?file_japanese_names[this._to.y]:rank_japanese_names[this._to.y]);
         }
         else
         {
            _loc3_ = !!_loc2_?"x ":"同　";
         }
         _loc3_ = _loc3_ + (!!_loc2_?koma_universal_names[this._type]:koma_japanese_names[this._type]);
         if(this._from.x >= Kyokumen.HAND)
         {
            if(this._additionalIdentifier || param1)
            {
               _loc3_ = _loc3_ + (!!_loc2_?"*":"打");
            }
         }
         else
         {
            if(this._additionalIdentifier && !param1)
            {
               _loc3_ = _loc3_ + ("(" + file_rank_numbers[8 - this._from.x] + file_rank_numbers[this._from.y] + ")");
            }
            if(this._promote)
            {
               _loc3_ = _loc3_ + (!!_loc2_?"+":"成");
            }
            else if(!param1 && this._from.x < Kyokumen.HAND && this._type < Koma.PROMOTE && !this._promote && this._type != Koma.OU && this._type != Koma.KI)
            {
               if((1 - this._turn) * this._from.y + this._turn * (8 - this._from.y) <= 2 || (1 - this._turn) * this._to.y + this._turn * (8 - this._to.y) <= 2)
               {
                  _loc3_ = _loc3_ + (!!_loc2_?"=":"不成");
               }
            }
         }
         return _loc3_;
      }
      
      public function toKIFNotation() : String
      {
         var _loc1_:String = this.toJapaneseNotation(true);
         if(this._from && this._from.x < Kyokumen.HAND)
         {
            _loc1_ = _loc1_ + ("(" + String(9 - this._from.x) + String(this._from.y + 1) + ")");
         }
         return _loc1_ + "   ( " + int(this._time / 60) + ":" + this._time % 60 + "/)";
      }
      
      public function replayable() : Boolean
      {
         return !this._n == 0 && this._special == 0;
      }
      
      public function pieceSoundVolume() : Number
      {
         return piece_sound_volumes[this._type];
      }
      
      public function getResultKoma() : Koma
      {
         return new Koma(!!this._promote?int(this._type + Koma.PROMOTE):int(this._type),this._to.x,this._to.y,this._turn);
      }
      
      public function get from() : Point
      {
         return this._from;
      }
      
      public function get to() : Point
      {
         return this._to;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get promote() : Boolean
      {
         return this._promote;
      }
      
      public function get capture() : Boolean
      {
         return this._capture;
      }
      
      public function set promote(param1:Boolean) : void
      {
         this._promote = param1;
      }
      
      public function get turn() : int
      {
         return this._turn;
      }
      
      public function get time() : int
      {
         return this._time;
      }
      
      public function set time(param1:int) : void
      {
         this._time = param1;
      }
      
      public function get timeString() : String
      {
         if(this._branch || (this._special > 0 || this._n == 0) && this._time == 0)
         {
            return "";
         }
         return this._time.toString();
      }
      
      public function get n() : int
      {
         return this._n;
      }
      
      public function set n(param1:int) : void
      {
         this._n = param1;
      }
      
      public function get branch() : Boolean
      {
         return this._branch;
      }
      
      public function set branch(param1:Boolean) : void
      {
         this._branch = param1;
      }
      
      public function get comment() : String
      {
         return this._comment;
      }
      
      public function set comment(param1:String) : void
      {
         this._comment = param1;
      }
   }
}
