package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Menu;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class InvitationAlertWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _InvitationAlertWindow_Image1:Image;
      
      public var _InvitationAlertWindow_Label1:Label;
      
      public var _InvitationAlertWindow_Label2:Label;
      
      public var _InvitationAlertWindow_Label3:Label;
      
      public var _InvitationAlertWindow_Label4:Label;
      
      public var _InvitationAlertWindow_Label5:Label;
      
      private var _1480909402acceptButton:MyButton;
      
      private var _1819087793rejectButton:MyButton;
      
      private var _2033156413rejectReason:MyButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1960030857inviter:ObjectProxy;
      
      public var _timer:Timer;
      
      private var _110549828total:int;
      
      private var _351400490byoyomi:int;
      
      private var _1769142708gameType:String;
      
      private var _1194554201remainTime:int = 20;
      
      public var rejectComment:String = null;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InvitationAlertWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.fontSize = 12;
               this.headerHeight = 22;
               this.borderThicknessLeft = 4;
               this.borderThicknessRight = 4;
               this.borderThicknessBottom = 4;
               this.fontFamily = "Meiryo UI";
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "left";
                     this.verticalGap = 2;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":HBox,
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_InvitationAlertWindow_Label1",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_InvitationAlertWindow_Label2",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                                 this.fontWeight = "bold";
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_InvitationAlertWindow_Image1"
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_InvitationAlertWindow_Label3"
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_InvitationAlertWindow_Label4"
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "horizontalCenter":"center",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":MyButton,
                                 "id":"acceptButton",
                                 "events":{"click":"__acceptButton_click"}
                              }),new UIComponentDescriptor({
                                 "type":VBox,
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalAlign = "left";
                                    this.verticalGap = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":HBox,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":MyButton,
                                             "id":"rejectButton",
                                             "events":{"click":"__rejectButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {"soundType":2};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_InvitationAlertWindow_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 13;
                                                this.fontWeight = "bold";
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"rejectReason",
                                       "events":{"click":"__rejectReason_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.paddingTop = 0;
                                          this.paddingBottom = 0;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"height":20};
                                       }
                                    })]};
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         this._timer = new Timer(1000,20);
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._InvitationAlertWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_InvitationAlertWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return InvitationAlertWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         InvitationAlertWindow._watcherSetupUtil = param1;
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
            this.fontSize = 12;
            this.headerHeight = 22;
            this.borderThicknessLeft = 4;
            this.borderThicknessRight = 4;
            this.borderThicknessBottom = 4;
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
      
      private function _handleTick(param1:TimerEvent) : void
      {
         this.remainTime = this.remainTime - 1;
      }
      
      private function _handleTimerComplete(param1:TimerEvent) : void
      {
         this._decline("C013");
      }
      
      public function terminate() : void
      {
         this._timer.stop();
         PopUpManager.removePopUp(this);
      }
      
      private function _decline(param1:String) : void
      {
         this._timer.stop();
         this.rejectComment = param1;
         dispatchEvent(new Event("decline"));
         PopUpManager.removePopUp(this);
      }
      
      private function _openDeclineReasons() : void
      {
         var myMenu:Menu = null;
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.C015.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C015");
            }
         },{
            "label":LanguageSelector.lan.C016.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C016");
            }
         },{
            "label":LanguageSelector.lan.C017.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C017");
            }
         },{
            "label":LanguageSelector.lan.C018.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C018");
            }
         },{
            "label":LanguageSelector.lan.C019.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C019");
            }
         },{
            "label":LanguageSelector.lan.C020.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C020");
            }
         }]);
         myMenu = Menu.createMenu(parent,collectionMenuData);
         myMenu.setStyle("fontSize",12);
         myMenu.addEventListener(MenuEvent.ITEM_CLICK,this._handleDeclineReasons);
         var anchor:Point = this.localToGlobal(new Point(mouseX,mouseY));
         myMenu.show(anchor.x,anchor.y);
      }
      
      private function _handleDeclineReasons(param1:MenuEvent) : void
      {
         param1.item.selectHandler();
      }
      
      private function _accept() : void
      {
         this._timer.stop();
         dispatchEvent(new Event("accept"));
         PopUpManager.removePopUp(this);
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         this._accept();
      }
      
      public function __rejectButton_click(param1:MouseEvent) : void
      {
         this._decline("C014");
      }
      
      public function __rejectReason_click(param1:MouseEvent) : void
      {
         this._openDeclineReasons();
      }
      
      private function _InvitationAlertWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Invitation","招待");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = inviter.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_InvitationAlertWindow_Label1.text");
         result[2] = new Binding(this,function():uint
         {
            return inviter.rankColor;
         },function(param1:uint):void
         {
            _InvitationAlertWindow_Label1.setStyle("color",param1);
         },"_InvitationAlertWindow_Label1.color");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = inviter.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_InvitationAlertWindow_Label2.text");
         result[4] = new Binding(this,function():Object
         {
            return inviter.flag_s;
         },null,"_InvitationAlertWindow_Image1.source");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Inviting you to my game.","このルールで一局指しませんか?");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_InvitationAlertWindow_Label3.text");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = gameType + ", " + total + "" + LanguageSelector.lan.min + " - " + byoyomi + "" + LanguageSelector.lan.sec;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_InvitationAlertWindow_Label4.text");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.challenge;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"acceptButton.label");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.decline;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rejectButton.label");
         result[9] = new Binding(this,null,null,"_InvitationAlertWindow_Label5.text","remainTime");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.decline_reason;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rejectReason.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MyButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc2_ !== param1)
         {
            this._1480909402acceptButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rejectButton() : MyButton
      {
         return this._1819087793rejectButton;
      }
      
      public function set rejectButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._1819087793rejectButton;
         if(_loc2_ !== param1)
         {
            this._1819087793rejectButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rejectButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rejectReason() : MyButton
      {
         return this._2033156413rejectReason;
      }
      
      public function set rejectReason(param1:MyButton) : void
      {
         var _loc2_:Object = this._2033156413rejectReason;
         if(_loc2_ !== param1)
         {
            this._2033156413rejectReason = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rejectReason",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inviter() : ObjectProxy
      {
         return this._1960030857inviter;
      }
      
      public function set inviter(param1:ObjectProxy) : void
      {
         var _loc2_:Object = this._1960030857inviter;
         if(_loc2_ !== param1)
         {
            this._1960030857inviter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get total() : int
      {
         return this._110549828total;
      }
      
      public function set total(param1:int) : void
      {
         var _loc2_:Object = this._110549828total;
         if(_loc2_ !== param1)
         {
            this._110549828total = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"total",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get byoyomi() : int
      {
         return this._351400490byoyomi;
      }
      
      public function set byoyomi(param1:int) : void
      {
         var _loc2_:Object = this._351400490byoyomi;
         if(_loc2_ !== param1)
         {
            this._351400490byoyomi = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"byoyomi",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameType() : String
      {
         return this._1769142708gameType;
      }
      
      public function set gameType(param1:String) : void
      {
         var _loc2_:Object = this._1769142708gameType;
         if(_loc2_ !== param1)
         {
            this._1769142708gameType = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameType",_loc2_,param1));
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
