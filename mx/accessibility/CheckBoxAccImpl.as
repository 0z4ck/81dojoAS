package mx.accessibility
{
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class CheckBoxAccImpl extends ButtonAccImpl
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      public function CheckBoxAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_CHECKBUTTON;
      }
      
      public static function enableAccessibility() : void
      {
         CheckBox.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new CheckBoxAccImpl(param1);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         if(Button(master).selected)
         {
            _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_CHECKED;
         }
         return _loc2_;
      }
      
      override public function get_accDefaultAction(param1:uint) : String
      {
         return !!Button(master).selected?"UnCheck":"Check";
      }
   }
}
