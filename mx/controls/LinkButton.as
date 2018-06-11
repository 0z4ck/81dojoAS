package mx.controls
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class LinkButton extends Button
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      mx_internal static var createAccessibilityImplementation:Function;
       
      
      public function LinkButton()
      {
         super();
         buttonMode = true;
         extraSpacing = 4;
      }
      
      override public function set emphasized(param1:Boolean) : void
      {
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         buttonMode = param1;
      }
      
      override protected function initializeAccessibility() : void
      {
         if(createAccessibilityImplementation != null)
         {
            createAccessibilityImplementation(this);
         }
      }
   }
}
