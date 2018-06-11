package
{
   public final class Server
   {
       
      
      public var name:String;
      
      public var description_jp:String;
      
      public var description_en:String;
      
      public var icon:Class;
      
      public var capacity:int;
      
      public var host:String;
      
      public var port:String;
      
      public var alive:Boolean;
      
      public var population:String;
      
      public function Server(param1:String, param2:String, param3:String, param4:Class, param5:String, param6:String, param7:Boolean, param8:int)
      {
         super();
         this.name = param1;
         this.description_en = param2;
         this.description_jp = param3;
         this.capacity = param8;
         this.host = param5;
         this.port = param6;
         this.alive = param7;
         this.icon = param4;
      }
      
      public function get aliveLabel() : String
      {
         if(LanguageSelector.isJapanese())
         {
            return !!this.alive?"稼働中":"×";
         }
         return !!this.alive?"YES":"NO";
      }
      
      public function get description() : String
      {
         return !!LanguageSelector.isJapanese()?this.description_jp:this.description_en;
      }
   }
}
