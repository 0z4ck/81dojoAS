package mx.containers
{
   import flash.display.DisplayObject;
   import mx.containers.utilityClasses.BoxLayout;
   import mx.controls.Label;
   import mx.core.Container;
   import mx.core.IFlexModuleFactory;
   import mx.core.IInvalidating;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Form extends Container
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      mx_internal var layoutObject:BoxLayout;
      
      private var measuredLabelWidth:Number;
      
      public function Form()
      {
         this.layoutObject = new BoxLayout();
         super();
         showInAutomationHierarchy = true;
         this.layoutObject.target = this;
         this.layoutObject.direction = BoxDirection.VERTICAL;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         styleManager.registerInheritingStyle("labelWidth");
         styleManager.registerSizeInvalidatingStyle("labelWidth");
         styleManager.registerInheritingStyle("indicatorGap");
         styleManager.registerSizeInvalidatingStyle("indicatorGap");
      }
      
      [Bindable("updateComplete")]
      public function get maxLabelWidth() : Number
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:Label = null;
         var _loc1_:int = numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(_loc3_ is FormItem)
            {
               _loc4_ = FormItem(_loc3_).itemLabel;
               if(_loc4_)
               {
                  return _loc4_.width;
               }
            }
            _loc2_++;
         }
         return 0;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         this.invalidateLabelWidth();
         return super.addChild(param1);
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         this.invalidateLabelWidth();
         return super.addChildAt(param1,param2);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         this.invalidateLabelWidth();
         return super.removeChild(param1);
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         this.invalidateLabelWidth();
         return super.removeChildAt(param1);
      }
      
      override protected function measure() : void
      {
         super.measure();
         this.layoutObject.measure();
         this.calculateLabelWidth();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         this.layoutObject.updateDisplayList(param1,param2);
      }
      
      override public function styleChanged(param1:String) : void
      {
         if(!param1 || param1 == "styleName" || styleManager.isSizeInvalidatingStyle(param1))
         {
            this.invalidateLabelWidth();
         }
         super.styleChanged(param1);
      }
      
      function invalidateLabelWidth() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:IUIComponent = null;
         if(!isNaN(this.measuredLabelWidth) && initialized)
         {
            this.measuredLabelWidth = NaN;
            _loc1_ = numChildren;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = IUIComponent(getChildAt(_loc2_));
               if(_loc3_ is IInvalidating)
               {
                  IInvalidating(_loc3_).invalidateSize();
               }
               _loc2_++;
            }
         }
      }
      
      function calculateLabelWidth() : Number
      {
         var _loc5_:DisplayObject = null;
         if(!isNaN(this.measuredLabelWidth))
         {
            return this.measuredLabelWidth;
         }
         var _loc1_:Number = 0;
         var _loc2_:Boolean = false;
         var _loc3_:int = numChildren;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = getChildAt(_loc4_);
            if(_loc5_ is FormItem && FormItem(_loc5_).includeInLayout)
            {
               _loc1_ = Math.max(_loc1_,FormItem(_loc5_).getPreferredLabelWidth());
               _loc2_ = true;
            }
            _loc4_++;
         }
         if(_loc2_)
         {
            this.measuredLabelWidth = _loc1_;
         }
         return _loc1_;
      }
   }
}
