package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class PromotionWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _165416019noButton:Button;
      
      private var _104967746noImg:Image;
      
      private var _1256381689yesButton:Button;
      
      private var _734064804yesImg:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _answerYes:Boolean = true;
      
      private var _1077042881_yesIcon:Class;
      
      private var _1667494649_noIcon:Class;
      
      private var _968710740_yesLabel:String;
      
      private var _155424884_noLabel:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PromotionWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.fontSize = 13;
               this.fontFamily = "Meiryo UI";
               this.modalTransparencyBlur = 0;
               this.modalTransparencyDuration = 0;
            },
            "propertiesFactory":function():Object
            {
               return {
                  "width":180,
                  "height":150,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalAlign = "center";
                        this.verticalAlign = "middle";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"yesImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":43,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"yesButton",
                                    "events":{"mouseUp":"__yesButton_mouseUp"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "height":50
                                       };
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"noImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":43,
                                          "height":48
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"noButton",
                                    "events":{"mouseUp":"__noButton_mouseUp"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "height":50
                                       };
                                    }
                                 })]};
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._PromotionWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_PromotionWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PromotionWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 180;
         this.height = 150;
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PromotionWindow._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.fontSize = 13;
            this.fontFamily = "Meiryo UI";
            this.modalTransparencyBlur = 0;
            this.modalTransparencyDuration = 0;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function setInfo(param1:String, param2:Class, param3:Class, param4:String, param5:String) : void
      {
         this.title = param1;
         this._yesIcon = param2;
         this._noIcon = param3;
         this._yesLabel = param4;
         this._noLabel = param5;
      }
      
      private function _yes() : void
      {
         this._answerYes = true;
         this._dispatchAnswer();
      }
      
      private function _no() : void
      {
         this._answerYes = false;
         this._dispatchAnswer();
      }
      
      private function _dispatchAnswer() : void
      {
         dispatchEvent(new Event("answer"));
         PopUpManager.removePopUp(this);
      }
      
      public function get answerYes() : Boolean
      {
         return this._answerYes;
      }
      
      public function __yesButton_mouseUp(param1:MouseEvent) : void
      {
         this._yes();
      }
      
      public function __noButton_mouseUp(param1:MouseEvent) : void
      {
         this._no();
      }
      
      private function _PromotionWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return _yesIcon;
         },null,"yesImg.source");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = _yesLabel;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"yesButton.label");
         result[2] = new Binding(this,function():Object
         {
            return _noIcon;
         },null,"noImg.source");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = _noLabel;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"noButton.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get noButton() : Button
      {
         return this._165416019noButton;
      }
      
      public function set noButton(param1:Button) : void
      {
         var _loc2_:Object = this._165416019noButton;
         if(_loc2_ !== param1)
         {
            this._165416019noButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noImg() : Image
      {
         return this._104967746noImg;
      }
      
      public function set noImg(param1:Image) : void
      {
         var _loc2_:Object = this._104967746noImg;
         if(_loc2_ !== param1)
         {
            this._104967746noImg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noImg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yesButton() : Button
      {
         return this._1256381689yesButton;
      }
      
      public function set yesButton(param1:Button) : void
      {
         var _loc2_:Object = this._1256381689yesButton;
         if(_loc2_ !== param1)
         {
            this._1256381689yesButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yesButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yesImg() : Image
      {
         return this._734064804yesImg;
      }
      
      public function set yesImg(param1:Image) : void
      {
         var _loc2_:Object = this._734064804yesImg;
         if(_loc2_ !== param1)
         {
            this._734064804yesImg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yesImg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _yesIcon() : Class
      {
         return this._1077042881_yesIcon;
      }
      
      private function set _yesIcon(param1:Class) : void
      {
         var _loc2_:Object = this._1077042881_yesIcon;
         if(_loc2_ !== param1)
         {
            this._1077042881_yesIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_yesIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _noIcon() : Class
      {
         return this._1667494649_noIcon;
      }
      
      private function set _noIcon(param1:Class) : void
      {
         var _loc2_:Object = this._1667494649_noIcon;
         if(_loc2_ !== param1)
         {
            this._1667494649_noIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_noIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _yesLabel() : String
      {
         return this._968710740_yesLabel;
      }
      
      private function set _yesLabel(param1:String) : void
      {
         var _loc2_:Object = this._968710740_yesLabel;
         if(_loc2_ !== param1)
         {
            this._968710740_yesLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_yesLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _noLabel() : String
      {
         return this._155424884_noLabel;
      }
      
      private function set _noLabel(param1:String) : void
      {
         var _loc2_:Object = this._155424884_noLabel;
         if(_loc2_ !== param1)
         {
            this._155424884_noLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_noLabel",_loc2_,param1));
            }
         }
      }
   }
}
