package
{
   public final class Koma
   {
      
      public static const KOMA_WIDTH:int = 43;
      
      public static const KOMA_HEIGHT:int = 48;
      
      public static const OU:int = 0;
      
      public static const HI:int = 1;
      
      public static const KA:int = 2;
      
      public static const KI:int = 3;
      
      public static const GI:int = 4;
      
      public static const KE:int = 5;
      
      public static const KY:int = 6;
      
      public static const FU:int = 7;
      
      public static const PROMOTE:int = 8;
      
      private static const kyoto_conversion:Array = new Array(0,7,4,5,2,3,15,1,8,9,10,11,12,13,14,6);
       
      
      private var _ownerPlayer:int;
      
      private var _type:int;
      
      private var _x:int;
      
      private var _y:int;
      
      private var _images:Array;
      
      public function Koma(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this._type = param1;
         this._x = param2;
         this._y = param3;
         this._ownerPlayer = param4;
      }
      
      public static function typeKyotoConverted(param1:int, param2:Boolean = false) : int
      {
         if(param2 && kyoto_conversion[param1] > param1)
         {
            return param1;
         }
         return kyoto_conversion[param1];
      }
      
      public function set ownerPlayer(param1:int) : void
      {
         this._ownerPlayer = param1;
      }
      
      public function get ownerPlayer() : int
      {
         return this._ownerPlayer;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set x(param1:int) : void
      {
         this._x = param1;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function set y(param1:int) : void
      {
         this._y = param1;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function isPromoted() : Boolean
      {
         return this._type >= PROMOTE;
      }
      
      public function promote() : void
      {
         if(this._type < PROMOTE)
         {
            this._type = this._type + PROMOTE;
         }
      }
      
      public function depromote() : void
      {
         if(this._type > PROMOTE)
         {
            this._type = this._type - PROMOTE;
         }
      }
      
      public function convertKyoto(param1:Boolean = false) : void
      {
         this._type = typeKyotoConverted(this._type,param1);
      }
   }
}
