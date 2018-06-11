package mx.controls.tabBarClasses
{
   import flash.display.DisplayObject;
   import flash.text.TextLineMetrics;
   import mx.controls.Button;
   import mx.core.IFlexDisplayObject;
   import mx.core.IProgrammaticSkin;
   import mx.core.IStateClient;
   import mx.core.mx_internal;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class Tab extends Button
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      private var focusSkin:IFlexDisplayObject;
      
      public function Tab()
      {
         super();
         focusEnabled = false;
      }
      
      override public function measureText(param1:String) : TextLineMetrics
      {
         return textField.styleName == this?super.measureText(param1):textField.getUITextFormat().measureText(param1);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(currentIcon)
         {
            currentIcon.scaleX = 1;
            currentIcon.scaleY = 1;
         }
         this.viewIcon();
      }
      
      override public function drawFocus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Class = null;
         if(param1 && !selected && !isEffectStarted)
         {
            if(!this.focusSkin)
            {
               _loc2_ = false;
               _loc3_ = getStyle(overSkinName);
               if(!_loc3_)
               {
                  _loc3_ = getStyle(skinName);
                  _loc2_ = true;
               }
               if(_loc3_)
               {
                  this.focusSkin = new _loc3_();
                  DisplayObject(this.focusSkin).name = overSkinName;
                  if(this.focusSkin is ISimpleStyleClient)
                  {
                     ISimpleStyleClient(this.focusSkin).styleName = this;
                  }
                  addChild(DisplayObject(this.focusSkin));
                  if(_loc2_ && !(this.focusSkin is IProgrammaticSkin) && this.focusSkin is IStateClient)
                  {
                     IStateClient(this.focusSkin).currentState = "over";
                  }
               }
            }
            invalidateDisplayList();
            validateNow();
         }
         else if(this.focusSkin)
         {
            removeChild(DisplayObject(this.focusSkin));
            this.focusSkin = null;
         }
      }
      
      override mx_internal function layoutContents(param1:Number, param2:Number, param3:Boolean) : void
      {
         super.layoutContents(param1,param2,param3);
         if(selected)
         {
            textField.y++;
            if(currentIcon)
            {
               currentIcon.y++;
            }
         }
         if(currentSkin)
         {
            setChildIndex(DisplayObject(currentSkin),numChildren - 1);
         }
         if(this.focusSkin && !selected)
         {
            this.focusSkin.setActualSize(param1,param2);
            setChildIndex(DisplayObject(this.focusSkin),numChildren - 1);
         }
         if(currentIcon)
         {
            setChildIndex(DisplayObject(currentIcon),numChildren - 1);
         }
         if(textField)
         {
            setChildIndex(DisplayObject(textField),numChildren - 1);
         }
      }
      
      override mx_internal function viewIcon() : void
      {
         var _loc1_:Number = NaN;
         super.viewIcon();
         if(currentIcon)
         {
            if(height != 0 && currentIcon.height > height - 4)
            {
               _loc1_ = (height - 4) / currentIcon.height;
               currentIcon.scaleX = _loc1_;
               currentIcon.scaleY = _loc1_;
               invalidateSize();
               if(height > 0)
               {
                  this.layoutContents(width,height,false);
               }
            }
         }
      }
   }
}
