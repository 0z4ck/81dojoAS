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
   import mx.controls.Label;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class ImpasseStatusWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _ImpasseStatusWindow_Label2:Label;
      
      public var _ImpasseStatusWindow_Label3:Label;
      
      public var _ImpasseStatusWindow_Label4:Label;
      
      public var _ImpasseStatusWindow_MyButton2:MyButton;
      
      private var _406493304blackEntered:Label;
      
      private var _322966564blackPieces:Label;
      
      private var _328637890blackPoints:Label;
      
      private var _2131827808kachiButton:MyButton;
      
      private var _1909078286whiteEntered:Label;
      
      private var _1014036274whitePieces:Label;
      
      private var _1008364948whitePoints:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1481379072_black:ObjectProxy;
      
      private var _1462096086_white:ObjectProxy;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImpasseStatusWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.modalTransparencyBlur = 0;
               this.modalTransparencyDuration = 0;
               this.paddingLeft = 5;
               this.paddingBottom = 5;
               this.paddingRight = 5;
               this.paddingTop = 5;
               this.fontSize = 13;
               this.fontFamily = "Meiryo UI";
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":""};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_ImpasseStatusWindow_Label2"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_ImpasseStatusWindow_Label3"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_ImpasseStatusWindow_Label4"
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
                                 "type":Label,
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"☗"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"blackEntered"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"blackPieces",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"blackPoints",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
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
                                 "type":Label,
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"☖"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"whiteEntered"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"whitePieces",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"whitePoints",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":MyButton,
                           "id":"kachiButton",
                           "events":{"click":"__kachiButton_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"enabled":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":MyButton,
                           "id":"_ImpasseStatusWindow_MyButton2",
                           "events":{"click":"___ImpasseStatusWindow_MyButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"soundType":2};
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._ImpasseStatusWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ImpasseStatusWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImpasseStatusWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImpasseStatusWindow._watcherSetupUtil = param1;
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
            this.modalTransparencyBlur = 0;
            this.modalTransparencyDuration = 0;
            this.paddingLeft = 5;
            this.paddingBottom = 5;
            this.paddingRight = 5;
            this.paddingTop = 5;
            this.fontSize = 13;
            this.fontFamily = "Meiryo UI";
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function setStatus(param1:Array, param2:int) : void
      {
         var _loc3_:Array = new Array(true,true);
         var _loc4_:Boolean = true;
         this._black = new ObjectProxy(param1[Kyokumen.SENTE]);
         this._white = new ObjectProxy(param1[Kyokumen.GOTE]);
         if(this._black.entered)
         {
            this.blackEntered.setStyle("color",16711680);
         }
         else
         {
            _loc3_[Kyokumen.SENTE] = false;
         }
         if(this._black.pieces >= 10)
         {
            this.blackPieces.setStyle("color",16711680);
         }
         else
         {
            _loc3_[Kyokumen.SENTE] = false;
         }
         if(this._black.points >= 28)
         {
            this.blackPoints.setStyle("color",16711680);
         }
         else
         {
            _loc3_[Kyokumen.SENTE] = false;
         }
         if(this._white.entered)
         {
            this.whiteEntered.setStyle("color",16711680);
         }
         else
         {
            _loc3_[Kyokumen.GOTE] = false;
         }
         if(this._white.pieces >= 10)
         {
            this.whitePieces.setStyle("color",16711680);
         }
         else
         {
            _loc3_[Kyokumen.GOTE] = false;
         }
         if(this._white.points >= 27)
         {
            this.whitePoints.setStyle("color",16711680);
         }
         else
         {
            _loc3_[Kyokumen.GOTE] = false;
         }
         if(param2 >= 0)
         {
            this.kachiButton.enabled = _loc3_[param2];
         }
      }
      
      private function _close() : void
      {
         dispatchEvent(new Event("close_window"));
         PopUpManager.removePopUp(this);
      }
      
      public function __kachiButton_click(param1:MouseEvent) : void
      {
         this._close();
      }
      
      public function ___ImpasseStatusWindow_MyButton2_click(param1:MouseEvent) : void
      {
         this._close();
      }
      
      private function _ImpasseStatusWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.entered_impasse;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ImpasseStatusWindow_Label2.text");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.pieces_impasse;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ImpasseStatusWindow_Label3.text");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.points_impasse;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ImpasseStatusWindow_Label4.text");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = !!_black.entered?LanguageSelector.EJ("YES","成立"):LanguageSelector.EJ("NO","不成立");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"blackEntered.text");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = _black.pieces;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"blackPieces.text");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = _black.points;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"blackPoints.text");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = !!_white.entered?LanguageSelector.EJ("YES","成立"):LanguageSelector.EJ("NO","不成立");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"whiteEntered.text");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = _white.pieces;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"whitePieces.text");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = _white.points;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"whitePoints.text");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.declare;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"kachiButton.label");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.close;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ImpasseStatusWindow_MyButton2.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get blackEntered() : Label
      {
         return this._406493304blackEntered;
      }
      
      public function set blackEntered(param1:Label) : void
      {
         var _loc2_:Object = this._406493304blackEntered;
         if(_loc2_ !== param1)
         {
            this._406493304blackEntered = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blackEntered",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blackPieces() : Label
      {
         return this._322966564blackPieces;
      }
      
      public function set blackPieces(param1:Label) : void
      {
         var _loc2_:Object = this._322966564blackPieces;
         if(_loc2_ !== param1)
         {
            this._322966564blackPieces = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blackPieces",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blackPoints() : Label
      {
         return this._328637890blackPoints;
      }
      
      public function set blackPoints(param1:Label) : void
      {
         var _loc2_:Object = this._328637890blackPoints;
         if(_loc2_ !== param1)
         {
            this._328637890blackPoints = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blackPoints",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kachiButton() : MyButton
      {
         return this._2131827808kachiButton;
      }
      
      public function set kachiButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._2131827808kachiButton;
         if(_loc2_ !== param1)
         {
            this._2131827808kachiButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kachiButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get whiteEntered() : Label
      {
         return this._1909078286whiteEntered;
      }
      
      public function set whiteEntered(param1:Label) : void
      {
         var _loc2_:Object = this._1909078286whiteEntered;
         if(_loc2_ !== param1)
         {
            this._1909078286whiteEntered = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"whiteEntered",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get whitePieces() : Label
      {
         return this._1014036274whitePieces;
      }
      
      public function set whitePieces(param1:Label) : void
      {
         var _loc2_:Object = this._1014036274whitePieces;
         if(_loc2_ !== param1)
         {
            this._1014036274whitePieces = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"whitePieces",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get whitePoints() : Label
      {
         return this._1008364948whitePoints;
      }
      
      public function set whitePoints(param1:Label) : void
      {
         var _loc2_:Object = this._1008364948whitePoints;
         if(_loc2_ !== param1)
         {
            this._1008364948whitePoints = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"whitePoints",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _black() : ObjectProxy
      {
         return this._1481379072_black;
      }
      
      private function set _black(param1:ObjectProxy) : void
      {
         var _loc2_:Object = this._1481379072_black;
         if(_loc2_ !== param1)
         {
            this._1481379072_black = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_black",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _white() : ObjectProxy
      {
         return this._1462096086_white;
      }
      
      private function set _white(param1:ObjectProxy) : void
      {
         var _loc2_:Object = this._1462096086_white;
         if(_loc2_ !== param1)
         {
            this._1462096086_white = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_white",_loc2_,param1));
            }
         }
      }
   }
}
