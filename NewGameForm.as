package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.controls.TextInput;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class NewGameForm extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _2592R2:RadioButton;
      
      private var _2593R3:RadioButton;
      
      private var _2594R4:RadioButton;
      
      private var _2595R5:RadioButton;
      
      private var _2596R6:RadioButton;
      
      private var _2597R7:RadioButton;
      
      private var _2598R8:RadioButton;
      
      private var _1807668168Submit:MyButton;
      
      public var _NewGameForm_Label1:Label;
      
      public var _NewGameForm_Object1:Object;
      
      public var _NewGameForm_Object10:Object;
      
      public var _NewGameForm_Object11:Object;
      
      public var _NewGameForm_Object12:Object;
      
      public var _NewGameForm_Object13:Object;
      
      public var _NewGameForm_Object14:Object;
      
      public var _NewGameForm_Object15:Object;
      
      public var _NewGameForm_Object16:Object;
      
      public var _NewGameForm_Object17:Object;
      
      public var _NewGameForm_Object18:Object;
      
      public var _NewGameForm_Object19:Object;
      
      public var _NewGameForm_Object2:Object;
      
      public var _NewGameForm_Object20:Object;
      
      public var _NewGameForm_Object21:Object;
      
      public var _NewGameForm_Object22:Object;
      
      public var _NewGameForm_Object23:Object;
      
      public var _NewGameForm_Object24:Object;
      
      public var _NewGameForm_Object25:Object;
      
      public var _NewGameForm_Object26:Object;
      
      public var _NewGameForm_Object27:Object;
      
      public var _NewGameForm_Object28:Object;
      
      public var _NewGameForm_Object29:Object;
      
      public var _NewGameForm_Object3:Object;
      
      public var _NewGameForm_Object30:Object;
      
      public var _NewGameForm_Object31:Object;
      
      public var _NewGameForm_Object32:Object;
      
      public var _NewGameForm_Object33:Object;
      
      public var _NewGameForm_Object34:Object;
      
      public var _NewGameForm_Object35:Object;
      
      public var _NewGameForm_Object36:Object;
      
      public var _NewGameForm_Object37:Object;
      
      public var _NewGameForm_Object38:Object;
      
      public var _NewGameForm_Object39:Object;
      
      public var _NewGameForm_Object4:Object;
      
      public var _NewGameForm_Object40:Object;
      
      public var _NewGameForm_Object41:Object;
      
      public var _NewGameForm_Object42:Object;
      
      public var _NewGameForm_Object43:Object;
      
      public var _NewGameForm_Object44:Object;
      
      public var _NewGameForm_Object5:Object;
      
      public var _NewGameForm_Object6:Object;
      
      public var _NewGameForm_Object7:Object;
      
      public var _NewGameForm_Object8:Object;
      
      public var _NewGameForm_Object9:Object;
      
      public var _NewGameForm_RadioButton10:RadioButton;
      
      public var _NewGameForm_RadioButton8:RadioButton;
      
      public var _NewGameForm_RadioButton9:RadioButton;
      
      private var _1332111146blackName:TextInput;
      
      private var _2103142210commentHBox:HBox;
      
      private var _674741506commentTextInput:TextInput;
      
      private var _817887210handicapBlackCheckBox:CheckBox;
      
      private var _1973235394nonrated_byoyomi:ComboBox;
      
      private var _1260748256nonrated_handicap:ComboBox;
      
      private var _563633628nonrated_total:ComboBox;
      
      private var _2093036863privateRoomCheckBox:CheckBox;
      
      private var _657411487privateRoomHBox:HBox;
      
      private var _657143249privateRoomPass:TextInput;
      
      private var _2085200702sideFix:RadioButtonGroup;
      
      private var _743150753sideFixHBox:HBox;
      
      private var _1279213202study_handicap:ComboBox;
      
      private var _1605238077timeSetting:RadioButtonGroup;
      
      private var _1123328801tournament_name:ComboBox;
      
      private var _1654751660whiteName:TextInput;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _premium:int = 0;
      
      private var _1137551520_mileForFix:int;
      
      private var _mileage:int;
      
      public var password:String;
      
      private var _811015254tournaments:ArrayCollection;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NewGameForm()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "events":{"close":"___NewGameForm_TitleWindow1_close"},
            "stylesFactory":function():void
            {
               this.modalTransparencyBlur = 0;
               this.modalTransparencyDuration = 0;
               this.backgroundColor = 16316664;
               this.paddingTop = 0;
               this.paddingBottom = 0;
               this.paddingLeft = 0;
               this.paddingRight = 0;
               this.fontFamily = "Meiryo UI";
               this.fontSize = 11;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 10;
                     this.paddingBottom = 8;
                     this.paddingRight = 5;
                     this.paddingTop = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R2",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":1
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R8",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":8
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R3",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":2
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R4",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":3
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R5",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":4
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 50;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"nonrated_total",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "enabled":false,
                                    "selectedIndex":3,
                                    "dataProvider":_NewGameForm_ArrayCollection1_c()
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"nonrated_byoyomi",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "enabled":false,
                                    "selectedIndex":4,
                                    "dataProvider":_NewGameForm_ArrayCollection2_c()
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 50;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"nonrated_handicap",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "selectedIndex":0,
                                    "enabled":false,
                                    "dataProvider":_NewGameForm_ArrayCollection3_c()
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 50;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"handicapBlackCheckBox",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "includeInLayout":false,
                                    "visible":false
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R6",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":5
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 50;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"tournament_name",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "selectedIndex":0,
                                    "visible":false,
                                    "includeInLayout":false
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"R7",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"timeSetting",
                              "value":6
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 50;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"study_handicap",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "selectedIndex":0,
                                    "enabled":false
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingLeft = 50;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":TextInput,
                              "id":"blackName",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "text":"Black",
                                    "width":65,
                                    "enabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":TextInput,
                              "id":"whiteName",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "text":"White",
                                    "width":65,
                                    "enabled":false
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":HRule,
                        "propertiesFactory":function():Object
                        {
                           return {"percentWidth":100};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "id":"commentHBox",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":205,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_NewGameForm_Label1"
                              }),new UIComponentDescriptor({
                                 "type":TextInput,
                                 "id":"commentTextInput",
                                 "events":{"enter":"__commentTextInput_enter"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "percentWidth":100,
                                       "enabled":false
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "id":"sideFixHBox",
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "propertiesFactory":function():Object
                              {
                                 return {"text":"手番"};
                              }
                           }),new UIComponentDescriptor({
                              "type":RadioButton,
                              "id":"_NewGameForm_RadioButton8",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"sideFix",
                                    "value":0,
                                    "selected":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RadioButton,
                              "id":"_NewGameForm_RadioButton9",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"sideFix",
                                    "value":1
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RadioButton,
                              "id":"_NewGameForm_RadioButton10",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"sideFix",
                                    "value":-1
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "id":"privateRoomHBox",
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"privateRoomCheckBox"
                           }),new UIComponentDescriptor({
                              "type":TextInput,
                              "id":"privateRoomPass",
                              "propertiesFactory":function():Object
                              {
                                 return {"width":80};
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "stylesFactory":function():void
                        {
                           this.paddingTop = 5;
                           this.horizontalAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":MyButton,
                                 "id":"Submit",
                                 "events":{"click":"__Submit_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {"soundType":1};
                                 }
                              })]
                           };
                        }
                     })]};
                  }
               })]};
            }
         });
         this._811015254tournaments = new ArrayCollection([]);
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._NewGameForm_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_NewGameFormWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NewGameForm[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.showCloseButton = true;
         this._NewGameForm_RadioButtonGroup2_i();
         this._NewGameForm_RadioButtonGroup1_i();
         this.addEventListener("close",this.___NewGameForm_TitleWindow1_close);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         NewGameForm._watcherSetupUtil = param1;
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
            this.backgroundColor = 16316664;
            this.paddingTop = 0;
            this.paddingBottom = 0;
            this.paddingLeft = 0;
            this.paddingRight = 0;
            this.fontFamily = "Meiryo UI";
            this.fontSize = 11;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function submit() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc7_:GameRuleEvent = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         this.password = this.privateRoomHBox.visible && this.privateRoomCheckBox.selected?this.privateRoomPass.text:"";
         switch(this.timeSetting.selectedValue)
         {
            case 0:
               _loc1_ = 1800;
               _loc2_ = 60;
               _loc3_ = "r";
               _loc4_ = "";
               _loc5_ = parseInt(String(this.sideFix.selectedValue));
               if(_loc5_ != 0)
               {
                  _loc6_ = this._mileForFix;
               }
               break;
            case 1:
               _loc1_ = 900;
               _loc2_ = 60;
               _loc3_ = "r";
               _loc4_ = "";
               _loc5_ = parseInt(String(this.sideFix.selectedValue));
               if(_loc5_ != 0)
               {
                  _loc6_ = this._mileForFix;
               }
               break;
            case 2:
               _loc1_ = 300;
               _loc2_ = 30;
               _loc3_ = "r";
               _loc4_ = "";
               _loc5_ = parseInt(String(this.sideFix.selectedValue));
               if(_loc5_ != 0)
               {
                  _loc6_ = this._mileForFix;
               }
               break;
            case 3:
               _loc1_ = 0;
               _loc2_ = 30;
               _loc3_ = "r";
               _loc4_ = "";
               _loc5_ = parseInt(String(this.sideFix.selectedValue));
               if(_loc5_ != 0)
               {
                  _loc6_ = this._mileForFix;
               }
               break;
            case 8:
               _loc1_ = 600;
               _loc2_ = 30;
               _loc3_ = "r";
               _loc4_ = "";
               _loc5_ = parseInt(String(this.sideFix.selectedValue));
               if(_loc5_ != 0)
               {
                  _loc6_ = this._mileForFix;
               }
               break;
            case 4:
               _loc1_ = this.nonrated_total.selectedItem.data;
               _loc2_ = this.nonrated_byoyomi.selectedItem.data;
               _loc3_ = this.nonrated_handicap.selectedItem.data;
               _loc4_ = "";
               if(_loc3_.match(/^hc/))
               {
                  _loc5_ = !!this.handicapBlackCheckBox.selected?1:-1;
               }
               break;
            case 5:
               if(!this.tournament_name.visible)
               {
                  return;
               }
               _loc1_ = this.tournament_name.selectedItem.total;
               _loc2_ = this.tournament_name.selectedItem.byoyomi;
               _loc3_ = this.tournament_name.selectedItem.type;
               _loc4_ = "--" + (this.tournament_name.selectedItem.id != null?this.tournament_name.selectedItem.id:this.tournament_name.selectedItem.code);
               _loc5_ = this.tournament_name.selectedItem.side;
               if(_loc5_ == 2)
               {
                  _loc5_ = -1;
               }
               break;
            case 6:
               dispatchEvent(new Event("study_room"));
               PopUpManager.removePopUp(this);
               return;
         }
         this.password = this.privateRoomHBox.visible && this.privateRoomCheckBox.selected?this.privateRoomPass.text:"";
         if(_loc1_ >= 0 && _loc2_ >= 0)
         {
            _loc7_ = new GameRuleEvent(GameRuleEvent.RULE_SELECTED,_loc1_,_loc2_,_loc3_,_loc4_,_loc5_,this.commentTextInput.text,_loc6_,this.password);
            dispatchEvent(_loc7_);
         }
         PopUpManager.removePopUp(this);
      }
      
      public function loadPremium(param1:int, param2:int) : void
      {
         var _loc6_:Object = null;
         this._premium = param1;
         this._mileage = param2;
         if(this._premium == 2)
         {
            this._mileForFix = 100;
         }
         else if(this._premium == 3)
         {
            this._mileForFix = 50;
         }
         else if(this._premium == 4)
         {
            this._mileForFix = 0;
         }
         if(this._premium >= 1)
         {
            this.commentTextInput.enabled = true;
            this.commentTextInput.toolTip = LanguageSelector.EJ("You must not set restrictions to the challenger. (e.g.:)\n　\"Only players over R1500.\"\n　\"Post-game analysis mandatory.\"\n　\"Double Static Rook, please.\" etc.\n","挑戦者を限定する内容は禁止します。(禁止例:)\n　「R1500未満お断り」\n　「感想戦される方のみ」\n　「本格居飛車党の方を希望」 など\nその他はチャットの禁止事項に準じます。");
         }
         if(this._premium == 1)
         {
            this.commentTextInput.maxChars = 25;
         }
         else if(this._premium == 2)
         {
            this.commentTextInput.maxChars = 50;
         }
         else if(this._premium >= 3)
         {
            this.commentTextInput.maxChars = 80;
         }
         var _loc3_:Date = new Date();
         var _loc4_:Date = new Date();
         var _loc5_:Date = new Date();
         for each(_loc6_ in InfoFetcher.system_tournaments)
         {
            _loc4_.setTime(Date.parse(_loc6_.starts_at));
            _loc5_.setTime(Date.parse(_loc6_.ends_at));
            if(_loc6_.joined == true && _loc4_ <= _loc3_ && _loc3_ <= _loc5_)
            {
               this.tournaments.addItem({
                  "label":InfoFetcher.getSystemTournamentName(parseInt(_loc6_.id)),
                  "id":_loc6_.id,
                  "code":_loc6_.code,
                  "type":_loc6_.gametype,
                  "total":_loc6_.total,
                  "byoyomi":_loc6_.byoyomi,
                  "side":_loc6_.turn
               });
            }
         }
         this.R6.enabled = this.tournaments.length > 0;
      }
      
      public function setGuest() : void
      {
         this.timeSetting.selectedValue = 4;
         this.R2.enabled = false;
         this.R3.enabled = false;
         this.R4.enabled = false;
         this.R6.enabled = false;
         this.R7.enabled = false;
         this.R8.enabled = false;
         this.nonrated_total.selectedIndex = 3;
         this.nonrated_total.enabled = false;
         this.nonrated_byoyomi.selectedIndex = 3;
         this.nonrated_byoyomi.enabled = false;
         this.nonrated_handicap.selectedIndex = 0;
         this.nonrated_handicap.enabled = false;
      }
      
      public function toggleTimeSelection() : void
      {
         this.nonrated_total.enabled = this.timeSetting.selectedValue == 4;
         this.nonrated_byoyomi.enabled = this.timeSetting.selectedValue == 4;
         this.nonrated_handicap.enabled = this.timeSetting.selectedValue == 4;
         var _loc1_:Boolean = this.timeSetting.selectedValue == 5 && this.tournaments.length > 0;
         this.tournament_name.visible = _loc1_;
         this.tournament_name.includeInLayout = _loc1_;
         this.study_handicap.enabled = this.timeSetting.selectedValue == 6;
         this.blackName.enabled = this.timeSetting.selectedValue == 6;
         this.whiteName.enabled = this.timeSetting.selectedValue == 6;
         this.commentHBox.visible = this.timeSetting.selectedValue != 6;
         this.commentHBox.includeInLayout = this.timeSetting.selectedValue != 6;
         this.sideFixHBox.visible = this.timeSetting.selectedValue <= 3 && this._premium >= 2 && this._mileage >= this._mileForFix;
         this.sideFixHBox.includeInLayout = this.timeSetting.selectedValue <= 3 && this._premium >= 2 && this._mileage >= this._mileForFix;
         this.privateRoomHBox.visible = this.timeSetting.selectedValue == 4 && this._premium >= 0 || this.timeSetting.selectedValue == 6 && this._premium >= 0;
         this.privateRoomHBox.includeInLayout = this.privateRoomHBox.visible;
      }
      
      public function enableHandicapBlack() : void
      {
         this.handicapBlackCheckBox.includeInLayout = true;
         this.handicapBlackCheckBox.visible = true;
      }
      
      private function _NewGameForm_RadioButtonGroup2_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.initialized(this,"sideFix");
         this.sideFix = _loc1_;
         BindingManager.executeBindings(this,"sideFix",this.sideFix);
         return _loc1_;
      }
      
      private function _NewGameForm_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__timeSetting_change);
         _loc1_.initialized(this,"timeSetting");
         this.timeSetting = _loc1_;
         BindingManager.executeBindings(this,"timeSetting",this.timeSetting);
         return _loc1_;
      }
      
      public function __timeSetting_change(param1:Event) : void
      {
         this.toggleTimeSelection();
      }
      
      public function ___NewGameForm_TitleWindow1_close(param1:CloseEvent) : void
      {
         MyButton.playCancel();
         PopUpManager.removePopUp(this);
      }
      
      private function _NewGameForm_ArrayCollection1_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.source = [this._NewGameForm_Object1_i(),this._NewGameForm_Object2_i(),this._NewGameForm_Object3_i(),this._NewGameForm_Object4_i(),this._NewGameForm_Object5_i(),this._NewGameForm_Object6_i(),this._NewGameForm_Object7_i(),this._NewGameForm_Object8_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewGameForm_Object1_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":0
         };
         this._NewGameForm_Object1 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object1",this._NewGameForm_Object1);
         return _loc1_;
      }
      
      private function _NewGameForm_Object2_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":300
         };
         this._NewGameForm_Object2 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object2",this._NewGameForm_Object2);
         return _loc1_;
      }
      
      private function _NewGameForm_Object3_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":600
         };
         this._NewGameForm_Object3 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object3",this._NewGameForm_Object3);
         return _loc1_;
      }
      
      private function _NewGameForm_Object4_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":900
         };
         this._NewGameForm_Object4 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object4",this._NewGameForm_Object4);
         return _loc1_;
      }
      
      private function _NewGameForm_Object5_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":1200
         };
         this._NewGameForm_Object5 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object5",this._NewGameForm_Object5);
         return _loc1_;
      }
      
      private function _NewGameForm_Object6_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":1800
         };
         this._NewGameForm_Object6 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object6",this._NewGameForm_Object6);
         return _loc1_;
      }
      
      private function _NewGameForm_Object7_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":2700
         };
         this._NewGameForm_Object7 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object7",this._NewGameForm_Object7);
         return _loc1_;
      }
      
      private function _NewGameForm_Object8_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":3600
         };
         this._NewGameForm_Object8 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object8",this._NewGameForm_Object8);
         return _loc1_;
      }
      
      private function _NewGameForm_ArrayCollection2_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.source = [this._NewGameForm_Object9_i(),this._NewGameForm_Object10_i(),this._NewGameForm_Object11_i(),this._NewGameForm_Object12_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewGameForm_Object9_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":10
         };
         this._NewGameForm_Object9 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object9",this._NewGameForm_Object9);
         return _loc1_;
      }
      
      private function _NewGameForm_Object10_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":20
         };
         this._NewGameForm_Object10 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object10",this._NewGameForm_Object10);
         return _loc1_;
      }
      
      private function _NewGameForm_Object11_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":30
         };
         this._NewGameForm_Object11 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object11",this._NewGameForm_Object11);
         return _loc1_;
      }
      
      private function _NewGameForm_Object12_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":60
         };
         this._NewGameForm_Object12 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object12",this._NewGameForm_Object12);
         return _loc1_;
      }
      
      private function _NewGameForm_ArrayCollection3_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.source = [this._NewGameForm_Object13_i(),this._NewGameForm_Object14_i(),this._NewGameForm_Object15_i(),this._NewGameForm_Object16_i(),this._NewGameForm_Object17_i(),this._NewGameForm_Object18_i(),this._NewGameForm_Object19_i(),this._NewGameForm_Object20_i(),this._NewGameForm_Object21_i(),this._NewGameForm_Object22_i(),this._NewGameForm_Object23_i(),this._NewGameForm_Object24_i(),this._NewGameForm_Object25_i(),this._NewGameForm_Object26_i(),this._NewGameForm_Object27_i(),this._NewGameForm_Object28_i(),this._NewGameForm_Object29_i(),this._NewGameForm_Object30_i(),this._NewGameForm_Object31_i(),this._NewGameForm_Object32_i(),this._NewGameForm_Object33_i(),this._NewGameForm_Object34_i(),this._NewGameForm_Object35_i(),this._NewGameForm_Object36_i(),this._NewGameForm_Object37_i(),this._NewGameForm_Object38_i(),this._NewGameForm_Object39_i(),this._NewGameForm_Object40_i(),this._NewGameForm_Object41_i(),this._NewGameForm_Object42_i(),this._NewGameForm_Object43_i(),this._NewGameForm_Object44_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewGameForm_Object13_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"nr"
         };
         this._NewGameForm_Object13 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object13",this._NewGameForm_Object13);
         return _loc1_;
      }
      
      private function _NewGameForm_Object14_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcfixed"
         };
         this._NewGameForm_Object14 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object14",this._NewGameForm_Object14);
         return _loc1_;
      }
      
      private function _NewGameForm_Object15_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hclance"
         };
         this._NewGameForm_Object15 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object15",this._NewGameForm_Object15);
         return _loc1_;
      }
      
      private function _NewGameForm_Object16_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcpawn2d"
         };
         this._NewGameForm_Object16 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object16",this._NewGameForm_Object16);
         return _loc1_;
      }
      
      private function _NewGameForm_Object17_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcbishop"
         };
         this._NewGameForm_Object17 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object17",this._NewGameForm_Object17);
         return _loc1_;
      }
      
      private function _NewGameForm_Object18_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hclanced"
         };
         this._NewGameForm_Object18 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object18",this._NewGameForm_Object18);
         return _loc1_;
      }
      
      private function _NewGameForm_Object19_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcrook"
         };
         this._NewGameForm_Object19 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object19",this._NewGameForm_Object19);
         return _loc1_;
      }
      
      private function _NewGameForm_Object20_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcrooklance"
         };
         this._NewGameForm_Object20 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object20",this._NewGameForm_Object20);
         return _loc1_;
      }
      
      private function _NewGameForm_Object21_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc2p"
         };
         this._NewGameForm_Object21 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object21",this._NewGameForm_Object21);
         return _loc1_;
      }
      
      private function _NewGameForm_Object22_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcbishopd"
         };
         this._NewGameForm_Object22 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object22",this._NewGameForm_Object22);
         return _loc1_;
      }
      
      private function _NewGameForm_Object23_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcrookd"
         };
         this._NewGameForm_Object23 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object23",this._NewGameForm_Object23);
         return _loc1_;
      }
      
      private function _NewGameForm_Object24_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc4p"
         };
         this._NewGameForm_Object24 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object24",this._NewGameForm_Object24);
         return _loc1_;
      }
      
      private function _NewGameForm_Object25_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcrooklanced"
         };
         this._NewGameForm_Object25 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object25",this._NewGameForm_Object25);
         return _loc1_;
      }
      
      private function _NewGameForm_Object26_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc6p"
         };
         this._NewGameForm_Object26 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object26",this._NewGameForm_Object26);
         return _loc1_;
      }
      
      private function _NewGameForm_Object27_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc2pd"
         };
         this._NewGameForm_Object27 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object27",this._NewGameForm_Object27);
         return _loc1_;
      }
      
      private function _NewGameForm_Object28_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc8p"
         };
         this._NewGameForm_Object28 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object28",this._NewGameForm_Object28);
         return _loc1_;
      }
      
      private function _NewGameForm_Object29_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc4pd"
         };
         this._NewGameForm_Object29 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object29",this._NewGameForm_Object29);
         return _loc1_;
      }
      
      private function _NewGameForm_Object30_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hctombonl"
         };
         this._NewGameForm_Object30 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object30",this._NewGameForm_Object30);
         return _loc1_;
      }
      
      private function _NewGameForm_Object31_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hctombol"
         };
         this._NewGameForm_Object31 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object31",this._NewGameForm_Object31);
         return _loc1_;
      }
      
      private function _NewGameForm_Object32_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hctombo"
         };
         this._NewGameForm_Object32 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object32",this._NewGameForm_Object32);
         return _loc1_;
      }
      
      private function _NewGameForm_Object33_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc10p"
         };
         this._NewGameForm_Object33 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object33",this._NewGameForm_Object33);
         return _loc1_;
      }
      
      private function _NewGameForm_Object34_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcfu3"
         };
         this._NewGameForm_Object34 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object34",this._NewGameForm_Object34);
         return _loc1_;
      }
      
      private function _NewGameForm_Object35_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hcnaked"
         };
         this._NewGameForm_Object35 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object35",this._NewGameForm_Object35);
         return _loc1_;
      }
      
      private function _NewGameForm_Object36_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc6pd"
         };
         this._NewGameForm_Object36 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object36",this._NewGameForm_Object36);
         return _loc1_;
      }
      
      private function _NewGameForm_Object37_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"hc8pd"
         };
         this._NewGameForm_Object37 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object37",this._NewGameForm_Object37);
         return _loc1_;
      }
      
      private function _NewGameForm_Object38_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"vaoa"
         };
         this._NewGameForm_Object38 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object38",this._NewGameForm_Object38);
         return _loc1_;
      }
      
      private function _NewGameForm_Object39_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"va5656"
         };
         this._NewGameForm_Object39 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object39",this._NewGameForm_Object39);
         return _loc1_;
      }
      
      private function _NewGameForm_Object40_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"vazoo"
         };
         this._NewGameForm_Object40 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object40",this._NewGameForm_Object40);
         return _loc1_;
      }
      
      private function _NewGameForm_Object41_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"vajudkins"
         };
         this._NewGameForm_Object41 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object41",this._NewGameForm_Object41);
         return _loc1_;
      }
      
      private function _NewGameForm_Object42_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"vamini"
         };
         this._NewGameForm_Object42 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object42",this._NewGameForm_Object42);
         return _loc1_;
      }
      
      private function _NewGameForm_Object43_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"vakyoto"
         };
         this._NewGameForm_Object43 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object43",this._NewGameForm_Object43);
         return _loc1_;
      }
      
      private function _NewGameForm_Object44_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":"va33"
         };
         this._NewGameForm_Object44 = _loc1_;
         BindingManager.executeBindings(this,"_NewGameForm_Object44",this._NewGameForm_Object44);
         return _loc1_;
      }
      
      public function __commentTextInput_enter(param1:FlexEvent) : void
      {
         this.submit();
      }
      
      public function __Submit_click(param1:MouseEvent) : void
      {
         this.submit();
      }
      
      private function _NewGameForm_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return null;
         },function(param1:Object):void
         {
            this.setStyle("backgroundImage",param1);
         },"this.backgroundImage");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = "15" + LanguageSelector.lan.min + " - 60" + LanguageSelector.lan.sec + " , " + LanguageSelector.lan.rated + " (x1.21)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R2.label");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = "10" + LanguageSelector.lan.min + " - 30" + LanguageSelector.lan.sec + " , " + LanguageSelector.lan.rated + " (x1.11)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R8.label");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = " 5" + LanguageSelector.lan.min + " - 30" + LanguageSelector.lan.sec + " , " + LanguageSelector.lan.rated + " (x1.00)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R3.label");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = " 0" + LanguageSelector.lan.min + " - 30" + LanguageSelector.lan.sec + " , " + LanguageSelector.lan.rated + " (x0.85)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R4.label");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.nonrated;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R5.label");
         result[6] = new Binding(this,function():*
         {
            return " 0" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object1.label");
         result[7] = new Binding(this,function():*
         {
            return " 5" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object2.label");
         result[8] = new Binding(this,function():*
         {
            return "10" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object3.label");
         result[9] = new Binding(this,function():*
         {
            return "15" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object4.label");
         result[10] = new Binding(this,function():*
         {
            return "20" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object5.label");
         result[11] = new Binding(this,function():*
         {
            return "30" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object6.label");
         result[12] = new Binding(this,function():*
         {
            return "45" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object7.label");
         result[13] = new Binding(this,function():*
         {
            return "60" + LanguageSelector.lan.min;
         },null,"_NewGameForm_Object8.label");
         result[14] = new Binding(this,function():*
         {
            return "10" + LanguageSelector.lan.sec;
         },null,"_NewGameForm_Object9.label");
         result[15] = new Binding(this,function():*
         {
            return "20" + LanguageSelector.lan.sec;
         },null,"_NewGameForm_Object10.label");
         result[16] = new Binding(this,function():*
         {
            return "30" + LanguageSelector.lan.sec;
         },null,"_NewGameForm_Object11.label");
         result[17] = new Binding(this,function():*
         {
            return "60" + LanguageSelector.lan.sec;
         },null,"_NewGameForm_Object12.label");
         result[18] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_even;
         },null,"_NewGameForm_Object13.label");
         result[19] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_fixed;
         },null,"_NewGameForm_Object14.label");
         result[20] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_lance;
         },null,"_NewGameForm_Object15.label");
         result[21] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Both Pawns Gained","両端歩得 (≒香落ち)");
         },null,"_NewGameForm_Object16.label");
         result[22] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_bishop;
         },null,"_NewGameForm_Object17.label");
         result[23] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Lance Gained","香得 (≒角落ち)");
         },null,"_NewGameForm_Object18.label");
         result[24] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_rook;
         },null,"_NewGameForm_Object19.label");
         result[25] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_rooklance;
         },null,"_NewGameForm_Object20.label");
         result[26] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_2p;
         },null,"_NewGameForm_Object21.label");
         result[27] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Bishop Gained","角得 (≒二枚落ち)");
         },null,"_NewGameForm_Object22.label");
         result[28] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Rook Gained","飛車得 (≒三枚落ち)");
         },null,"_NewGameForm_Object23.label");
         result[29] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_4p;
         },null,"_NewGameForm_Object24.label");
         result[30] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Rook-Lance Gained","飛香得 (≒四枚落ち)");
         },null,"_NewGameForm_Object25.label");
         result[31] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_6p;
         },null,"_NewGameForm_Object26.label");
         result[32] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("2-piece Gained","二枚得 (≒六枚落ち)");
         },null,"_NewGameForm_Object27.label");
         result[33] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_8p;
         },null,"_NewGameForm_Object28.label");
         result[34] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("4-piece Gained","四枚得 (≒八枚落ち)");
         },null,"_NewGameForm_Object29.label");
         result[35] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_tombonl;
         },null,"_NewGameForm_Object30.label");
         result[36] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_tombol;
         },null,"_NewGameForm_Object31.label");
         result[37] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_tombo;
         },null,"_NewGameForm_Object32.label");
         result[38] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_10p;
         },null,"_NewGameForm_Object33.label");
         result[39] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_3pawns;
         },null,"_NewGameForm_Object34.label");
         result[40] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_naked;
         },null,"_NewGameForm_Object35.label");
         result[41] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("6-piece Gained","六枚得 (≒裸玉)");
         },null,"_NewGameForm_Object36.label");
         result[42] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("8-piece Gained","八枚得");
         },null,"_NewGameForm_Object37.label");
         result[43] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_openair;
         },null,"_NewGameForm_Object38.label");
         result[44] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_56;
         },null,"_NewGameForm_Object39.label");
         result[45] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_zoo;
         },null,"_NewGameForm_Object40.label");
         result[46] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_judkins;
         },null,"_NewGameForm_Object41.label");
         result[47] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_mini;
         },null,"_NewGameForm_Object42.label");
         result[48] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_kyoto;
         },null,"_NewGameForm_Object43.label");
         result[49] = new Binding(this,function():*
         {
            return LanguageSelector.lan.hc_33;
         },null,"_NewGameForm_Object44.label");
         result[50] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Black in handicap","駒落ちで自分が下手");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"handicapBlackCheckBox.label");
         result[51] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.tournament;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R6.label");
         result[52] = new Binding(this,null,null,"tournament_name.dataProvider","tournaments");
         result[53] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.study_room;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"R7.label");
         result[54] = new Binding(this,function():Object
         {
            return nonrated_handicap.dataProvider;
         },null,"study_handicap.dataProvider");
         result[55] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.comment;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NewGameForm_Label1.text");
         result[56] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.for_premium;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"commentTextInput.toolTip");
         result[57] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Random","振り駒");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NewGameForm_RadioButton8.label");
         result[58] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Black","先手");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NewGameForm_RadioButton9.label");
         result[59] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("for ","") + "" + _mileForFix + " " + LanguageSelector.EJ("D-Miles","Dマイル消費");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NewGameForm_RadioButton9.toolTip");
         result[60] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("White","後手");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NewGameForm_RadioButton10.label");
         result[61] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("for ","") + "" + _mileForFix + " " + LanguageSelector.EJ("D-Miles","Dマイル消費");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NewGameForm_RadioButton10.toolTip");
         result[62] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.private_room;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"privateRoomCheckBox.label");
         result[63] = new Binding(this,function():Boolean
         {
            return privateRoomCheckBox.selected;
         },null,"privateRoomPass.enabled");
         result[64] = new Binding(this,function():String
         {
            var _loc1_:* = !!privateRoomCheckBox.selected?LanguageSelector.EJ("Type in password","パスワードを入力して下さい"):"";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"privateRoomPass.toolTip");
         result[65] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.wait;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"Submit.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get R2() : RadioButton
      {
         return this._2592R2;
      }
      
      public function set R2(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2592R2;
         if(_loc2_ !== param1)
         {
            this._2592R2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get R3() : RadioButton
      {
         return this._2593R3;
      }
      
      public function set R3(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2593R3;
         if(_loc2_ !== param1)
         {
            this._2593R3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get R4() : RadioButton
      {
         return this._2594R4;
      }
      
      public function set R4(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2594R4;
         if(_loc2_ !== param1)
         {
            this._2594R4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get R5() : RadioButton
      {
         return this._2595R5;
      }
      
      public function set R5(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2595R5;
         if(_loc2_ !== param1)
         {
            this._2595R5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get R6() : RadioButton
      {
         return this._2596R6;
      }
      
      public function set R6(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2596R6;
         if(_loc2_ !== param1)
         {
            this._2596R6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R6",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get R7() : RadioButton
      {
         return this._2597R7;
      }
      
      public function set R7(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2597R7;
         if(_loc2_ !== param1)
         {
            this._2597R7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get R8() : RadioButton
      {
         return this._2598R8;
      }
      
      public function set R8(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2598R8;
         if(_loc2_ !== param1)
         {
            this._2598R8 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"R8",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get Submit() : MyButton
      {
         return this._1807668168Submit;
      }
      
      public function set Submit(param1:MyButton) : void
      {
         var _loc2_:Object = this._1807668168Submit;
         if(_loc2_ !== param1)
         {
            this._1807668168Submit = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Submit",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blackName() : TextInput
      {
         return this._1332111146blackName;
      }
      
      public function set blackName(param1:TextInput) : void
      {
         var _loc2_:Object = this._1332111146blackName;
         if(_loc2_ !== param1)
         {
            this._1332111146blackName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blackName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get commentHBox() : HBox
      {
         return this._2103142210commentHBox;
      }
      
      public function set commentHBox(param1:HBox) : void
      {
         var _loc2_:Object = this._2103142210commentHBox;
         if(_loc2_ !== param1)
         {
            this._2103142210commentHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"commentHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get commentTextInput() : TextInput
      {
         return this._674741506commentTextInput;
      }
      
      public function set commentTextInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._674741506commentTextInput;
         if(_loc2_ !== param1)
         {
            this._674741506commentTextInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"commentTextInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get handicapBlackCheckBox() : CheckBox
      {
         return this._817887210handicapBlackCheckBox;
      }
      
      public function set handicapBlackCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._817887210handicapBlackCheckBox;
         if(_loc2_ !== param1)
         {
            this._817887210handicapBlackCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handicapBlackCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nonrated_byoyomi() : ComboBox
      {
         return this._1973235394nonrated_byoyomi;
      }
      
      public function set nonrated_byoyomi(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1973235394nonrated_byoyomi;
         if(_loc2_ !== param1)
         {
            this._1973235394nonrated_byoyomi = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nonrated_byoyomi",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nonrated_handicap() : ComboBox
      {
         return this._1260748256nonrated_handicap;
      }
      
      public function set nonrated_handicap(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1260748256nonrated_handicap;
         if(_loc2_ !== param1)
         {
            this._1260748256nonrated_handicap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nonrated_handicap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nonrated_total() : ComboBox
      {
         return this._563633628nonrated_total;
      }
      
      public function set nonrated_total(param1:ComboBox) : void
      {
         var _loc2_:Object = this._563633628nonrated_total;
         if(_loc2_ !== param1)
         {
            this._563633628nonrated_total = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nonrated_total",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get privateRoomCheckBox() : CheckBox
      {
         return this._2093036863privateRoomCheckBox;
      }
      
      public function set privateRoomCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._2093036863privateRoomCheckBox;
         if(_loc2_ !== param1)
         {
            this._2093036863privateRoomCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"privateRoomCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get privateRoomHBox() : HBox
      {
         return this._657411487privateRoomHBox;
      }
      
      public function set privateRoomHBox(param1:HBox) : void
      {
         var _loc2_:Object = this._657411487privateRoomHBox;
         if(_loc2_ !== param1)
         {
            this._657411487privateRoomHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"privateRoomHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get privateRoomPass() : TextInput
      {
         return this._657143249privateRoomPass;
      }
      
      public function set privateRoomPass(param1:TextInput) : void
      {
         var _loc2_:Object = this._657143249privateRoomPass;
         if(_loc2_ !== param1)
         {
            this._657143249privateRoomPass = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"privateRoomPass",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sideFix() : RadioButtonGroup
      {
         return this._2085200702sideFix;
      }
      
      public function set sideFix(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._2085200702sideFix;
         if(_loc2_ !== param1)
         {
            this._2085200702sideFix = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideFix",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sideFixHBox() : HBox
      {
         return this._743150753sideFixHBox;
      }
      
      public function set sideFixHBox(param1:HBox) : void
      {
         var _loc2_:Object = this._743150753sideFixHBox;
         if(_loc2_ !== param1)
         {
            this._743150753sideFixHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideFixHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get study_handicap() : ComboBox
      {
         return this._1279213202study_handicap;
      }
      
      public function set study_handicap(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1279213202study_handicap;
         if(_loc2_ !== param1)
         {
            this._1279213202study_handicap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"study_handicap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timeSetting() : RadioButtonGroup
      {
         return this._1605238077timeSetting;
      }
      
      public function set timeSetting(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._1605238077timeSetting;
         if(_loc2_ !== param1)
         {
            this._1605238077timeSetting = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeSetting",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tournament_name() : ComboBox
      {
         return this._1123328801tournament_name;
      }
      
      public function set tournament_name(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1123328801tournament_name;
         if(_loc2_ !== param1)
         {
            this._1123328801tournament_name = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tournament_name",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get whiteName() : TextInput
      {
         return this._1654751660whiteName;
      }
      
      public function set whiteName(param1:TextInput) : void
      {
         var _loc2_:Object = this._1654751660whiteName;
         if(_loc2_ !== param1)
         {
            this._1654751660whiteName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"whiteName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _mileForFix() : int
      {
         return this._1137551520_mileForFix;
      }
      
      private function set _mileForFix(param1:int) : void
      {
         var _loc2_:Object = this._1137551520_mileForFix;
         if(_loc2_ !== param1)
         {
            this._1137551520_mileForFix = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_mileForFix",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tournaments() : ArrayCollection
      {
         return this._811015254tournaments;
      }
      
      public function set tournaments(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._811015254tournaments;
         if(_loc2_ !== param1)
         {
            this._811015254tournaments = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tournaments",_loc2_,param1));
            }
         }
      }
   }
}
