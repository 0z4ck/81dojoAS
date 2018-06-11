package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class DisconnectAlertWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DisconnectAlertWindow_Label1:Label;
      
      public var _DisconnectAlertWindow_Label2:Label;
      
      public var _DisconnectAlertWindow_Label3:Label;
      
      public var _DisconnectAlertWindow_Label4:Label;
      
      private var _1644027588declareButton:MyButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var _timer:Timer;
      
      private var _1194554201remainTime:int = 300;
      
      public var activateTime:int = 60;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DisconnectAlertWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.fontSize = 13;
               this.backgroundColor = 16777045;
               this.fontFamily = "Meiryo UI";
            },
            "propertiesFactory":function():Object
            {
               return {
                  "width":400,
                  "height":150,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":VBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalAlign = "left";
                        this.paddingLeft = 10;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_DisconnectAlertWindow_Label1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_DisconnectAlertWindow_Label2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                              this.paddingBottom = 0;
                           }
                        }),new UIComponentDescriptor({
                           "type":Spacer,
                           "propertiesFactory":function():Object
                           {
                              return {"height":-17};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_DisconnectAlertWindow_Label3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                              this.paddingTop = 0;
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
                        return {
                           "percentWidth":100,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"declareButton",
                                    "events":{"click":"__declareButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DisconnectAlertWindow_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 16;
                                       this.fontWeight = "bold";
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
         this._timer = new Timer(1000,300);
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DisconnectAlertWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_DisconnectAlertWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DisconnectAlertWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 400;
         this.height = 150;
         this.horizontalScrollPolicy = "off";
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         DisconnectAlertWindow._watcherSetupUtil = param1;
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
            this.backgroundColor = 16777045;
            this.fontFamily = "Meiryo UI";
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function startTimer() : void
      {
         this._timer.addEventListener(TimerEvent.TIMER,this._handleTick);
         this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleTimerComplete);
         this._timer.start();
      }
      
      public function terminate() : void
      {
         this._timer.stop();
         PopUpManager.removePopUp(this);
      }
      
      private function _handleTick(param1:TimerEvent) : void
      {
         this.remainTime = this.remainTime - 1;
         if(this.remainTime == 300 - this.activateTime)
         {
            this.declareButton.enabled = true;
         }
      }
      
      private function _handleTimerComplete(param1:TimerEvent) : void
      {
         this.declare();
      }
      
      public function declare() : void
      {
         this._timer.stop();
         dispatchEvent(new Event("declare"));
         PopUpManager.removePopUp(this);
      }
      
      public function __declareButton_click(param1:MouseEvent) : void
      {
         this.declare();
      }
      
      private function _DisconnectAlertWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Disconnection","対局相手の接続切れ");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.msg_disconnect;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DisconnectAlertWindow_Label1.text");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.msg_disconnect_alert1;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DisconnectAlertWindow_Label2.text");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.msg_disconnect_alert2;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DisconnectAlertWindow_Label3.text");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.declare;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"declareButton.label");
         result[5] = new Binding(this,null,null,"_DisconnectAlertWindow_Label4.text","remainTime");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get declareButton() : MyButton
      {
         return this._1644027588declareButton;
      }
      
      public function set declareButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._1644027588declareButton;
         if(_loc2_ !== param1)
         {
            this._1644027588declareButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"declareButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get remainTime() : int
      {
         return this._1194554201remainTime;
      }
      
      public function set remainTime(param1:int) : void
      {
         var _loc2_:Object = this._1194554201remainTime;
         if(_loc2_ !== param1)
         {
            this._1194554201remainTime = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remainTime",_loc2_,param1));
            }
         }
      }
   }
}
