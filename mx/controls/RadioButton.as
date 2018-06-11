package mx.controls
{
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IToggleButton;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerGroup;
   import mx.styles.CSSStyleDeclaration;
   
   use namespace mx_internal;
   
   public class RadioButton extends Button implements IFocusManagerGroup, IToggleButton
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      mx_internal static var createAccessibilityImplementation:Function;
       
      
      mx_internal var indexNumber:int = 0;
      
      private var _group:RadioButtonGroup;
      
      mx_internal var _groupName:String;
      
      private var groupChanged:Boolean = false;
      
      private var _value:Object;
      
      public function RadioButton()
      {
         super();
         _labelPlacement = "";
         _toggle = true;
         this.groupName = "radioGroup";
         addEventListener(FlexEvent.ADD,this.addHandler);
         centerContent = false;
         extraSpacing = 8;
      }
      
      override public function get emphasized() : Boolean
      {
         return false;
      }
      
      [Bindable("labelPlacementChanged")]
      override public function get labelPlacement() : String
      {
         var _loc1_:String = ButtonLabelPlacement.RIGHT;
         if(_labelPlacement != "")
         {
            _loc1_ = _labelPlacement;
         }
         else if(this._group && this._group.labelPlacement != "")
         {
            _loc1_ = this._group.labelPlacement;
         }
         return _loc1_;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _loc2_:CSSStyleDeclaration = null;
         super.moduleFactory = param1;
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_4_0)
         {
            _loc2_ = styleManager.getStyleDeclaration("mx.controls.RadioButton");
            if(_loc2_)
            {
               if(_loc2_.getStyle("cornerRadius") === undefined)
               {
                  _loc2_.setStyle("cornerRadius",7);
               }
            }
         }
      }
      
      override public function get toggle() : Boolean
      {
         return super.toggle;
      }
      
      override public function set toggle(param1:Boolean) : void
      {
      }
      
      public function get group() : RadioButtonGroup
      {
         var g:RadioButtonGroup = null;
         if(!document)
         {
            return this._group;
         }
         if(!this._group)
         {
            if(this.groupName && this.groupName != "")
            {
               try
               {
                  g = RadioButtonGroup(document[this.groupName]);
               }
               catch(e:Error)
               {
                  if(document.automaticRadioButtonGroups && document.automaticRadioButtonGroups[groupName])
                  {
                     g = RadioButtonGroup(document.automaticRadioButtonGroups[groupName]);
                  }
               }
               if(!g)
               {
                  g = new RadioButtonGroup(IFlexDisplayObject(document));
                  if(!document.automaticRadioButtonGroups)
                  {
                     document.automaticRadioButtonGroups = {};
                  }
                  document.automaticRadioButtonGroups[this.groupName] = g;
               }
               else if(!(g is RadioButtonGroup))
               {
                  return null;
               }
               this._group = g;
            }
         }
         return this._group;
      }
      
      public function set group(param1:RadioButtonGroup) : void
      {
         this._group = param1;
      }
      
      [Bindable("groupNameChanged")]
      public function get groupName() : String
      {
         return this._groupName;
      }
      
      public function set groupName(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(!param1 || param1 == "")
         {
            return;
         }
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_4_0)
         {
            _loc2_ = "_fx_";
            if(param1.indexOf(_loc2_) == 0)
            {
               _loc3_ = resourceManager.getString("controls","invalidGroupName",[param1,_loc2_]);
               throw ArgumentError(_loc3_);
            }
         }
         this.deleteGroup();
         this._groupName = param1;
         this.groupChanged = true;
         invalidateProperties();
         invalidateDisplayList();
         dispatchEvent(new Event("groupNameChanged"));
      }
      
      [Bindable("valueChanged")]
      public function get value() : Object
      {
         return this._value;
      }
      
      public function set value(param1:Object) : void
      {
         this._value = param1;
         dispatchEvent(new Event("valueChanged"));
         if(selected && this.group)
         {
            this.group.dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
         }
      }
      
      override protected function initializeAccessibility() : void
      {
         if(RadioButton.createAccessibilityImplementation != null)
         {
            RadioButton.createAccessibilityImplementation(this);
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.groupChanged)
         {
            this.addToGroup();
            this.groupChanged = false;
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
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this.groupChanged)
         {
            this.addToGroup();
            this.groupChanged = false;
         }
         if(this._group && _selected && this._group.selection != this)
         {
            this.group.setSelection(this,false);
         }
      }
      
      private function addToGroup() : Object
      {
         var _loc1_:RadioButtonGroup = this.group;
         if(_loc1_)
         {
            _loc1_.addInstance(this);
         }
         return _loc1_;
      }
      
      mx_internal function deleteGroup() : void
      {
         try
         {
            if(document[this.groupName])
            {
               delete document[this.groupName];
            }
            return;
         }
         catch(e:Error)
         {
            try
            {
               if(document.automaticRadioButtonGroups[groupName])
               {
                  delete document.automaticRadioButtonGroups[groupName];
               }
            }
            catch(e1:Error)
            {
            }
            return;
         }
      }
      
      private function setPrev(param1:Boolean = true) : void
      {
         var _loc5_:RadioButton = null;
         var _loc2_:RadioButtonGroup = this.group;
         var _loc3_:IFocusManager = focusManager;
         if(_loc3_)
         {
            _loc3_.showFocusIndicator = true;
         }
         var _loc4_:int = 1;
         while(_loc4_ <= this.indexNumber)
         {
            _loc5_ = _loc2_.getRadioButtonAt(this.indexNumber - _loc4_);
            if(_loc5_ && _loc5_.enabled)
            {
               if(param1)
               {
                  _loc2_.setSelection(_loc5_);
               }
               _loc5_.setFocus();
               return;
            }
            _loc4_++;
         }
         if(param1 && _loc2_.getRadioButtonAt(this.indexNumber) != _loc2_.selection)
         {
            _loc2_.setSelection(this);
         }
         this.drawFocus(true);
      }
      
      private function setNext(param1:Boolean = true) : void
      {
         var _loc5_:RadioButton = null;
         var _loc2_:RadioButtonGroup = this.group;
         var _loc3_:IFocusManager = focusManager;
         if(_loc3_)
         {
            _loc3_.showFocusIndicator = true;
         }
         var _loc4_:int = this.indexNumber + 1;
         while(_loc4_ < _loc2_.numRadioButtons)
         {
            _loc5_ = _loc2_.getRadioButtonAt(_loc4_);
            if(_loc5_ && _loc5_.enabled)
            {
               if(param1)
               {
                  _loc2_.setSelection(_loc5_);
               }
               _loc5_.setFocus();
               return;
            }
            _loc4_++;
         }
         if(param1 && _loc2_.getRadioButtonAt(this.indexNumber) != _loc2_.selection)
         {
            _loc2_.setSelection(this);
         }
         this.drawFocus(true);
      }
      
      private function setThis() : void
      {
         if(!this._group)
         {
            this.addToGroup();
         }
         var _loc1_:RadioButtonGroup = this.group;
         if(_loc1_.selection != this)
         {
            _loc1_.setSelection(this);
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         var _loc2_:uint = mapKeycodeForLayoutDirection(param1);
         switch(_loc2_)
         {
            case Keyboard.DOWN:
               this.setNext(!param1.ctrlKey);
               param1.stopPropagation();
               break;
            case Keyboard.UP:
               this.setPrev(!param1.ctrlKey);
               param1.stopPropagation();
               break;
            case Keyboard.LEFT:
               this.setPrev(!param1.ctrlKey);
               param1.stopPropagation();
               break;
            case Keyboard.RIGHT:
               this.setNext(!param1.ctrlKey);
               param1.stopPropagation();
               break;
            case Keyboard.SPACE:
               this.setThis();
               _toggle = false;
            default:
               super.keyDownHandler(param1);
         }
      }
      
      override protected function keyUpHandler(param1:KeyboardEvent) : void
      {
         super.keyUpHandler(param1);
         if(param1.keyCode == Keyboard.SPACE && !_toggle)
         {
            _toggle = true;
         }
      }
      
      private function addHandler(param1:FlexEvent) : void
      {
         if(!this._group && initialized)
         {
            this.addToGroup();
         }
      }
      
      override protected function clickHandler(param1:MouseEvent) : void
      {
         if(!enabled || selected)
         {
            return;
         }
         if(!this._group)
         {
            this.addToGroup();
         }
         super.clickHandler(param1);
         this.group.setSelection(this);
         var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK);
         _loc2_.label = label;
         _loc2_.index = this.indexNumber;
         _loc2_.relatedObject = this;
         _loc2_.item = this.value;
         this.group.dispatchEvent(_loc2_);
      }
   }
}
