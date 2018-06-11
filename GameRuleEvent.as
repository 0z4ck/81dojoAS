package
{
   import flash.events.Event;
   
   public final class GameRuleEvent extends Event
   {
      
      public static var RULE_SELECTED:String = "rule_selected";
       
      
      public var total:int;
      
      public var byoyomi:int;
      
      public var handicap:String;
      
      public var tournament:String;
      
      public var side:int;
      
      public var comment:String;
      
      public var usedMile:int;
      
      public var password:String;
      
      public function GameRuleEvent(param1:String, param2:int, param3:int, param4:String, param5:String, param6:int = 0, param7:String = "", param8:int = 0, param9:String = "")
      {
         super(param1);
         this.total = param2;
         this.byoyomi = param3;
         this.handicap = param4;
         this.tournament = param5;
         this.side = param6;
         this.comment = param7;
         this.usedMile = param8;
         this.password = param9;
      }
   }
}
