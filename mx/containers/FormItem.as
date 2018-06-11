package mx.containers
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.containers.utilityClasses.BoxLayout;
   import mx.containers.utilityClasses.Flex;
   import mx.controls.FormItemLabel;
   import mx.controls.Label;
   import mx.core.Container;
   import mx.core.EdgeMetrics;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.ScrollPolicy;
   import mx.core.mx_internal;
   import mx.styles.CSSStyleDeclaration;
   
   use namespace mx_internal;
   
   public class FormItem extends Container
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      private var labelObj:Label;
      
      private var indicatorObj:IFlexDisplayObject;
      
      private var guessedRowWidth:Number;
      
      private var guessedNumColumns:int;
      
      private var numberOfGuesses:int = 0;
      
      mx_internal var verticalLayoutObject:BoxLayout;
      
      private var _label:String = "";
      
      private var labelChanged:Boolean = false;
      
      private var _direction:String = "vertical";
      
      private var _required:Boolean = false;
      
      public function FormItem()
      {
         this.verticalLayoutObject = new BoxLayout();
         super();
         _horizontalScrollPolicy = ScrollPolicy.OFF;
         _verticalScrollPolicy = ScrollPolicy.OFF;
         this.verticalLayoutObject.target = this;
         this.verticalLayoutObject.direction = BoxDirection.VERTICAL;
      }
      
      [Bindable("labelChanged")]
      override public function get label() : String
      {
         return this._label;
      }
      
      override public function set label(param1:String) : void
      {
         this._label = param1;
         this.labelChanged = true;
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
         if(parent is Form)
         {
            Form(parent).invalidateLabelWidth();
         }
         dispatchEvent(new Event("labelChanged"));
      }
      
      [Bindable("directionChanged")]
      public function get direction() : String
      {
         return this._direction;
      }
      
      public function set direction(param1:String) : void
      {
         this._direction = param1;
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("directionChanged"));
      }
      
      [Bindable("itemLabelChanged")]
      public function get itemLabel() : Label
      {
         return this.labelObj;
      }
      
      [Bindable("requiredChanged")]
      public function get required() : Boolean
      {
         return this._required;
      }
      
      public function set required(param1:Boolean) : void
      {
         if(param1 != this._required)
         {
            this._required = param1;
            invalidateDisplayList();
            dispatchEvent(new Event("requiredChanged"));
         }
      }
      
      override protected function createChildren() : void
      {
         var _loc1_:String = null;
         var _loc2_:CSSStyleDeclaration = null;
         super.createChildren();
         if(!this.labelObj)
         {
            this.labelObj = new FormItemLabel();
            _loc1_ = getStyle("labelStyleName");
            if(_loc1_)
            {
               _loc2_ = styleManager.getMergedStyleDeclaration("." + _loc1_);
               if(_loc2_)
               {
                  this.labelObj.styleDeclaration = _loc2_;
               }
            }
            rawChildren.addChild(this.labelObj);
            dispatchEvent(new Event("itemLabelChanged"));
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.labelChanged)
         {
            this.labelObj.text = this.label;
            this.labelObj.validateSize();
            this.labelChanged = false;
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(this.direction == FormItemDirection.VERTICAL)
         {
            this.measureVertical();
         }
         else
         {
            this.measureHorizontal();
         }
      }
      
      private function measureVertical() : void
      {
         this.verticalLayoutObject.measure();
         var _loc1_:Number = this.calculateLabelWidth() + getStyle("indicatorGap");
         measuredMinWidth = measuredMinWidth + _loc1_;
         measuredWidth = measuredWidth + _loc1_;
         var _loc2_:Number = this.labelObj.getExplicitOrMeasuredHeight();
         measuredMinHeight = Math.max(measuredMinHeight,_loc2_);
         measuredHeight = Math.max(measuredHeight,_loc2_);
      }
      
      private function measureHorizontal() : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc14_:int = 0;
         var _loc16_:IUIComponent = null;
         var _loc1_:int = this.guessedNumColumns = this.calcNumColumns(this.guessedRowWidth);
         var _loc2_:Number = getStyle("horizontalGap");
         var _loc3_:Number = getStyle("verticalGap");
         var _loc4_:Number = getStyle("indicatorGap");
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         var _loc10_:Number = 0;
         _loc11_ = 0;
         _loc12_ = 0;
         var _loc13_:Number = 0;
         var _loc15_:int = 0;
         if(_loc1_ < numChildren)
         {
            _loc14_ = 0;
            while(_loc14_ < numChildren)
            {
               _loc16_ = getLayoutChildAt(_loc14_);
               if(_loc16_.includeInLayout)
               {
                  _loc13_ = Math.max(_loc13_,_loc16_.getExplicitOrMeasuredWidth());
               }
               _loc14_++;
            }
         }
         var _loc17_:int = 0;
         _loc14_ = 0;
         while(_loc14_ < numChildren)
         {
            _loc16_ = getLayoutChildAt(_loc14_);
            if(_loc16_.includeInLayout)
            {
               _loc5_ = _loc5_ + (!isNaN(_loc16_.percentWidth)?_loc16_.minWidth:_loc16_.getExplicitOrMeasuredWidth());
               _loc6_ = _loc6_ + (_loc13_ > 0?_loc13_:_loc16_.getExplicitOrMeasuredWidth());
               if(_loc15_ > 0)
               {
                  _loc5_ = _loc5_ + _loc2_;
                  _loc6_ = _loc6_ + _loc2_;
               }
               _loc7_ = Math.max(_loc7_,!isNaN(_loc16_.percentHeight)?Number(_loc16_.minHeight):Number(_loc16_.getExplicitOrMeasuredHeight()));
               _loc8_ = Math.max(_loc8_,_loc16_.getExplicitOrMeasuredHeight());
               _loc15_++;
               if(_loc15_ >= _loc1_ || _loc14_ == numChildren - 1)
               {
                  _loc9_ = Math.max(_loc9_,_loc5_);
                  _loc11_ = Math.max(_loc11_,_loc6_);
                  _loc10_ = _loc10_ + _loc7_;
                  _loc12_ = _loc12_ + _loc8_;
                  if(_loc17_ > 0)
                  {
                     _loc10_ = _loc10_ + _loc3_;
                     _loc12_ = _loc12_ + _loc3_;
                  }
                  _loc15_ = 0;
                  _loc17_++;
                  _loc5_ = 0;
                  _loc6_ = 0;
                  _loc7_ = 0;
                  _loc8_ = 0;
               }
            }
            _loc14_++;
         }
         var _loc18_:Number = this.calculateLabelWidth() + _loc4_;
         _loc9_ = _loc9_ + _loc18_;
         _loc11_ = _loc11_ + _loc18_;
         if(this.label != null && this.label != "")
         {
            _loc10_ = Math.max(_loc10_,this.labelObj.getExplicitOrMeasuredHeight());
            _loc12_ = Math.max(_loc12_,this.labelObj.getExplicitOrMeasuredHeight());
         }
         var _loc19_:EdgeMetrics = viewMetricsAndPadding;
         _loc10_ = _loc10_ + (_loc19_.top + _loc19_.bottom);
         _loc9_ = _loc9_ + (_loc19_.left + _loc19_.right);
         _loc12_ = _loc12_ + (_loc19_.top + _loc19_.bottom);
         _loc11_ = _loc11_ + (_loc19_.left + _loc19_.right);
         measuredMinWidth = _loc9_;
         measuredMinHeight = _loc10_;
         measuredWidth = _loc11_;
         measuredHeight = _loc12_;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc7_:IUIComponent = null;
         var _loc8_:Number = NaN;
         super.updateDisplayList(param1,param2);
         if(this.direction == FormItemDirection.VERTICAL)
         {
            this.updateDisplayListVerticalChildren(param1,param2);
         }
         else
         {
            this.updateDisplayListHorizontalChildren(param1,param2);
         }
         var _loc3_:EdgeMetrics = viewMetricsAndPadding;
         var _loc4_:Number = _loc3_.left;
         var _loc5_:Number = _loc3_.top;
         var _loc6_:Number = this.calculateLabelWidth();
         if(numChildren > 0)
         {
            _loc7_ = getLayoutChildAt(0);
            _loc8_ = _loc7_.baselinePosition;
            if(!isNaN(_loc8_))
            {
               _loc5_ = _loc5_ + (_loc8_ - this.labelObj.baselinePosition);
            }
         }
         this.labelObj.setActualSize(_loc6_,this.labelObj.getExplicitOrMeasuredHeight());
         this.labelObj.move(_loc4_,_loc5_);
         _loc4_ = _loc4_ + _loc6_;
         this.displayIndicator(_loc4_,_loc5_);
      }
      
      private function updateDisplayListVerticalChildren(param1:Number, param2:Number) : void
      {
         var _loc5_:IUIComponent = null;
         var _loc3_:Number = this.calculateLabelWidth() + getStyle("indicatorGap");
         if(!isNaN(explicitMinWidth))
         {
            _explicitMinWidth = _explicitMinWidth - _loc3_;
         }
         else if(!isNaN(measuredMinWidth))
         {
            measuredMinWidth = measuredMinWidth - _loc3_;
         }
         this.verticalLayoutObject.updateDisplayList(param1 - _loc3_,param2);
         if(!isNaN(explicitMinWidth))
         {
            _explicitMinWidth = _explicitMinWidth + _loc3_;
         }
         else if(!isNaN(measuredMinWidth))
         {
            measuredMinWidth = measuredMinWidth + _loc3_;
         }
         var _loc4_:Number = numChildren;
         var _loc6_:Number = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = getLayoutChildAt(_loc6_);
            _loc5_.move(_loc5_.x + _loc3_,_loc5_.y);
            _loc6_++;
         }
      }
      
      private function updateDisplayListHorizontalChildren(param1:Number, param2:Number) : void
      {
         var _loc17_:int = 0;
         var _loc18_:IUIComponent = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Boolean = false;
         var _loc40_:Array = null;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc3_:EdgeMetrics = viewMetricsAndPadding;
         var _loc4_:Number = this.calculateLabelWidth();
         var _loc5_:Number = getStyle("indicatorGap");
         var _loc6_:Number = getStyle("horizontalGap");
         var _loc7_:Number = getStyle("verticalGap");
         var _loc8_:Number = getStyle("paddingLeft");
         var _loc9_:Number = getStyle("paddingTop");
         var _loc10_:Number = this.getHorizontalAlignValue();
         var _loc11_:Number = scaleX > 0 && scaleX != 1?Number(minWidth / Math.abs(scaleX)):Number(minWidth);
         var _loc12_:Number = scaleY > 0 && scaleY != 1?Number(minHeight / Math.abs(scaleY)):Number(minHeight);
         var _loc13_:Number = Math.max(param1,_loc11_) - _loc3_.left - _loc3_.right;
         var _loc14_:Number = Math.max(param2,_loc12_) - _loc3_.top - _loc3_.bottom;
         var _loc15_:Number = 0;
         var _loc16_:Number = _loc13_ - _loc4_ - _loc5_;
         if(_loc16_ < 0)
         {
            _loc16_ = 0;
         }
         var _loc21_:int = this.calcNumColumns(_loc16_);
         var _loc22_:int = 0;
         if(_loc21_ != this.guessedNumColumns && isNaN(explicitWidth))
         {
            if(this.numberOfGuesses < 2)
            {
               this.guessedRowWidth = _loc16_;
               this.numberOfGuesses++;
               invalidateSize();
               return;
            }
            _loc21_ = this.guessedNumColumns;
            this.numberOfGuesses = 0;
         }
         else
         {
            this.numberOfGuesses = 0;
         }
         var _loc23_:Number = _loc8_ + _loc4_ + _loc5_;
         var _loc24_:Number = _loc9_;
         var _loc25_:Number = _loc23_;
         var _loc26_:Number = _loc24_;
         var _loc31_:int = numChildren;
         _loc17_ = 0;
         while(_loc17_ < numChildren)
         {
            if(!IUIComponent(getChildAt(_loc17_)).includeInLayout)
            {
               _loc31_--;
            }
            _loc17_++;
         }
         if(_loc21_ == _loc31_)
         {
            _loc32_ = Flex.flexChildWidthsProportionally(this,_loc16_ - (_loc31_ - 1) * _loc6_,_loc14_);
            _loc23_ = _loc23_ + _loc32_ * _loc10_;
            _loc17_ = 0;
            while(_loc17_ < numChildren)
            {
               _loc18_ = getLayoutChildAt(_loc17_);
               if(_loc18_.includeInLayout)
               {
                  _loc18_.move(Math.floor(_loc23_),_loc24_);
                  _loc23_ = _loc23_ + (_loc18_.width + _loc6_);
               }
               _loc17_++;
            }
         }
         else
         {
            _loc17_ = 0;
            while(_loc17_ < numChildren)
            {
               _loc18_ = getLayoutChildAt(_loc17_);
               if(_loc18_.includeInLayout)
               {
                  _loc27_ = _loc18_.getExplicitOrMeasuredWidth();
                  _loc29_ = _loc18_.percentWidth;
                  _loc19_ = !isNaN(_loc29_)?Number(_loc29_ * _loc16_ / 100):Number(_loc27_);
                  _loc19_ = Math.max(_loc18_.minWidth,Math.min(_loc18_.maxWidth,_loc19_));
                  _loc15_ = Math.max(_loc15_,_loc19_);
               }
               _loc17_++;
            }
            _loc15_ = Math.min(_loc15_,Math.floor((_loc16_ - (_loc21_ - 1) * _loc6_) / _loc21_));
            _loc33_ = _loc16_ - (_loc21_ * _loc15_ + (_loc21_ - 1) * _loc6_);
            if(_loc33_ < 0)
            {
               _loc33_ = 0;
            }
            _loc23_ = _loc23_ + _loc33_ * _loc10_;
            _loc34_ = 0;
            _loc35_ = 0;
            _loc36_ = 0;
            _loc37_ = _loc14_;
            _loc38_ = _loc37_;
            _loc22_ = 0;
            _loc17_ = 0;
            while(_loc17_ < numChildren)
            {
               _loc18_ = getLayoutChildAt(_loc17_);
               if(!_loc18_.includeInLayout)
               {
                  if(_loc17_ == numChildren - 1)
                  {
                     _loc38_ = _loc38_ - _loc35_;
                     if(_loc17_ != numChildren - 1)
                     {
                        _loc38_ = _loc38_ - _loc7_;
                     }
                     if(_loc35_ > 0 && _loc34_ > 0)
                     {
                        _loc34_ = Math.max(0,_loc34_ - 100 * _loc35_ / _loc37_);
                     }
                     _loc36_ = _loc36_ + _loc34_;
                     _loc35_ = 0;
                     _loc34_ = 0;
                     _loc22_ = 0;
                  }
               }
               else
               {
                  if(!isNaN(_loc18_.percentHeight))
                  {
                     _loc34_ = Math.max(_loc34_,_loc18_.percentHeight);
                  }
                  else
                  {
                     _loc35_ = Math.max(_loc35_,_loc18_.getExplicitOrMeasuredHeight());
                  }
                  if(++_loc22_ >= _loc21_ || _loc17_ == numChildren - 1)
                  {
                     _loc38_ = _loc38_ - _loc35_;
                     if(_loc17_ != numChildren - 1)
                     {
                        _loc38_ = _loc38_ - _loc7_;
                     }
                     if(_loc35_ > 0 && _loc34_ > 0)
                     {
                        _loc34_ = Math.max(0,_loc34_ - 100 * _loc35_ / _loc37_);
                     }
                     _loc36_ = _loc36_ + _loc34_;
                     _loc35_ = 0;
                     _loc34_ = 0;
                     _loc22_ = 0;
                  }
               }
               _loc17_++;
            }
            _loc39_ = false;
            _loc40_ = new Array(numChildren);
            _loc17_ = 0;
            while(_loc17_ < numChildren)
            {
               _loc40_[_loc17_] = -1;
               _loc17_++;
            }
            _loc41_ = _loc38_ - _loc37_ * _loc36_ / 100;
            if(_loc41_ > 0)
            {
               _loc38_ = _loc38_ - _loc41_;
            }
            do
            {
               _loc39_ = true;
               _loc42_ = _loc38_ / _loc36_;
               _loc22_ = 0;
               _loc25_ = _loc23_;
               _loc26_ = _loc24_;
               _loc43_ = 0;
               _loc17_ = 0;
               while(_loc17_ < numChildren)
               {
                  _loc18_ = getLayoutChildAt(_loc17_);
                  if(_loc18_.includeInLayout)
                  {
                     _loc27_ = _loc18_.getExplicitOrMeasuredWidth();
                     _loc28_ = _loc18_.getExplicitOrMeasuredHeight();
                     _loc29_ = _loc18_.percentWidth;
                     _loc30_ = _loc18_.percentHeight;
                     _loc19_ = Math.min(_loc15_,!isNaN(_loc29_)?Number(_loc29_ * _loc16_ / 100):Number(_loc27_));
                     _loc19_ = Math.max(_loc18_.minWidth,Math.min(_loc18_.maxWidth,_loc19_));
                     if(_loc40_[_loc17_] != -1)
                     {
                        _loc20_ = _loc40_[_loc17_];
                     }
                     else
                     {
                        _loc20_ = !isNaN(_loc30_)?Number(_loc30_ * _loc42_):Number(_loc28_);
                        if(_loc20_ < _loc18_.minHeight)
                        {
                           _loc20_ = _loc18_.minHeight;
                           _loc36_ = _loc36_ - _loc18_.percentHeight;
                           _loc38_ = _loc38_ - _loc20_;
                           _loc40_[_loc17_] = _loc20_;
                           _loc39_ = false;
                           break;
                        }
                        if(_loc20_ > _loc18_.maxHeight)
                        {
                           _loc20_ = _loc18_.maxHeight;
                           _loc36_ = _loc36_ - _loc18_.percentHeight;
                           _loc38_ = _loc38_ - _loc20_;
                           _loc40_[_loc17_] = _loc20_;
                           _loc39_ = false;
                           break;
                        }
                     }
                     if(_loc18_.scaleX == 1 && _loc18_.scaleY == 1)
                     {
                        _loc18_.setActualSize(Math.floor(_loc19_),Math.floor(_loc20_));
                     }
                     else
                     {
                        _loc18_.setActualSize(_loc19_,_loc20_);
                     }
                     _loc44_ = (_loc15_ - _loc18_.width) * _loc10_;
                     _loc18_.move(Math.floor(_loc25_ + _loc44_),Math.floor(_loc26_));
                     _loc43_ = Math.max(_loc43_,_loc18_.height);
                     if(++_loc22_ >= _loc21_)
                     {
                        _loc25_ = _loc23_;
                        _loc22_ = 0;
                        _loc26_ = _loc26_ + (_loc43_ + _loc7_);
                        _loc43_ = 0;
                     }
                     else
                     {
                        _loc25_ = _loc25_ + (_loc15_ + _loc6_);
                     }
                  }
                  _loc17_++;
               }
            }
            while(!_loc39_);
            
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:CSSStyleDeclaration = null;
         super.styleChanged(param1);
         var _loc2_:Boolean = param1 == null || param1 == "styleName";
         if(_loc2_ || param1 == "labelStyleName")
         {
            if(this.labelObj)
            {
               _loc3_ = getStyle("labelStyleName");
               if(_loc3_)
               {
                  _loc4_ = styleManager.getMergedStyleDeclaration("." + _loc3_);
                  if(_loc4_)
                  {
                     this.labelObj.styleDeclaration = _loc4_;
                     this.labelObj.regenerateStyleCache(true);
                  }
               }
            }
         }
      }
      
      function getPreferredLabelWidth() : Number
      {
         if(!this.label || this.label == "")
         {
            return 0;
         }
         if(isNaN(this.labelObj.measuredWidth))
         {
            this.labelObj.validateSize();
         }
         var _loc1_:Number = this.labelObj.measuredWidth;
         if(isNaN(_loc1_))
         {
            return 0;
         }
         return _loc1_;
      }
      
      private function calculateLabelWidth() : Number
      {
         var _loc1_:Number = getStyle("labelWidth");
         if(_loc1_ == 0)
         {
            _loc1_ = NaN;
         }
         if(isNaN(_loc1_) && parent is Form)
         {
            _loc1_ = Form(parent).calculateLabelWidth();
         }
         if(isNaN(_loc1_))
         {
            _loc1_ = this.getPreferredLabelWidth();
         }
         return _loc1_;
      }
      
      private function calcNumColumns(param1:Number) : int
      {
         var _loc7_:IUIComponent = null;
         var _loc8_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = getStyle("horizontalGap");
         if(this.direction != FormItemDirection.HORIZONTAL)
         {
            return 1;
         }
         var _loc5_:Number = numChildren;
         var _loc6_:int = 0;
         while(_loc6_ < numChildren)
         {
            _loc7_ = getLayoutChildAt(_loc6_);
            if(!_loc7_.includeInLayout)
            {
               _loc5_--;
            }
            else
            {
               _loc8_ = _loc7_.getExplicitOrMeasuredWidth();
               _loc3_ = Math.max(_loc3_,_loc8_);
               _loc2_ = _loc2_ + _loc8_;
               if(_loc6_ > 0)
               {
                  _loc2_ = _loc2_ + _loc4_;
               }
            }
            _loc6_++;
         }
         if(isNaN(param1) || _loc2_ <= param1)
         {
            return _loc5_;
         }
         if(_loc3_ * 2 <= param1)
         {
            return 2;
         }
         return 1;
      }
      
      private function displayIndicator(param1:Number, param2:Number) : void
      {
         var _loc3_:Class = null;
         if(this.required)
         {
            if(!this.indicatorObj)
            {
               _loc3_ = getStyle("indicatorSkin") as Class;
               this.indicatorObj = IFlexDisplayObject(new _loc3_());
               rawChildren.addChild(DisplayObject(this.indicatorObj));
            }
            this.indicatorObj.x = param1 + (getStyle("indicatorGap") - this.indicatorObj.width) / 2;
            if(this.labelObj)
            {
               this.indicatorObj.y = param2 + (this.labelObj.getExplicitOrMeasuredHeight() - this.indicatorObj.measuredHeight) / 2;
            }
         }
         else if(this.indicatorObj)
         {
            rawChildren.removeChild(DisplayObject(this.indicatorObj));
            this.indicatorObj = null;
         }
      }
      
      mx_internal function getHorizontalAlignValue() : Number
      {
         var _loc1_:String = getStyle("horizontalAlign");
         if(_loc1_ == "center")
         {
            return 0.5;
         }
         if(_loc1_ == "right")
         {
            return 1;
         }
         return 0;
      }
   }
}
