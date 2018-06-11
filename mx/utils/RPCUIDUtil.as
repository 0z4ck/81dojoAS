package mx.utils
{
   import flash.utils.ByteArray;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class RPCUIDUtil
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      private static const ALPHA_CHAR_CODES:Array = [48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70];
       
      
      public function RPCUIDUtil()
      {
         super();
      }
      
      public static function createUID() : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Array = new Array(36);
         var _loc2_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < 8)
         {
            _loc1_[_loc2_++] = ALPHA_CHAR_CODES[Math.floor(Math.random() * 16)];
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < 3)
         {
            _loc1_[_loc2_++] = 45;
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               _loc1_[_loc2_++] = ALPHA_CHAR_CODES[Math.floor(Math.random() * 16)];
               _loc4_++;
            }
            _loc3_++;
         }
         _loc1_[_loc2_++] = 45;
         var _loc5_:Number = new Date().getTime();
         var _loc6_:String = ("0000000" + _loc5_.toString(16).toUpperCase()).substr(-8);
         _loc3_ = 0;
         while(_loc3_ < 8)
         {
            _loc1_[_loc2_++] = _loc6_.charCodeAt(_loc3_);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc1_[_loc2_++] = ALPHA_CHAR_CODES[Math.floor(Math.random() * 16)];
            _loc3_++;
         }
         return String.fromCharCode.apply(null,_loc1_);
      }
      
      public static function fromByteArray(param1:ByteArray) : String
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         if(param1 != null && param1.length >= 16 && param1.bytesAvailable >= 16)
         {
            _loc2_ = new Array(36);
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < 16)
            {
               if(_loc4_ == 4 || _loc4_ == 6 || _loc4_ == 8 || _loc4_ == 10)
               {
                  _loc2_[_loc3_++] = 45;
               }
               _loc5_ = param1.readByte();
               _loc2_[_loc3_++] = ALPHA_CHAR_CODES[(_loc5_ & 240) >>> 4];
               _loc2_[_loc3_++] = ALPHA_CHAR_CODES[_loc5_ & 15];
               _loc4_++;
            }
            return String.fromCharCode.apply(null,_loc2_);
         }
         return null;
      }
      
      public static function isUID(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:Number = NaN;
         if(param1 != null && param1.length == 36)
         {
            _loc2_ = 0;
            while(_loc2_ < 36)
            {
               _loc3_ = param1.charCodeAt(_loc2_);
               if(_loc2_ == 8 || _loc2_ == 13 || _loc2_ == 18 || _loc2_ == 23)
               {
                  if(_loc3_ != 45)
                  {
                     return false;
                  }
               }
               else if(_loc3_ < 48 || _loc3_ > 70 || _loc3_ > 57 && _loc3_ < 65)
               {
                  return false;
               }
               _loc2_++;
            }
            return true;
         }
         return false;
      }
      
      public static function toByteArray(param1:String) : ByteArray
      {
         var _loc2_:ByteArray = null;
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         if(isUID(param1))
         {
            _loc2_ = new ByteArray();
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               _loc4_ = param1.charAt(_loc3_);
               if(_loc4_ != "-")
               {
                  _loc5_ = getDigit(_loc4_);
                  _loc3_++;
                  _loc6_ = getDigit(param1.charAt(_loc3_));
                  _loc2_.writeByte((_loc5_ << 4 | _loc6_) & 255);
               }
               _loc3_++;
            }
            _loc2_.position = 0;
            return _loc2_;
         }
         return null;
      }
      
      private static function getDigit(param1:String) : uint
      {
         switch(param1)
         {
            case "A":
            case "a":
               return 10;
            case "B":
            case "b":
               return 11;
            case "C":
            case "c":
               return 12;
            case "D":
            case "d":
               return 13;
            case "E":
            case "e":
               return 14;
            case "F":
            case "f":
               return 15;
            default:
               return new uint(param1);
         }
      }
   }
}
