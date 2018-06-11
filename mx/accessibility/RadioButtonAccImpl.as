package mx.accessibility
{
   import mx.controls.RadioButton;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class RadioButtonAccImpl extends CheckBoxAccImpl
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      public function RadioButtonAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_RADIOBUTTON;
      }
      
      public static function enableAccessibility() : void
      {
         RadioButton.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new RadioButtonAccImpl(param1);
      }
   }
}
