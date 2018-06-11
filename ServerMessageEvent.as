package
{
   import flash.events.Event;
   
   public final class ServerMessageEvent extends Event
   {
       
      
      public var message:String;
      
      public function ServerMessageEvent(param1:String, param2:String)
      {
         super(param1);
         this.message = param2;
      }
   }
}
