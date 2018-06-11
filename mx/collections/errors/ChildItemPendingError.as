package mx.collections.errors
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ChildItemPendingError extends ItemPendingError
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      public function ChildItemPendingError(param1:String)
      {
         super(param1);
      }
   }
}
