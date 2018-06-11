package mx.controls
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import mx.core.FlexGlobals;
   import mx.core.IFlexDisplayObject;
   import mx.core.IMXMLObject;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class RadioButtonGroup extends EventDispatcher implements IMXMLObject
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      private var document:IFlexDisplayObject;
      
      private var radioButtons:Array;
      
      private var _labelPlacement:String = "right";
      
      private var _selectedValue:Object;
      
      private var _selection:RadioButton;
      
      public function RadioButtonGroup(param1:IFlexDisplayObject = null)
      {
         this.radioButtons = [];
         super();
      }
      
      [Bindable("enabledChanged")]
      public function get enabled() : Boolean
      {
         var _loc1_:Number = 0;
         var _loc2_:int = this.numRadioButtons;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = _loc1_ + this.getRadioButtonAt(_loc3_).enabled;
            _loc3_++;
         }
         if(_loc1_ == 0)
         {
            return false;
         }
         if(_loc1_ == _loc2_)
         {
            return true;
         }
         return false;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:int = this.numRadioButtons;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.getRadioButtonAt(_loc3_).enabled = param1;
            _loc3_++;
         }
         dispatchEvent(new Event("enabledChanged"));
      }
      
      [Bindable("labelPlacementChanged")]
      public function get labelPlacement() : String
      {
         return this._labelPlacement;
      }
      
      public function set labelPlacement(param1:String) : void
      {
         this._labelPlacement = param1;
         var _loc2_:int = this.numRadioButtons;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.getRadioButtonAt(_loc3_).labelPlacement = param1;
            _loc3_++;
         }
      }
      
      [Bindable("numRadioButtonsChanged")]
      public function get numRadioButtons() : int
      {
         return this.radioButtons.length;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedValue() : Object
      {
         if(this.selection)
         {
            return this.selection.value != null?this.selection.value:this.selection.label;
         }
         return null;
      }
      
      public function set selectedValue(param1:Object) : void
      {
         var _loc4_:RadioButton = null;
         this._selectedValue = param1;
         if(param1 == null)
         {
            this.setSelection(null,false);
            return;
         }
         var _loc2_:int = this.numRadioButtons;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.getRadioButtonAt(_loc3_);
            if(_loc4_.value == param1 || _loc4_.label == param1)
            {
               this.changeSelection(_loc3_,false);
               break;
            }
            _loc3_++;
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selection() : RadioButton
      {
         return this._selection;
      }
      
      public function set selection(param1:RadioButton) : void
      {
         this.setSelection(param1,false);
      }
      
      public function initialized(param1:Object, param2:String) : void
      {
         this.document = !!param1?IFlexDisplayObject(param1):IFlexDisplayObject(FlexGlobals.topLevelApplication);
      }
      
      public function getRadioButtonAt(param1:int) : RadioButton
      {
         return RadioButton(this.radioButtons[param1]);
      }
      
      mx_internal function addInstance(param1:RadioButton) : void
      {
         param1.addEventListener(Event.REMOVED,this.radioButton_removedHandler);
         this.radioButtons.push(param1);
         this.radioButtons.sort(this.breadthOrderCompare);
         var _loc2_:int = 0;
         while(_loc2_ < this.radioButtons.length)
         {
            this.radioButtons[_loc2_].indexNumber = _loc2_;
            _loc2_++;
         }
         if(this._selectedValue != null)
         {
            this.selectedValue = this._selectedValue;
         }
         dispatchEvent(new Event("numRadioButtonsChanged"));
      }
      
      mx_internal function removeInstance(param1:RadioButton) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:RadioButton = null;
         if(param1)
         {
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < this.numRadioButtons)
            {
               _loc4_ = this.getRadioButtonAt(_loc3_);
               if(_loc2_)
               {
                  _loc4_.indexNumber--;
               }
               else if(_loc4_ == param1)
               {
                  _loc4_.group = null;
                  if(param1 == this._selection)
                  {
                     this._selection = null;
                  }
                  this.radioButtons.splice(_loc3_,1);
                  _loc2_ = true;
                  _loc3_--;
               }
               _loc3_++;
            }
            if(_loc2_)
            {
               dispatchEvent(new Event("numRadioButtonsChanged"));
            }
         }
      }
      
      private function getValue() : String
      {
         if(this.selection)
         {
            return this.selection.value && this.selection.value is String && String(this.selection.value).length != 0?String(this.selection.value):this.selection.label;
         }
         return null;
      }
      
      mx_internal function setSelection(param1:RadioButton, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 == null)
         {
            if(this.selection != null)
            {
               this._selection.selected = false;
               this._selection = null;
               if(param2)
               {
                  dispatchEvent(new Event(Event.CHANGE));
               }
            }
         }
         else
         {
            _loc3_ = this.numRadioButtons;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               if(param1 == this.getRadioButtonAt(_loc4_))
               {
                  this.changeSelection(_loc4_,param2);
                  break;
               }
               _loc4_++;
            }
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      private function changeSelection(param1:int, param2:Boolean = true) : void
      {
         if(this.getRadioButtonAt(param1))
         {
            if(this.selection)
            {
               this.selection.selected = false;
            }
            this._selection = this.getRadioButtonAt(param1);
            this._selection.selected = true;
            if(param2)
            {
               dispatchEvent(new Event(Event.CHANGE));
            }
         }
      }
      
      private function breadthOrderCompare(param1:DisplayObject, param2:DisplayObject) : Number
      {
         var _loc3_:DisplayObject = param1 is UIComponent?UIComponent(param1).$parent:param1.parent;
         var _loc4_:DisplayObject = param2 is UIComponent?UIComponent(param2).$parent:param2.parent;
         if(!_loc3_ || !_loc4_)
         {
            return 0;
         }
         var _loc5_:int = param1 is UIComponent?int(UIComponent(param1).nestLevel):-1;
         var _loc6_:int = param2 is UIComponent?int(UIComponent(param2).nestLevel):-1;
         var _loc7_:int = DisplayObjectContainer(_loc3_).getChildIndex(param1);
         var _loc8_:int = DisplayObjectContainer(_loc4_).getChildIndex(param2);
         if(_loc5_ > _loc6_ || param1.parent == param2.parent && _loc7_ > _loc8_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_ || param1.parent == param2.parent && _loc8_ > _loc7_)
         {
            return -1;
         }
         if(param1 == param2)
         {
            return 0;
         }
         return this.breadthOrderCompare(_loc3_,_loc4_);
      }
      
      private function radioButton_removedHandler(param1:Event) : void
      {
         var _loc2_:RadioButton = param1.target as RadioButton;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.REMOVED,this.radioButton_removedHandler);
            this.removeInstance(RadioButton(param1.target));
         }
      }
   }
}
