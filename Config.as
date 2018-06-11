package
{
   public final class Config
   {
      
      private static const textDataClass:Class = Config_textDataClass;
      
      private static const fileByteArray:Object = new textDataClass();
      
      private static const codes:Array = fileByteArray.toString().split("\n");
      
      public static const VERSION:String = codes[0].replace(/\r/g,"");
      
      public static const RAILS_HOST:String = codes[1].replace(/\r/g,"");
      
      public static const RAILS_PORT:int = parseInt(codes[2].replace(/\r/g,""));
      
      public static const LANGUAGE_VERSION:String = codes[3].replace(/\r/g,"");
      
      public static const PIECE_VERSION:String = codes[4].replace(/\r/g,"");
      
      public static const RTMFP_DEVKEY:String = codes[5].replace(/\r/g,"");
      
      public static const GOOGLE_MAP_KEY:String = codes[6].replace(/\r/g,"");
      
      public static const VOICE_GROUP_KEY:String = codes[7].replace(/\r/g,"");
      
      public static const MILE_KEY:String = codes[8].replace(/\r/g,"");
      
      public static const TOURNAMENT_PASS:String = codes[9].replace(/\r/g,"");
      
      public static const CLIENT_PASS_EN:String = codes[10].replace(/\r/g,"");
      
      public static const CLIENT_PASS_JP:String = codes[11].replace(/\r/g,"");
      
      public static const GUEST_PASS:String = codes[12].replace(/\r/g,"");
      
      public static const PRIVATE_ROOM_SALT:String = codes[13].replace(/\r/g,"");
      
      public static const ISCUBE_POST_PASS:String = codes[14].replace(/\r/g,"");
      
      public static const JSA_MENJO_PASS:String = codes[15].replace(/\r/g,"");
       
      
      public function Config()
      {
         super();
      }
   }
}
