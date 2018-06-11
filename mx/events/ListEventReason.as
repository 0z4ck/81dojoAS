package mx.events
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public final class ListEventReason
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      public static const CANCELLED:String = "cancelled";
      
      public static const OTHER:String = "other";
      
      public static const NEW_ROW:String = "newRow";
       
      
      public function ListEventReason()
      {
         super();
      }
   }
}
