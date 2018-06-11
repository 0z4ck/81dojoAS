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
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Menu;
   import mx.controls.SWFLoader;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class ChallengerAlertWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _ChallengerAlertWindow_Label1:Label;
      
      public var _ChallengerAlertWindow_Label2:Label;
      
      public var _ChallengerAlertWindow_Label3:Label;
      
      public var _ChallengerAlertWindow_Label4:Label;
      
      public var _ChallengerAlertWindow_Label6:Label;
      
      public var _ChallengerAlertWindow_SWFLoader1:SWFLoader;
      
      private var _1480909402acceptButton:MyButton;
      
      private var _425394642autoReject:CheckBox;
      
      private var _43510499detailButton:MyButton;
      
      private var _1892312701html5Icon:Image;
      
      private var _2121260997mobileIcon:Image;
      
      private var _1721924416nameBox:HBox;
      
      private var _1819087793rejectButton:MyButton;
      
      private var _2033156413rejectReason:MyButton;
      
      private var _938062311winLossLable:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _531959919challenger:ObjectProxy;
      
      public var _timer:Timer;
      
      private var _1194554201remainTime:int = 20;
      
      public var declineComment:String = null;
      
      private var _embed_mxml_images_icon_html5_png_1719955648:Class;
      
      private var _embed_mxml_images_icon_mobile_png_1107212322:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ChallengerAlertWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.fontSize = 13;
               this.fontFamily = "Meiryo UI";
            },
            "propertiesFactory":function():Object
            {
               return {
                  "width":320,
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
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":VBox,
                                 "stylesFactory":function():void
                                 {
                                    this.paddingRight = 20;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":HBox,
                                       "id":"nameBox",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ChallengerAlertWindow_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"text":"■"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Spacer,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"width":-18};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ChallengerAlertWindow_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 16;
                                                this.fontWeight = "bold";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"mobileIcon",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "source":_embed_mxml_images_icon_mobile_png_1107212322,
                                                   "includeInLayout":false,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"html5Icon",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "source":_embed_mxml_images_icon_html5_png_1719955648,
                                                   "includeInLayout":false,
                                                   "visible":false
                                                };
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_ChallengerAlertWindow_Label3"
                                    })]};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":SWFLoader,
                                 "id":"_ChallengerAlertWindow_SWFLoader1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":56,
                                       "height":44
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_ChallengerAlertWindow_Label4"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"winLossLable",
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              })]};
                           }
                        })]};
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalAlign = "center";
                        this.paddingTop = 5;
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
                                    "id":"acceptButton",
                                    "events":{"click":"__acceptButton_click"}
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "stylesFactory":function():void
                                    {
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
                                                "id":"_ChallengerAlertWindow_Label6",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 16;
                                                   this.fontWeight = "bold";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":MyButton,
                                                "id":"detailButton",
                                                "events":{"click":"__detailButton_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "visible":false,
                                                      "includeInLayout":false
                                                   };
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
                                       }),new UIComponentDescriptor({
                                          "type":CheckBox,
                                          "id":"autoReject",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "includeInLayout":false,
                                                "visible":false
                                             };
                                          }
                                       })]};
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
         this._timer = new Timer(1000,20);
         this._embed_mxml_images_icon_html5_png_1719955648 = ChallengerAlertWindow__embed_mxml_images_icon_html5_png_1719955648;
         this._embed_mxml_images_icon_mobile_png_1107212322 = ChallengerAlertWindow__embed_mxml_images_icon_mobile_png_1107212322;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._ChallengerAlertWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ChallengerAlertWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ChallengerAlertWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 320;
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
         ChallengerAlertWindow._watcherSetupUtil = param1;
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
         this._decline("C003");
      }
      
      public function loadPremium(param1:int) : void
      {
         if(param1 >= 1)
         {
            this.winLossLable.visible = true;
         }
         if(param1 >= 3)
         {
            this.detailButton.visible = true;
            this.detailButton.includeInLayout = true;
         }
      }
      
      public function terminate() : void
      {
         this._timer.stop();
         PopUpManager.removePopUp(this);
      }
      
      private function _openDetail() : void
      {
         dispatchEvent(new Event("open_detail"));
      }
      
      private function _decline(param1:String) : void
      {
         this._timer.stop();
         this.declineComment = param1;
         dispatchEvent(new Event("decline"));
         PopUpManager.removePopUp(this);
      }
      
      private function _openRejectReasons() : void
      {
         var myMenu:Menu = null;
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.C021.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C021");
            }
         },{
            "label":LanguageSelector.lan.C022.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C022");
            }
         },{
            "label":LanguageSelector.lan.C023.match(/\((.+)\)$/)[1],
            "selectHandler":function():void
            {
               _decline("C023");
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
         this._decline("C004");
      }
      
      public function __detailButton_click(param1:MouseEvent) : void
      {
         this._openDetail();
      }
      
      public function __rejectReason_click(param1:MouseEvent) : void
      {
         this._openRejectReasons();
      }
      
      private function _ChallengerAlertWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Here comes a new challenger!!","挑戦者");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         result[1] = new Binding(this,function():uint
         {
            return challenger.rankColor;
         },function(param1:uint):void
         {
            _ChallengerAlertWindow_Label1.setStyle("color",param1);
         },"_ChallengerAlertWindow_Label1.color");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = challenger.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ChallengerAlertWindow_Label2.text");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.country + ": " + challenger.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ChallengerAlertWindow_Label3.text");
         result[4] = new Binding(this,function():Object
         {
            return challenger.flag_m;
         },null,"_ChallengerAlertWindow_SWFLoader1.source");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.rate + ": " + challenger.rateStr + " (" + challenger.rank + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ChallengerAlertWindow_Label4.text");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = challenger.wins + " " + LanguageSelector.lan.win_small + " " + challenger.losses + " " + LanguageSelector.lan.loss_small;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"winLossLable.text");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.accept;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"acceptButton.label");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.reject;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rejectButton.label");
         result[9] = new Binding(this,null,null,"_ChallengerAlertWindow_Label6.text","remainTime");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.detail;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"detailButton.label");
         result[11] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.reject_reason;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rejectReason.label");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.auto_reject;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"autoReject.label");
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
      public function get autoReject() : CheckBox
      {
         return this._425394642autoReject;
      }
      
      public function set autoReject(param1:CheckBox) : void
      {
         var _loc2_:Object = this._425394642autoReject;
         if(_loc2_ !== param1)
         {
            this._425394642autoReject = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoReject",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detailButton() : MyButton
      {
         return this._43510499detailButton;
      }
      
      public function set detailButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._43510499detailButton;
         if(_loc2_ !== param1)
         {
            this._43510499detailButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get html5Icon() : Image
      {
         return this._1892312701html5Icon;
      }
      
      public function set html5Icon(param1:Image) : void
      {
         var _loc2_:Object = this._1892312701html5Icon;
         if(_loc2_ !== param1)
         {
            this._1892312701html5Icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"html5Icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mobileIcon() : Image
      {
         return this._2121260997mobileIcon;
      }
      
      public function set mobileIcon(param1:Image) : void
      {
         var _loc2_:Object = this._2121260997mobileIcon;
         if(_loc2_ !== param1)
         {
            this._2121260997mobileIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mobileIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameBox() : HBox
      {
         return this._1721924416nameBox;
      }
      
      public function set nameBox(param1:HBox) : void
      {
         var _loc2_:Object = this._1721924416nameBox;
         if(_loc2_ !== param1)
         {
            this._1721924416nameBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameBox",_loc2_,param1));
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
      public function get winLossLable() : Label
      {
         return this._938062311winLossLable;
      }
      
      public function set winLossLable(param1:Label) : void
      {
         var _loc2_:Object = this._938062311winLossLable;
         if(_loc2_ !== param1)
         {
            this._938062311winLossLable = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"winLossLable",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challenger() : ObjectProxy
      {
         return this._531959919challenger;
      }
      
      public function set challenger(param1:ObjectProxy) : void
      {
         var _loc2_:Object = this._531959919challenger;
         if(_loc2_ !== param1)
         {
            this._531959919challenger = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challenger",_loc2_,param1));
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
