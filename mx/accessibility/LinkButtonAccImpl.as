package mx.accessibility
{
   import mx.controls.LinkButton;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class LinkButtonAccImpl extends ButtonAccImpl
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      public function LinkButtonAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_LINK;
      }
      
      public static function enableAccessibility() : void
      {
         LinkButton.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new LinkButtonAccImpl(param1);
      }
      
      override public function get_accDefaultAction(param1:uint) : String
      {
         return "Jump";
      }
   }
}
