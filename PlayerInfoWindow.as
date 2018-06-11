package
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Menu;
   import mx.controls.SWFLoader;
   import mx.controls.Spacer;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class PlayerInfoWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _PlayerInfoWindow_Image1:Image;
      
      public var _PlayerInfoWindow_Label10:Label;
      
      public var _PlayerInfoWindow_Label2:Label;
      
      public var _PlayerInfoWindow_Label3:Label;
      
      public var _PlayerInfoWindow_Label4:Label;
      
      public var _PlayerInfoWindow_Label5:Label;
      
      public var _PlayerInfoWindow_Label6:Label;
      
      public var _PlayerInfoWindow_Label7:Label;
      
      public var _PlayerInfoWindow_Label8:Label;
      
      public var _PlayerInfoWindow_Label9:Label;
      
      private var _1352785920allowStudy:MyButton;
      
      private var _1387791343avatarCanvas:Canvas;
      
      private var _1402633315challenge:MyButton;
      
      private var _1335224239detail:MyButton;
      
      private var _109016030directMessage:TextInput;
      
      private var _1050790300favorite:MyButton;
      
      private var _252697247flagLoader:SWFLoader;
      
      private var _1774117837hideMove:Move;
      
      private var _1892312701html5Icon:Image;
      
      private var _1190396462ignore:MyButton;
      
      private var _604172734menuHBox:HBox;
      
      private var _2121260997mobileIcon:Image;
      
      private var _1215755049nameLabel:Label;
      
      private var _609337099othersCommands:HBox;
      
      private var _1622788288pmCheckBox:CheckBox;
      
      private var _918269833pmTextArea:TextArea;
      
      private var _892875252selfCommands:HBox;
      
      private var _2066497076setRateButton:MyButton;
      
      private var _1729966668setRateCombo:ComboBox;
      
      private var _339032978showMove:Move;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _91333802_user:Object;
      
      private var _985235254pmText:String = "";
      
      private const IMAGE_DIRECTORY:String = "https://81dojo.com/dojo/images/";
      
      private const MINIMIZED_HEIGHT:int = 23;
      
      private var _embed_mxml_images_icon_block_png_2029404498:Class;
      
      private var _embed_mxml_images_icon_greet_png_2025193794:Class;
      
      private var _embed_mxml_images_icon_hat_png_1162690078:Class;
      
      private var _embed_mxml_images_icon_html5_png_1719955648:Class;
      
      private var _embed_mxml_images_icon_mobile_png_1107212322:Class;
      
      private var _embed_mxml_images_icon_star_png_18804094:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PlayerInfoWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "events":{
               "doubleClick":"___PlayerInfoWindow_TitleWindow1_doubleClick",
               "close":"___PlayerInfoWindow_TitleWindow1_close",
               "creationComplete":"___PlayerInfoWindow_TitleWindow1_creationComplete"
            },
            "stylesFactory":function():void
            {
               this.fontSize = 12;
               this.fontFamily = "Meiryo UI";
               this.paddingLeft = 5;
               this.paddingBottom = 5;
               this.paddingRight = 5;
               this.paddingTop = 5;
               this.headerHeight = 22;
               this.borderThicknessLeft = 4;
               this.borderThicknessRight = 4;
               this.borderThicknessBottom = 4;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"avatarCanvas",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":128,
                              "height":128,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_PlayerInfoWindow_Image1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":128,
                                       "height":128
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":VBox,
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":HBox,
                                          "propertiesFactory":function():Object
                                          {
                                             return {"childDescriptors":[new UIComponentDescriptor({
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
                                             }),new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"nameLabel",
                                                "events":{"doubleClick":"__nameLabel_doubleClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 15;
                                                   this.fontWeight = "bold";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_PlayerInfoWindow_Label2",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 16;
                                                   this.fontWeight = "bold";
                                                   this.color = 16711680;
                                                   this.paddingLeft = -2;
                                                   this.paddingRight = -2;
                                                }
                                             })]};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_PlayerInfoWindow_Label3",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingRight = 10;
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "id":"flagLoader",
                                    "events":{"ioError":"__flagLoader_ioError"},
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
                              "type":VBox,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":73,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_PlayerInfoWindow_Label4"
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerInfoWindow_Label5"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerInfoWindow_Label6"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerInfoWindow_Label7"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerInfoWindow_Label8"
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerInfoWindow_Label9"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerInfoWindow_Label10"
                                          })]};
                                       }
                                    })]
                                 };
                              }
                           })]};
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":Spacer,
                  "propertiesFactory":function():Object
                  {
                     return {"height":-115};
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Spacer,
                        "propertiesFactory":function():Object
                        {
                           return {"width":50};
                        }
                     }),new UIComponentDescriptor({
                        "type":TextArea,
                        "id":"pmTextArea",
                        "effects":["showEffect","hideEffect"],
                        "stylesFactory":function():void
                        {
                           this.backgroundAlpha = 0.93;
                           this.cornerRadius = 5;
                           this.fontFamily = "Meiryo UI";
                           this.leading = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "wordWrap":true,
                              "editable":false,
                              "width":339,
                              "height":103,
                              "visible":false
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
                        "propertiesFactory":function():Object
                        {
                           return {"text":"PM:"};
                        }
                     }),new UIComponentDescriptor({
                        "type":TextInput,
                        "id":"directMessage",
                        "events":{"keyDown":"__directMessage_keyDown"},
                        "stylesFactory":function():void
                        {
                           this.fontFamily = "Meiryo UI";
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":360,
                              "height":23
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"menuHBox",
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                     this.verticalAlign = "middle";
                     this.paddingTop = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":MyButton,
                           "id":"detail",
                           "events":{"click":"__detail_click"}
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"othersCommands",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "includeInLayout":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"challenge",
                                    "events":{"click":"__challenge_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"favorite",
                                    "stylesFactory":function():void
                                    {
                                       this.icon = _embed_mxml_images_icon_star_png_18804094;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"ignore",
                                    "stylesFactory":function():void
                                    {
                                       this.icon = _embed_mxml_images_icon_block_png_2029404498;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"allowStudy",
                                    "events":{"click":"__allowStudy_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.icon = _embed_mxml_images_icon_hat_png_1162690078;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"selfCommands",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "includeInLayout":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ComboBox,
                                    "id":"setRateCombo",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "width":80,
                                          "height":27
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"setRateButton",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "enabled":false,
                                          "soundType":1
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"pmCheckBox",
                           "events":{"click":"__pmCheckBox_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingRight = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"",
                                 "toolTip":"PMウインドウを開く"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "events":{"click":"___PlayerInfoWindow_Image4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":_embed_mxml_images_icon_greet_png_2025193794,
                                 "toolTip":"PMウインドウを開く"
                              };
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         this._embed_mxml_images_icon_block_png_2029404498 = PlayerInfoWindow__embed_mxml_images_icon_block_png_2029404498;
         this._embed_mxml_images_icon_greet_png_2025193794 = PlayerInfoWindow__embed_mxml_images_icon_greet_png_2025193794;
         this._embed_mxml_images_icon_hat_png_1162690078 = PlayerInfoWindow__embed_mxml_images_icon_hat_png_1162690078;
         this._embed_mxml_images_icon_html5_png_1719955648 = PlayerInfoWindow__embed_mxml_images_icon_html5_png_1719955648;
         this._embed_mxml_images_icon_mobile_png_1107212322 = PlayerInfoWindow__embed_mxml_images_icon_mobile_png_1107212322;
         this._embed_mxml_images_icon_star_png_18804094 = PlayerInfoWindow__embed_mxml_images_icon_star_png_18804094;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._PlayerInfoWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_PlayerInfoWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PlayerInfoWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.showCloseButton = true;
         this.doubleClickEnabled = true;
         this._PlayerInfoWindow_Move2_i();
         this._PlayerInfoWindow_Move1_i();
         this.addEventListener("doubleClick",this.___PlayerInfoWindow_TitleWindow1_doubleClick);
         this.addEventListener("close",this.___PlayerInfoWindow_TitleWindow1_close);
         this.addEventListener("creationComplete",this.___PlayerInfoWindow_TitleWindow1_creationComplete);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PlayerInfoWindow._watcherSetupUtil = param1;
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
            this.fontFamily = "Meiryo UI";
            this.paddingLeft = 5;
            this.paddingBottom = 5;
            this.paddingRight = 5;
            this.paddingTop = 5;
            this.headerHeight = 22;
            this.borderThicknessLeft = 4;
            this.borderThicknessRight = 4;
            this.borderThicknessBottom = 4;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _initWindow() : void
      {
         this.addEventListener("move",this._handleMove);
      }
      
      private function _handleMove(param1:Event) : void
      {
         if(this.y < 0)
         {
            this.y = 0;
         }
      }
      
      public function readUser(param1:Object) : void
      {
         this._user = param1;
         this.avatarCanvas.addChild(InfoFetcher.medalCanvas(param1));
      }
      
      public function exportUser() : Object
      {
         return this._user;
      }
      
      private function _swfError() : void
      {
      }
      
      public function scrollDown() : void
      {
         this.pmTextArea.verticalScrollPosition = this.pmTextArea.maxVerticalScrollPosition;
      }
      
      public function togglePM() : void
      {
         if(this.pmCheckBox.selected)
         {
            this.pmTextArea.visible = true;
         }
         else
         {
            this.pmTextArea.visible = false;
         }
      }
      
      private function _clearHighlight() : void
      {
         this.pmTextArea.setStyle("backgroundColor",undefined);
         this.pmTextArea.callLater(this.scrollDown);
      }
      
      private function _minmax() : void
      {
         if(contentMouseY > 2)
         {
            return;
         }
         if(this.height == this.MINIMIZED_HEIGHT)
         {
            this.height = undefined;
            this.title = LanguageSelector.EJ("Player Info","プレイヤー情報");
            this.setStyle("headerColors",undefined);
         }
         else
         {
            this.height = this.MINIMIZED_HEIGHT;
            this.title = LanguageSelector.EJ("Player Info (","プレイヤー情報 (") + this._user.name + ")";
            this.setStyle("headerColors",[16746496,16746496]);
         }
      }
      
      public function maximize() : void
      {
         if(this.height == this.MINIMIZED_HEIGHT)
         {
            this.height = undefined;
            this.title = LanguageSelector.EJ("Player Info","プレイヤー情報");
            this.setStyle("headerColors",undefined);
         }
      }
      
      private function _openDetail() : void
      {
         dispatchEvent(new Event("open_detail"));
      }
      
      private function _openAllowStudyMenu() : void
      {
         var myMenu:Menu = null;
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.give_host,
            "selectHandler":function():void
            {
               dispatchEvent(new Event("give_host"));
            }
         },{
            "label":LanguageSelector.lan.give_subhost,
            "selectHandler":function():void
            {
               dispatchEvent(new Event("give_subhost"));
            }
         }]);
         myMenu = Menu.createMenu(parent,collectionMenuData);
         myMenu.setStyle("fontSize",12);
         myMenu.addEventListener(MenuEvent.ITEM_CLICK,this._handleAllowStudyMenu);
         var anchor:Point = this.localToGlobal(new Point(mouseX,mouseY));
         myMenu.show(anchor.x - 150,anchor.y);
      }
      
      private function _handleAllowStudyMenu(param1:MenuEvent) : void
      {
         param1.item.selectHandler();
      }
      
      public function disableChallenge() : void
      {
         this.challenge.enabled = false;
      }
      
      public function close() : void
      {
         MyButton.playCancel();
         dispatchEvent(new Event("close_window"));
         PopUpManager.removePopUp(this);
      }
      
      private function _PlayerInfoWindow_Move2_i() : Move
      {
         var _loc1_:Move = new Move();
         _loc1_.yFrom = 0;
         _loc1_.yTo = 103;
         _loc1_.duration = 150;
         this.hideMove = _loc1_;
         BindingManager.executeBindings(this,"hideMove",this.hideMove);
         return _loc1_;
      }
      
      private function _PlayerInfoWindow_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         _loc1_.yFrom = 103;
         _loc1_.yTo = 0;
         _loc1_.duration = 200;
         this.showMove = _loc1_;
         BindingManager.executeBindings(this,"showMove",this.showMove);
         return _loc1_;
      }
      
      public function ___PlayerInfoWindow_TitleWindow1_doubleClick(param1:MouseEvent) : void
      {
         this._minmax();
      }
      
      public function ___PlayerInfoWindow_TitleWindow1_close(param1:CloseEvent) : void
      {
         this.close();
      }
      
      public function ___PlayerInfoWindow_TitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this._initWindow();
      }
      
      public function __nameLabel_doubleClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("gip"));
      }
      
      public function __flagLoader_ioError(param1:IOErrorEvent) : void
      {
         this._swfError();
      }
      
      public function __directMessage_keyDown(param1:KeyboardEvent) : void
      {
         this._clearHighlight();
      }
      
      public function __detail_click(param1:MouseEvent) : void
      {
         this._openDetail();
      }
      
      public function __challenge_click(param1:MouseEvent) : void
      {
         this.close();
      }
      
      public function __allowStudy_click(param1:MouseEvent) : void
      {
         this._openAllowStudyMenu();
      }
      
      public function __pmCheckBox_click(param1:MouseEvent) : void
      {
         this.togglePM();
      }
      
      public function ___PlayerInfoWindow_Image4_click(param1:MouseEvent) : void
      {
         this.pmCheckBox.selected = !this.pmCheckBox.selected;
         this.togglePM();
      }
      
      private function _PlayerInfoWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Player Info","プレイヤー情報");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         result[1] = new Binding(this,function():Object
         {
            return _user.avatar;
         },null,"_PlayerInfoWindow_Image1.source");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.status_tip_mobile;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mobileIcon.toolTip");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.status_tip_html5;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"html5Icon.toolTip");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = _user.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"nameLabel.text");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = _user.titleName;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label2.text");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = _user.titleSubName;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label2.toolTip");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.country + ":  " + _user.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label3.text");
         result[8] = new Binding(this,function():Object
         {
            return _user.flag_m;
         },null,"flagLoader.source");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.rate + ":  " + _user.rateStr + "  (" + _user.rank + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label4.text");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = _user.wins + " " + LanguageSelector.lan.win_small;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label5.text");
         result[11] = new Binding(this,function():String
         {
            var _loc1_:* = _user.losses + " " + LanguageSelector.lan.loss_small;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label6.text");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = "(" + _user.percentage.toFixed(1) + "%)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label7.text");
         result[13] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.total + ": " + _user.total;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label8.text");
         result[14] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.streak + ": " + _user.streak_best;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label9.text");
         result[15] = new Binding(this,function():String
         {
            var _loc1_:* = "(" + LanguageSelector.lan.current + ": " + _user.streak + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerInfoWindow_Label10.text");
         result[16] = new Binding(this,null,null,"pmTextArea.htmlText","pmText");
         result[17] = new Binding(this,null,function(param1:*):void
         {
            pmTextArea.setStyle("showEffect",param1);
         },"pmTextArea.showEffect","showMove");
         result[18] = new Binding(this,null,function(param1:*):void
         {
            pmTextArea.setStyle("hideEffect",param1);
         },"pmTextArea.hideEffect","hideMove");
         result[19] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.detail;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"detail.label");
         result[20] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.challenge;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"challenge.label");
         result[21] = new Binding(this,function():String
         {
            var _loc1_:* = parentApplication.lan.favorite;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"favorite.toolTip");
         result[22] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.ignore;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"ignore.toolTip");
         result[23] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.allow;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"allowStudy.toolTip");
         result[24] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.set_rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"setRateButton.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get allowStudy() : MyButton
      {
         return this._1352785920allowStudy;
      }
      
      public function set allowStudy(param1:MyButton) : void
      {
         var _loc2_:Object = this._1352785920allowStudy;
         if(_loc2_ !== param1)
         {
            this._1352785920allowStudy = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allowStudy",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avatarCanvas() : Canvas
      {
         return this._1387791343avatarCanvas;
      }
      
      public function set avatarCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1387791343avatarCanvas;
         if(_loc2_ !== param1)
         {
            this._1387791343avatarCanvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avatarCanvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challenge() : MyButton
      {
         return this._1402633315challenge;
      }
      
      public function set challenge(param1:MyButton) : void
      {
         var _loc2_:Object = this._1402633315challenge;
         if(_loc2_ !== param1)
         {
            this._1402633315challenge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challenge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detail() : MyButton
      {
         return this._1335224239detail;
      }
      
      public function set detail(param1:MyButton) : void
      {
         var _loc2_:Object = this._1335224239detail;
         if(_loc2_ !== param1)
         {
            this._1335224239detail = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detail",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get directMessage() : TextInput
      {
         return this._109016030directMessage;
      }
      
      public function set directMessage(param1:TextInput) : void
      {
         var _loc2_:Object = this._109016030directMessage;
         if(_loc2_ !== param1)
         {
            this._109016030directMessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"directMessage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get favorite() : MyButton
      {
         return this._1050790300favorite;
      }
      
      public function set favorite(param1:MyButton) : void
      {
         var _loc2_:Object = this._1050790300favorite;
         if(_loc2_ !== param1)
         {
            this._1050790300favorite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"favorite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flagLoader() : SWFLoader
      {
         return this._252697247flagLoader;
      }
      
      public function set flagLoader(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._252697247flagLoader;
         if(_loc2_ !== param1)
         {
            this._252697247flagLoader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flagLoader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hideMove() : Move
      {
         return this._1774117837hideMove;
      }
      
      public function set hideMove(param1:Move) : void
      {
         var _loc2_:Object = this._1774117837hideMove;
         if(_loc2_ !== param1)
         {
            this._1774117837hideMove = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hideMove",_loc2_,param1));
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
      public function get ignore() : MyButton
      {
         return this._1190396462ignore;
      }
      
      public function set ignore(param1:MyButton) : void
      {
         var _loc2_:Object = this._1190396462ignore;
         if(_loc2_ !== param1)
         {
            this._1190396462ignore = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ignore",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get menuHBox() : HBox
      {
         return this._604172734menuHBox;
      }
      
      public function set menuHBox(param1:HBox) : void
      {
         var _loc2_:Object = this._604172734menuHBox;
         if(_loc2_ !== param1)
         {
            this._604172734menuHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuHBox",_loc2_,param1));
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
      public function get nameLabel() : Label
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc2_ !== param1)
         {
            this._1215755049nameLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get othersCommands() : HBox
      {
         return this._609337099othersCommands;
      }
      
      public function set othersCommands(param1:HBox) : void
      {
         var _loc2_:Object = this._609337099othersCommands;
         if(_loc2_ !== param1)
         {
            this._609337099othersCommands = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"othersCommands",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmCheckBox() : CheckBox
      {
         return this._1622788288pmCheckBox;
      }
      
      public function set pmCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1622788288pmCheckBox;
         if(_loc2_ !== param1)
         {
            this._1622788288pmCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmTextArea() : TextArea
      {
         return this._918269833pmTextArea;
      }
      
      public function set pmTextArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._918269833pmTextArea;
         if(_loc2_ !== param1)
         {
            this._918269833pmTextArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmTextArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfCommands() : HBox
      {
         return this._892875252selfCommands;
      }
      
      public function set selfCommands(param1:HBox) : void
      {
         var _loc2_:Object = this._892875252selfCommands;
         if(_loc2_ !== param1)
         {
            this._892875252selfCommands = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfCommands",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get setRateButton() : MyButton
      {
         return this._2066497076setRateButton;
      }
      
      public function set setRateButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._2066497076setRateButton;
         if(_loc2_ !== param1)
         {
            this._2066497076setRateButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setRateButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get setRateCombo() : ComboBox
      {
         return this._1729966668setRateCombo;
      }
      
      public function set setRateCombo(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1729966668setRateCombo;
         if(_loc2_ !== param1)
         {
            this._1729966668setRateCombo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setRateCombo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMove() : Move
      {
         return this._339032978showMove;
      }
      
      public function set showMove(param1:Move) : void
      {
         var _loc2_:Object = this._339032978showMove;
         if(_loc2_ !== param1)
         {
            this._339032978showMove = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMove",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _user() : Object
      {
         return this._91333802_user;
      }
      
      private function set _user(param1:Object) : void
      {
         var _loc2_:Object = this._91333802_user;
         if(_loc2_ !== param1)
         {
            this._91333802_user = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_user",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmText() : String
      {
         return this._985235254pmText;
      }
      
      public function set pmText(param1:String) : void
      {
         var _loc2_:Object = this._985235254pmText;
         if(_loc2_ !== param1)
         {
            this._985235254pmText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmText",_loc2_,param1));
            }
         }
      }
   }
}
