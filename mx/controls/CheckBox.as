package mx.controls
{
   import flash.text.TextLineMetrics;
   import flash.utils.getQualifiedClassName;
   import mx.core.FlexVersion;
   import mx.core.IToggleButton;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class CheckBox extends Button implements IToggleButton
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      mx_internal static var createAccessibilityImplementation:Function;
       
      
      public function CheckBox()
      {
         super();
         _toggle = true;
         centerContent = false;
         extraSpacing = 8;
      }
      
      override public function set emphasized(param1:Boolean) : void
      {
      }
      
      override public function set toggle(param1:Boolean) : void
      {
      }
      
      override protected function initializeAccessibility() : void
      {
         if(CheckBox.createAccessibilityImplementation != null)
         {
            CheckBox.createAccessibilityImplementation(this);
         }
      }
      
      override protected function measure() : void
      {
         var _loc1_:TextLineMetrics = null;
         var _loc2_:Number = NaN;
         super.measure();
         if(!label && FlexVersion.compatibilityVersion >= FlexVersion.VERSION_4_0 && getQualifiedClassName(currentIcon).indexOf(".spark") >= 0)
         {
            _loc1_ = measureText(label);
            _loc2_ = _loc1_.height + UITextField.TEXT_HEIGHT_PADDING;
            _loc2_ = _loc2_ + (getStyle("paddingTop") + getStyle("paddingBottom"));
            measuredMinHeight = measuredHeight = Math.max(_loc2_,measuredMinHeight);
         }
      }
   }
}
