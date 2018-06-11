package
{
   import flash.geom.Point;
   
   public final class Kyokumen
   {
      
      public static const SENTE:int = 0;
      
      public static const GOTE:int = 1;
      
      private static const koma_names_ori:Array = new Array("OU","HI","KA","KI","GI","KE","KY","FU","","RY","UM","","NG","NK","NY","TO");
      
      private static const koma_names_zoo:Array = new Array("OU","ZG","ZE","","","","","ZC","","","","","","","","TO");
      
      public static var koma_names:Array = koma_names_ori;
      
      private static const koma_sfen_names:Array = new Array("K","R","B","G","S","N","L","P","","+R","+B","","+S","+N","+L","+P");
      
      private static const koma_impasse_points:Array = new Array(100,5,5,1,1,1,1,1,0,5,5,1,1,1,1,1);
      
      private static const ALL_POINTS:int = 2 * (koma_impasse_points[0] + 27);
      
      private static const koma_japanese_names:Array = new Array("玉","飛","角","金","銀","桂","香","歩","","龍","馬","","全","圭","杏","と");
      
      private static const koma_neutral_nums:Array = new Array(1,1,1,2,2,2,2,9);
      
      private static const koma_material_points:Array = new Array(0,8,8,5,5,3,3,1);
      
      public static const HAND:int = 100;
      
      public static const HAND_OU:int = HAND + 0;
      
      public static const HAND_HI:int = HAND + 1;
      
      public static const HAND_KA:int = HAND + 2;
      
      public static const HAND_KI:int = HAND + 3;
      
      public static const HAND_GI:int = HAND + 4;
      
      public static const HAND_KE:int = HAND + 5;
      
      public static const HAND_KY:int = HAND + 6;
      
      public static const HAND_FU:int = HAND + 7;
       
      
      private var _turn:int;
      
      private var _ban:Array;
      
      private var _komadai:Array;
      
      private var _superior:int;
      
      private var _impasseStatus:Array;
      
      private var _last_to:Point;
      
      private var _promoteY1:int;
      
      private var _promoteY2:int;
      
      public var isKyoto:Boolean = false;
      
      public var initialPositionStr:String;
      
      public function Kyokumen(param1:String = null, param2:int = 2, param3:int = 6)
      {
         var _loc4_:int = 0;
         this.initialPositionStr = "P0+\n" + "P1-KY-KE-GI-KI-OU-KI-GI-KE-KY\n" + "P2 * -HI *  *  *  *  * -KA * \n" + "P3-FU-FU-FU-FU-FU-FU-FU-FU-FU\n" + "P4 *  *  *  *  *  *  *  *  * \n" + "P5 *  *  *  *  *  *  *  *  * \n" + "P6 *  *  *  *  *  *  *  *  * \n" + "P7+FU+FU+FU+FU+FU+FU+FU+FU+FU\n" + "P8 * +KA *  *  *  *  * +HI * \n" + "P9+KY+KE+GI+KI+OU+KI+GI+KE+KY\n";
         super();
         if(param1)
         {
            this.initialPositionStr = param1;
         }
         this._promoteY1 = param2;
         this._promoteY2 = param3;
         if(this._promoteY1 == 1)
         {
            this.isKyoto = true;
         }
         koma_names = this._promoteY1 == 0?koma_names_zoo:koma_names_ori;
         this._turn = SENTE;
         this._ban = new Array(9);
         while(_loc4_ < 9)
         {
            this._ban[_loc4_] = new Array(9);
            _loc4_++;
         }
         this._komadai = new Array(2);
         this._impasseStatus = new Array(2);
         _loc4_ = 0;
         while(_loc4_ < 2)
         {
            this._komadai[_loc4_] = new Komadai();
            this._impasseStatus[_loc4_] = new Object();
            this._impasseStatus[_loc4_] = {
               "entered":false,
               "pieces":0,
               "points":0
            };
            _loc4_++;
         }
         this.jumpToFirstPosition();
      }
      
      public static function translateHumanCoordinates(param1:Point) : Point
      {
         return new Point(9 - param1.x,param1.y - 1);
      }
      
      public static function komaJapaneseToCSA(param1:String) : String
      {
         if(koma_japanese_names.indexOf(param1) >= 0)
         {
            return koma_names[koma_japanese_names.indexOf(param1)];
         }
         if(param1 == "王")
         {
            return "OU";
         }
         if(param1 == "竜")
         {
            return "RY";
         }
         return "";
      }
      
      public static function numJapaneseToInt(param1:String) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.split(""))
         {
            switch(_loc3_)
            {
               case "１":
               case "一":
                  _loc2_ = _loc2_ + 1;
                  continue;
               case "２":
               case "二":
                  _loc2_ = _loc2_ + 2;
                  continue;
               case "３":
               case "三":
                  _loc2_ = _loc2_ + 3;
                  continue;
               case "４":
               case "四":
                  _loc2_ = _loc2_ + 4;
                  continue;
               case "５":
               case "五":
                  _loc2_ = _loc2_ + 5;
                  continue;
               case "６":
               case "六":
                  _loc2_ = _loc2_ + 6;
                  continue;
               case "７":
               case "七":
                  _loc2_ = _loc2_ + 7;
                  continue;
               case "８":
               case "八":
                  _loc2_ = _loc2_ + 8;
                  continue;
               case "９":
               case "九":
                  _loc2_ = _loc2_ + 9;
                  continue;
               case "十":
                  _loc2_ = _loc2_ + 10;
                  continue;
               default:
                  continue;
            }
         }
         return _loc2_;
      }
      
      public function loadFromString(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:Koma = null;
         var _loc9_:int = 0;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc2_:Array = param1.split("\n");
         if(_loc2_[0].substr(2) == "+")
         {
            this._turn = SENTE;
         }
         else
         {
            this._turn = GOTE;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 9)
         {
            _loc4_ = _loc2_[_loc3_ + 1].substr(2);
            _loc5_ = 0;
            while(_loc5_ < 9)
            {
               _loc6_ = _loc4_.slice(_loc5_ * 3,_loc5_ * 3 + 3);
               if(_loc6_ != " * ")
               {
                  _loc7_ = _loc6_.charAt(0) == "+"?int(SENTE):int(GOTE);
                  _loc8_ = new Koma(koma_names.indexOf(_loc6_.slice(1,3)),_loc5_,_loc3_,_loc7_);
                  this._ban[_loc5_][_loc3_] = _loc8_;
               }
               else
               {
                  this._ban[_loc5_][_loc3_] = null;
               }
               _loc5_++;
            }
            _loc3_++;
         }
         this._komadai[0].clearKoma();
         this._komadai[1].clearKoma();
         if(_loc2_.length > 10)
         {
            _loc9_ = 9;
            while(_loc9_ < _loc2_.length)
            {
               _loc10_ = _loc2_[_loc9_].match(/P([+-])00(.*)/);
               if(_loc10_ != null)
               {
                  _loc7_ = _loc10_[1] == "+"?int(SENTE):int(GOTE);
                  _loc11_ = _loc2_[_loc9_].split("00");
                  _loc11_.shift();
                  for each(_loc12_ in _loc11_)
                  {
                     _loc8_ = new Koma(koma_names.indexOf(_loc12_),0,0,_loc7_);
                     this._komadai[_loc7_].addKoma(_loc8_);
                  }
               }
               _loc9_++;
            }
         }
      }
      
      public function jumpToFirstPosition() : void
      {
         this.loadFromString(this.initialPositionStr);
         this._last_to = new Point(0,0);
      }
      
      public function toString() : String
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:* = "";
         if(this._turn == SENTE)
         {
            _loc1_ = _loc1_ + "P0+\n";
         }
         else
         {
            _loc1_ = _loc1_ + "P0-\n";
         }
         var _loc2_:int = 0;
         while(_loc2_ < 9)
         {
            _loc3_ = "P" + (_loc2_ + 1);
            _loc4_ = 0;
            while(_loc4_ < 9)
            {
               if(this._ban[_loc4_][_loc2_])
               {
                  if(this._ban[_loc4_][_loc2_].ownerPlayer == SENTE)
                  {
                     _loc3_ = _loc3_ + "+";
                  }
                  else
                  {
                     _loc3_ = _loc3_ + "-";
                  }
                  _loc3_ = _loc3_ + koma_names[this._ban[_loc4_][_loc2_].type];
               }
               else
               {
                  _loc3_ = _loc3_ + " * ";
               }
               _loc4_++;
            }
            _loc1_ = _loc1_ + (_loc3_ + "\n");
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = "P" + (_loc2_ == SENTE?"+":"-");
            _loc4_ = 0;
            while(_loc4_ < 8)
            {
               if(this._komadai[_loc2_].getNumOfKoma(_loc4_) > 0)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this._komadai[_loc2_].getNumOfKoma(_loc4_))
                  {
                     _loc3_ = _loc3_ + ("00" + koma_names[_loc4_]);
                     _loc5_++;
                  }
               }
               _loc4_++;
            }
            if(_loc3_.length > 2)
            {
               _loc1_ = _loc1_ + (_loc3_ + "\n");
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function toSFEN(param1:Boolean = false) : String
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 9)
         {
            _loc7_ = 0;
            while(_loc7_ < 9)
            {
               if(this._ban[_loc7_][_loc4_])
               {
                  if(_loc3_ > 0)
                  {
                     _loc2_ = _loc2_ + _loc3_;
                  }
                  _loc3_ = 0;
                  if(this._ban[_loc7_][_loc4_].ownerPlayer == SENTE)
                  {
                     _loc2_ = _loc2_ + koma_sfen_names[this._ban[_loc7_][_loc4_].type];
                  }
                  else
                  {
                     _loc2_ = _loc2_ + koma_sfen_names[this._ban[_loc7_][_loc4_].type].toLowerCase();
                  }
               }
               else
               {
                  _loc3_ = _loc3_ + 1;
               }
               _loc7_++;
            }
            if(_loc3_ > 0)
            {
               _loc2_ = _loc2_ + _loc3_;
            }
            _loc3_ = 0;
            if(_loc4_ < 8)
            {
               _loc2_ = _loc2_ + "/";
            }
            _loc4_++;
         }
         _loc2_ = _loc2_ + (" " + (this.turn == SENTE?"b":"w"));
         var _loc5_:String = "";
         var _loc6_:int = 0;
         while(_loc6_ < 2)
         {
            _loc8_ = 0;
            while(_loc8_ < 8)
            {
               _loc3_ = this._komadai[_loc6_].getNumOfKoma(_loc8_);
               if(_loc3_ > 0)
               {
                  _loc5_ = _loc5_ + ((_loc3_ > 1?_loc3_:"") + (_loc6_ == 0?koma_sfen_names[_loc8_]:koma_sfen_names[_loc8_].toLowerCase()));
               }
               _loc8_++;
            }
            _loc6_++;
         }
         if(_loc5_ == "")
         {
            _loc5_ = "-";
         }
         _loc2_ = _loc2_ + (" " + _loc5_);
         return !!param1?encodeURIComponent(_loc2_):_loc2_;
      }
      
      public function get ban() : Array
      {
         return this._ban;
      }
      
      public function get turn() : int
      {
         return this._turn;
      }
      
      public function set turn(param1:int) : void
      {
         this._turn = param1;
      }
      
      public function get impasseStatus() : Array
      {
         return this._impasseStatus;
      }
      
      public function getKomadai(param1:int) : Komadai
      {
         if(param1 > 1)
         {
            return Komadai(null);
         }
         return this._komadai[param1];
      }
      
      public function getKomaAt(param1:Point) : Koma
      {
         return this._ban[param1.x][param1.y] as Koma;
      }
      
      public function setKomaAt(param1:Point, param2:Koma) : void
      {
         this._ban[param1.x][param1.y] = param2;
      }
      
      public function canPromote(param1:Point, param2:Point) : Boolean
      {
         var _loc3_:Koma = null;
         param2 = translateHumanCoordinates(param2);
         if(param1.x > HAND)
         {
            return false;
         }
         param1 = translateHumanCoordinates(param1);
         _loc3_ = this.getKomaAt(param1);
         if(_loc3_.isPromoted())
         {
            return false;
         }
         if(_loc3_.type == Koma.OU || _loc3_.type == Koma.KI)
         {
            return false;
         }
         if(koma_names == koma_names_zoo && _loc3_.type != Koma.FU)
         {
            return false;
         }
         if(_loc3_.ownerPlayer == SENTE)
         {
            if(param1.y <= this._promoteY1 || param2.y <= this._promoteY1)
            {
               return true;
            }
         }
         else if(param1.y >= this._promoteY2 || param2.y >= this._promoteY2)
         {
            return true;
         }
         return false;
      }
      
      public function mustPromote(param1:Point, param2:Point) : Boolean
      {
         if(koma_names == koma_names_zoo)
         {
            return false;
         }
         param1 = translateHumanCoordinates(param1);
         param2 = translateHumanCoordinates(param2);
         var _loc3_:Koma = this.getKomaAt(param1);
         if(_loc3_.type == Koma.FU || _loc3_.type == Koma.KY)
         {
            if(_loc3_.ownerPlayer == SENTE && param2.y == 0)
            {
               return true;
            }
            if(_loc3_.ownerPlayer == GOTE && param2.y == 8)
            {
               return true;
            }
         }
         else if(_loc3_.type == Koma.KE)
         {
            if(_loc3_.ownerPlayer == SENTE && param2.y <= 1)
            {
               return true;
            }
            if(_loc3_.ownerPlayer == GOTE && param2.y >= 7)
            {
               return true;
            }
         }
         return false;
      }
      
      public function isNifu(param1:Point, param2:Point) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:Koma = null;
         if(param1.x == HAND_FU)
         {
            param2 = translateHumanCoordinates(param2);
            _loc3_ = 0;
            while(_loc3_ < 9)
            {
               if(_loc4_ = this.getKomaAt(new Point(param2.x,_loc3_)))
               {
                  if(_loc4_.type == Koma.FU && _loc4_.ownerPlayer == this._turn)
                  {
                     return true;
                  }
               }
               _loc3_++;
            }
         }
         return false;
      }
      
      public function cantMove(param1:Koma, param2:Point, param3:Point, param4:Boolean = true) : Boolean
      {
         var _loc7_:int = 0;
         if(param2.x > HAND)
         {
            return false;
         }
         if(param4)
         {
            param2 = translateHumanCoordinates(param2);
            param3 = translateHumanCoordinates(param3);
         }
         var _loc5_:Number = param3.x - param2.x;
         var _loc6_:Number = param1.ownerPlayer == SENTE?Number(param3.y - param2.y):Number(param2.y - param3.y);
         if(_loc5_ == 0 && _loc6_ == 0)
         {
            return true;
         }
         switch(param1.type)
         {
            case Koma.OU:
            case Koma.OU + Koma.PROMOTE:
               if(Math.abs(_loc5_) <= 1 && Math.abs(_loc6_) <= 1)
               {
                  return false;
               }
               break;
            case Koma.KI:
            case Koma.GI + Koma.PROMOTE:
            case Koma.KE + Koma.PROMOTE:
            case Koma.KY + Koma.PROMOTE:
            case Koma.FU + Koma.PROMOTE:
               if(Math.abs(_loc5_) == 1 && _loc6_ == 1)
               {
                  return true;
               }
               if(Math.abs(_loc5_) <= 1 && Math.abs(_loc6_) <= 1)
               {
                  return false;
               }
               break;
            case Koma.GI:
               if(Math.abs(_loc5_) == 1 && _loc6_ == 0)
               {
                  return true;
               }
               if(_loc5_ == 0 && _loc6_ == 1)
               {
                  return true;
               }
               if(Math.abs(_loc5_) <= 1 && Math.abs(_loc6_) <= 1)
               {
                  return false;
               }
               break;
            case Koma.HI + Koma.PROMOTE:
               if(Math.abs(_loc5_) <= 1 && Math.abs(_loc6_) <= 1)
               {
                  return false;
               }
            case Koma.HI:
               if(_loc5_ == 0)
               {
                  if(Math.abs(_loc6_) == 1)
                  {
                     return false;
                  }
                  if(koma_names[param1.type].match(/^Z/))
                  {
                     return true;
                  }
                  _loc7_ = Math.min(param2.y,param3.y) + 1;
                  while(_loc7_ <= Math.max(param2.y,param3.y) - 1)
                  {
                     if(this.getKomaAt(new Point(param2.x,_loc7_)))
                     {
                        return true;
                     }
                     _loc7_++;
                  }
                  return false;
               }
               if(_loc6_ == 0)
               {
                  if(Math.abs(_loc5_) == 1)
                  {
                     return false;
                  }
                  if(koma_names[param1.type].match(/^Z/))
                  {
                     return true;
                  }
                  _loc7_ = Math.min(param2.x,param3.x) + 1;
                  while(_loc7_ <= Math.max(param2.x,param3.x) - 1)
                  {
                     if(this.getKomaAt(new Point(_loc7_,param2.y)))
                     {
                        return true;
                     }
                     _loc7_++;
                  }
                  return false;
               }
               break;
            case Koma.KA + Koma.PROMOTE:
               if(Math.abs(_loc5_) <= 1 && Math.abs(_loc6_) <= 1)
               {
                  return false;
               }
            case Koma.KA:
               if(Math.abs(_loc5_) == Math.abs(_loc6_))
               {
                  if(Math.abs(_loc5_) == 1)
                  {
                     return false;
                  }
                  if(koma_names[param1.type].match(/^Z/))
                  {
                     return true;
                  }
                  _loc7_ = 1;
                  while(_loc7_ <= int(Math.abs(_loc5_)) - 1)
                  {
                     if(this.getKomaAt(new Point(param2.x + (_loc5_ > 0?_loc7_:-_loc7_),param2.y + (param3.y > param2.y?_loc7_:-_loc7_))))
                     {
                        return true;
                     }
                     _loc7_++;
                  }
                  return false;
               }
               break;
            case Koma.FU:
               if(_loc5_ == 0 && _loc6_ == -1)
               {
                  return false;
               }
               break;
            case Koma.KY:
               if(_loc5_ == 0 && _loc6_ < 0)
               {
                  if(_loc6_ == -1)
                  {
                     return false;
                  }
                  _loc7_ = Math.min(param2.y,param3.y) + 1;
                  while(_loc7_ <= Math.max(param2.y,param3.y) - 1)
                  {
                     if(this.getKomaAt(new Point(param2.x,_loc7_)))
                     {
                        return true;
                     }
                     _loc7_++;
                  }
                  return false;
               }
               break;
            case Koma.KE:
               if(Math.abs(_loc5_) == 1 && _loc6_ == -2)
               {
                  return false;
               }
         }
         return true;
      }
      
      public function isSoundDouble(param1:Point) : Boolean
      {
         var _loc2_:Koma = null;
         if(this.getKomaAt(param1).ownerPlayer == SENTE && param1.y <= 7)
         {
            if(_loc2_ = this.getKomaAt(new Point(param1.x,param1.y + 1)))
            {
               if(_loc2_.ownerPlayer == SENTE)
               {
                  return true;
               }
            }
         }
         else if(this.getKomaAt(param1).ownerPlayer == GOTE && param1.y >= 1)
         {
            if(_loc2_ = this.getKomaAt(new Point(param1.x,param1.y - 1)))
            {
               if(_loc2_.ownerPlayer == GOTE)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function generateMovementFromCoordinates(param1:Point, param2:Point, param3:Boolean) : Movement
      {
         var _loc4_:Koma = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(param1.x > HAND)
         {
            _loc4_ = new Koma(param1.x - HAND,param1.x,param1.y,this._turn);
            param1.x = HAND;
            if(this.isKyoto && param3)
            {
               _loc4_.convertKyoto();
               param3 = false;
            }
         }
         else
         {
            param1 = translateHumanCoordinates(param1);
            _loc4_ = this.getKomaAt(param1);
            if(this.isKyoto)
            {
               _loc4_.convertKyoto();
            }
         }
         param2 = translateHumanCoordinates(param2);
         var _loc5_:* = this.getKomaAt(param2) != null;
         var _loc6_:Boolean = false;
         _loc8_ = 0;
         loop0:
         while(_loc8_ < 9)
         {
            _loc9_ = 0;
            while(_loc9_ < 9)
            {
               if(!(_loc9_ == param1.x && _loc8_ == param1.y))
               {
                  if(this._ban[_loc9_][_loc8_] && this._ban[_loc9_][_loc8_].ownerPlayer == _loc4_.ownerPlayer && this._ban[_loc9_][_loc8_].type == _loc4_.type)
                  {
                     if(!this.cantMove(this._ban[_loc9_][_loc8_],new Point(_loc9_,_loc8_),param2,false))
                     {
                        _loc6_ = true;
                     }
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               _loc9_++;
            }
            _loc8_++;
         }
         var _loc7_:Movement = new Movement();
         _loc7_.setFromKyokumen(_loc4_.ownerPlayer,param1,param2,_loc4_.type,param3,_loc5_,this._last_to,_loc6_);
         return _loc7_;
      }
      
      public function generateMovementFromString(param1:String) : Movement
      {
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         if(!param1 || param1.charAt(0) == "%")
         {
            return null;
         }
         var _loc2_:int = param1.charAt(0) == "+"?int(Kyokumen.SENTE):int(Kyokumen.GOTE);
         var _loc3_:Point = new Point(parseInt(param1.charAt(1)),parseInt(param1.charAt(2)));
         if(_loc3_.x == 0)
         {
            _loc3_.x = HAND;
            _loc3_.y = HAND;
         }
         else
         {
            _loc3_ = translateHumanCoordinates(_loc3_);
         }
         var _loc4_:Point = new Point(parseInt(param1.charAt(3)),parseInt(param1.charAt(4)));
         _loc4_ = translateHumanCoordinates(_loc4_);
         var _loc5_:* = this.getKomaAt(_loc4_) != null;
         var _loc6_:Array = param1.match(/,T([0-9]*)/);
         var _loc7_:int = parseInt(_loc6_[1]);
         if(_loc3_.x != HAND)
         {
            _loc11_ = this.getKomaAt(_loc3_).type != koma_names.indexOf(param1.slice(5,7)) && !this.isKyoto;
         }
         var _loc8_:int = koma_names.indexOf(param1.slice(5,7)) - (!!_loc11_?Koma.PROMOTE:0);
         var _loc9_:Boolean = false;
         _loc12_ = 0;
         loop0:
         while(_loc12_ < 9)
         {
            _loc13_ = 0;
            while(_loc13_ < 9)
            {
               if(!(_loc13_ == _loc3_.x && _loc12_ == _loc3_.y))
               {
                  if(this._ban[_loc13_][_loc12_] && this._ban[_loc13_][_loc12_].ownerPlayer == _loc2_ && this._ban[_loc13_][_loc12_].type == _loc8_)
                  {
                     if(!this.cantMove(this._ban[_loc13_][_loc12_],new Point(_loc13_,_loc12_),_loc4_,false))
                     {
                        _loc9_ = true;
                     }
                  }
                  if(_loc9_)
                  {
                     break loop0;
                  }
               }
               _loc13_++;
            }
            _loc12_++;
         }
         var _loc10_:Movement = new Movement();
         _loc10_.setFromKyokumen(_loc2_,_loc3_,_loc4_,_loc8_,_loc11_,_loc5_,this._last_to,_loc9_,_loc7_);
         return _loc10_;
      }
      
      public function move(param1:Movement) : void
      {
         var _loc2_:Koma = null;
         if(param1.from.x == HAND)
         {
            this._komadai[param1.turn].removeKoma(!!this.isKyoto?Koma.typeKyotoConverted(param1.type,true):param1.type);
         }
         if(this.getKomaAt(param1.to) != null)
         {
            if(param1.from.x == HAND)
            {
               return;
            }
            _loc2_ = this.getKomaAt(param1.to);
            this._captureKoma(_loc2_,this._turn);
         }
         if(param1.from.x != HAND)
         {
            this.setKomaAt(param1.from,null);
         }
         this.setKomaAt(param1.to,param1.getResultKoma());
         this._last_to = param1.to;
         this._turn = this._turn == SENTE?int(GOTE):int(SENTE);
      }
      
      private function _captureKoma(param1:Koma, param2:int) : void
      {
         this.setKomaAt(new Point(param1.x,param1.y),null);
         param1.ownerPlayer = param2;
         param1.x = HAND;
         param1.y = HAND;
         if(this.isKyoto)
         {
            param1.convertKyoto(true);
         }
         if(param1.isPromoted())
         {
            param1.depromote();
         }
         this._komadai[param2].addKoma(param1);
      }
      
      public function calcImpasse() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            this._impasseStatus[_loc1_].entered = false;
            this._impasseStatus[_loc1_].pieces = 0;
            this._impasseStatus[_loc1_].points = 0;
            _loc4_ = 0;
            while(_loc4_ < 8)
            {
               this._impasseStatus[_loc1_].points = this._impasseStatus[_loc1_].points + this._komadai[_loc1_].getNumOfKoma(_loc4_) * koma_impasse_points[_loc4_];
               _loc4_++;
            }
            _loc2_ = _loc2_ + this._impasseStatus[_loc1_].points;
            _loc1_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 9)
         {
            _loc5_ = 0;
            while(_loc5_ < 9)
            {
               if(this._ban[_loc5_][_loc3_])
               {
                  _loc2_ = _loc2_ + koma_impasse_points[this._ban[_loc5_][_loc3_].type];
                  if(_loc3_ <= this._promoteY1)
                  {
                     _loc1_ = SENTE;
                     addr119:
                     if(this._ban[_loc5_][_loc3_].ownerPlayer == _loc1_)
                     {
                        this._impasseStatus[_loc1_].pieces = this._impasseStatus[_loc1_].pieces + 1;
                        this._impasseStatus[_loc1_].points = this._impasseStatus[_loc1_].points + koma_impasse_points[this._ban[_loc5_][_loc3_].type];
                     }
                  }
                  else if(_loc3_ >= this._promoteY2)
                  {
                     _loc1_ = GOTE;
                     §§goto(addr119);
                  }
               }
               _loc5_++;
            }
            _loc3_++;
         }
         this._impasseStatus[GOTE].points = this._impasseStatus[GOTE].points + (ALL_POINTS - _loc2_);
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            if(this._impasseStatus[_loc1_].points >= koma_impasse_points[0])
            {
               this._impasseStatus[_loc1_].points = this._impasseStatus[_loc1_].points - koma_impasse_points[0];
               this._impasseStatus[_loc1_].pieces = this._impasseStatus[_loc1_].pieces - 1;
               this._impasseStatus[_loc1_].entered = true;
            }
            _loc1_++;
         }
      }
      
      public function calcMaterial(param1:int, param2:Boolean) : String
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc3_:Array = new Array(0,0,0,0,0,0,0,0);
         var _loc4_:String = "";
         var _loc5_:String = "";
         var _loc6_:int = 0;
         var _loc7_:String = "";
         var _loc8_:int = 0;
         while(_loc8_ < 9)
         {
            _loc10_ = 0;
            while(_loc10_ < 9)
            {
               if(this._ban[_loc10_][_loc8_] && this._ban[_loc10_][_loc8_].ownerPlayer == SENTE)
               {
                  _loc3_[this._ban[_loc10_][_loc8_].type <= 7?this._ban[_loc10_][_loc8_].type:this._ban[_loc10_][_loc8_].type - Koma.PROMOTE] = _loc3_[this._ban[_loc10_][_loc8_].type <= 7?this._ban[_loc10_][_loc8_].type:this._ban[_loc10_][_loc8_].type - Koma.PROMOTE] + 1;
               }
               _loc10_++;
            }
            _loc8_++;
         }
         var _loc9_:int = 0;
         while(_loc9_ < 8)
         {
            _loc3_[_loc9_] = _loc3_[_loc9_] + this._komadai[SENTE].getNumOfKoma(_loc9_);
            _loc9_++;
         }
         _loc9_ = 1;
         while(_loc9_ <= 6)
         {
            if(_loc3_[_loc9_] > koma_neutral_nums[_loc9_])
            {
               _loc11_ = 1;
               while(_loc11_ <= _loc3_[_loc9_] - koma_neutral_nums[_loc9_])
               {
                  _loc4_ = _loc4_ + koma_japanese_names[_loc9_];
                  _loc6_ = _loc6_ + koma_material_points[_loc9_];
                  _loc11_++;
               }
            }
            else if(_loc3_[_loc9_] < koma_neutral_nums[_loc9_])
            {
               _loc11_ = 1;
               while(_loc11_ <= koma_neutral_nums[_loc9_] - _loc3_[_loc9_])
               {
                  _loc5_ = _loc5_ + koma_japanese_names[_loc9_];
                  _loc6_ = _loc6_ - koma_material_points[_loc9_];
                  _loc11_++;
               }
            }
            _loc9_++;
         }
         if(_loc5_.length > 0 && _loc4_.length == 0)
         {
            if(param2 && _loc6_ >= -3 && _loc3_[7] >= koma_neutral_nums[7] + 3)
            {
               _loc4_ = _loc4_ + (LanguageSelector.EJ("歩x","歩") + (_loc3_[7] - koma_neutral_nums[7]) + LanguageSelector.EJ("","枚"));
            }
         }
         else if(_loc5_.length == 0 && _loc4_.length > 0)
         {
            if(param2 && _loc6_ <= 3 && _loc3_[7] <= koma_neutral_nums[7] - 3)
            {
               _loc5_ = _loc5_ + (LanguageSelector.EJ("歩x","歩") + (koma_neutral_nums[7] - _loc3_[7]) + LanguageSelector.EJ("","枚"));
            }
         }
         if(_loc5_.length > 0 && _loc4_.length == 0)
         {
            return param1 == SENTE?LanguageSelector.EJ("Black is down by " + _loc5_,"先手 " + _loc5_ + "損"):LanguageSelector.EJ("White is up by " + _loc5_,"後手 " + _loc5_ + "得");
         }
         if(_loc5_.length == 0 && _loc4_.length > 0)
         {
            return param1 == SENTE?LanguageSelector.EJ("Black is up by " + _loc4_,"先手 " + _loc4_ + "得"):LanguageSelector.EJ("White is up by " + _loc4_,"後手 " + _loc4_ + "損");
         }
         if(_loc4_.length > 0 && _loc5_.length > 0)
         {
            _loc7_ = LanguageSelector.EJ("Exchange of " + (param1 == SENTE?"▲" + _loc4_ + " and △" + _loc5_:"△" + _loc5_ + " and ▲" + _loc4_) + " / ",(param1 == SENTE?"☗" + _loc4_ + "と☖" + _loc5_:"☖" + _loc5_ + "と☗" + _loc4_) + "の交換　　");
            _loc12_ = _loc4_.length == _loc5_.length && _loc4_.length <= 2?2:3;
            if(_loc6_ >= _loc12_)
            {
               return _loc7_ + (param1 == SENTE?LanguageSelector.EJ("Black is up.","先手の駒得"):LanguageSelector.EJ("White is down.","後手の駒損"));
            }
            if(_loc6_ <= -_loc12_)
            {
               return _loc7_ + (param1 == SENTE?LanguageSelector.EJ("Black is down.","先手の駒損"):LanguageSelector.EJ("White is up.","後手の駒得"));
            }
         }
         if(_loc6_ == 0 && _loc4_.length == _loc5_.length && _loc4_.length <= 2)
         {
            if(param2 && _loc3_[7] > koma_neutral_nums[7])
            {
               _loc7_ = _loc7_ + (param1 == SENTE?LanguageSelector.EJ("","先手 ") + (_loc3_[7] - koma_neutral_nums[7]) + LanguageSelector.EJ("-pawn up for black.","歩得"):LanguageSelector.EJ("","後手 ") + (_loc3_[7] - koma_neutral_nums[7]) + LanguageSelector.EJ("-pawn down for white.","歩損"));
            }
            else if(param2 && _loc3_[7] < koma_neutral_nums[7])
            {
               _loc7_ = _loc7_ + (param1 == SENTE?LanguageSelector.EJ("","先手 ") + (koma_neutral_nums[7] - _loc3_[7]) + LanguageSelector.EJ("-pawn down for black.","歩損"):LanguageSelector.EJ("","後手 ") + (koma_neutral_nums[7] - _loc3_[7]) + LanguageSelector.EJ("-pawn up for white.","歩得"));
            }
            else
            {
               _loc7_ = _loc7_ + LanguageSelector.EJ("Equal.","互角");
            }
         }
         return _loc7_;
      }
   }
}
