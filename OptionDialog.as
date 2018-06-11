package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.TabNavigator;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.CheckBox;
   import mx.controls.ColorPicker;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.ColorPickerEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class OptionDialog extends TitleWindow implements IBindingClient
   {
      
      public static var WRITE_OPTION:String = "write_option";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1577144242OkButton:MyButton;
      
      private var _916609357RadioGroup1:RadioButtonGroup;
      
      private var _916609358RadioGroup2:RadioButtonGroup;
      
      private var _916609359RadioGroup3:RadioButtonGroup;
      
      private var _916609360RadioGroup4:RadioButtonGroup;
      
      private var _916609361RadioGroup5:RadioButtonGroup;
      
      private var _916609362RadioGroup6:RadioButtonGroup;
      
      public var _OptionDialog_Label1:Label;
      
      public var _OptionDialog_Label10:Label;
      
      public var _OptionDialog_Label11:Label;
      
      public var _OptionDialog_Label13:Label;
      
      public var _OptionDialog_Label14:Label;
      
      public var _OptionDialog_Label2:Label;
      
      public var _OptionDialog_Label3:Label;
      
      public var _OptionDialog_Label4:Label;
      
      public var _OptionDialog_Label5:Label;
      
      public var _OptionDialog_Label6:Label;
      
      public var _OptionDialog_Label7:Label;
      
      public var _OptionDialog_Label8:Label;
      
      public var _OptionDialog_Label9:Label;
      
      public var _OptionDialog_LinkButton4:LinkButton;
      
      public var _OptionDialog_Object1:Object;
      
      public var _OptionDialog_Object2:Object;
      
      public var _OptionDialog_Object3:Object;
      
      public var _OptionDialog_Object4:Object;
      
      public var _OptionDialog_Object5:Object;
      
      public var _OptionDialog_Object6:Object;
      
      public var _OptionDialog_Object7:Object;
      
      public var _OptionDialog_Object8:Object;
      
      public var _OptionDialog_RadioButton1:RadioButton;
      
      public var _OptionDialog_RadioButton11:RadioButton;
      
      public var _OptionDialog_RadioButton12:RadioButton;
      
      public var _OptionDialog_RadioButton13:RadioButton;
      
      public var _OptionDialog_RadioButton14:RadioButton;
      
      public var _OptionDialog_RadioButton15:RadioButton;
      
      public var _OptionDialog_RadioButton2:RadioButton;
      
      public var _OptionDialog_RadioButton3:RadioButton;
      
      public var _OptionDialog_RadioButton4:RadioButton;
      
      public var _OptionDialog_RadioButton5:RadioButton;
      
      public var _OptionDialog_RadioButton6:RadioButton;
      
      public var _OptionDialog_RadioButton7:RadioButton;
      
      public var _OptionDialog_RadioButton8:RadioButton;
      
      public var _OptionDialog_VBox1:VBox;
      
      public var _OptionDialog_VBox3:VBox;
      
      public var _OptionDialog_VBox6:VBox;
      
      public var _OptionDialog_VBox7:VBox;
      
      private var _1608057227acceptArrowsCheckBox:CheckBox;
      
      private var _1398598337arrowCanvas:Canvas;
      
      private var _1487515128arrowColorPicker:ColorPicker;
      
      private var _1361910720buttonSoundCheckBox:CheckBox;
      
      private var _1250550845chatSound1CheckBox:CheckBox;
      
      private var _556903618chatSound2CheckBox:CheckBox;
      
      private var _1087365321gameEndSoundCheckBox:CheckBox;
      
      private var _1768290416games100:RadioButton;
      
      private var _1768289455games200:RadioButton;
      
      private var _1768288494games300:RadioButton;
      
      private var _195588836games50:RadioButton;
      
      private var _1768286572games500:RadioButton;
      
      private var _809272773grabPieceCheckBox:CheckBox;
      
      private var _272893731highlightMovableCheckBox:CheckBox;
      
      private var _618034850levelEnglishCombo:ComboBox;
      
      private var _672222185levelStudyCombo:ComboBox;
      
      private var _1271531855notifyBlindCheckBox:CheckBox;
      
      private var _1845423840optionTab:TabNavigator;
      
      private var _61448663pieceSetVBox:VBox;
      
      private var _1077378634pieceSetVBox34:VBox;
      
      private var _1820139385pmAutoOpenCheckBox:CheckBox;
      
      private var _970407273radioNoto:RadioButton;
      
      private var _251713038radioYamato:RadioButton;
      
      private var _1164738350receiveKifuCommentCheckBox:CheckBox;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _pieceRadios:Array;
      
      private var _pieceRadios34:Array;
      
      private const IMAGE_DIRECTORY:String = "https://81dojo.com/dojo/images/";
      
      private var _embed_mxml_images_icon_external_link_png_1541794256:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function OptionDialog()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.modalTransparencyDuration = 0;
               this.cornerRadius = 0;
               this.paddingLeft = 8;
               this.paddingBottom = 8;
               this.paddingRight = 8;
               this.paddingTop = 8;
               this.fontFamily = "Meiryo UI";
               this.fontSize = 11;
               this.modalTransparencyBlur = 0;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":TabNavigator,
                  "id":"optionTab",
                  "stylesFactory":function():void
                  {
                     this.paddingTop = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":400,
                        "height":490,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":VBox,
                           "id":"_OptionDialog_VBox1",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 20;
                              this.paddingTop = 15;
                              this.verticalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingBottom = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_OptionDialog_Label1"
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton1",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup6",
                                                "value":0
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup6",
                                                "value":1
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton3",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup6",
                                                "value":2
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"pieceSetVBox",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 3;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":290,
                                          "percentWidth":100,
                                          "horizontalScrollPolicy":"off"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_OptionDialog_Label2"
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton4",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup2",
                                                "value":100
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton5",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup2",
                                                "value":101
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton6",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup2",
                                                "value":102
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Spacer,
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":8};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"notifyBlindCheckBox",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 255;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"grabPieceCheckBox",
                                    "events":{"change":"__grabPieceCheckBox_change"}
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"highlightMovableCheckBox",
                                    "events":{"change":"__highlightMovableCheckBox_change"}
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"_OptionDialog_VBox3",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 20;
                              this.paddingTop = 15;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":CheckBox,
                                 "id":"buttonSoundCheckBox",
                                 "events":{"change":"__buttonSoundCheckBox_change"}
                              }),new UIComponentDescriptor({
                                 "type":CheckBox,
                                 "id":"gameEndSoundCheckBox",
                                 "events":{"change":"__gameEndSoundCheckBox_change"}
                              }),new UIComponentDescriptor({
                                 "type":HBox,
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_OptionDialog_Label3"
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"chatSound1CheckBox",
                                             "events":{"change":"__chatSound1CheckBox_change"}
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"chatSound2CheckBox",
                                             "events":{"change":"__chatSound2CheckBox_change"}
                                          })]};
                                       }
                                    })]};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_OptionDialog_Label4"
                              }),new UIComponentDescriptor({
                                 "type":VBox,
                                 "stylesFactory":function():void
                                 {
                                    this.paddingLeft = 30;
                                    this.verticalGap = 3;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":RadioButton,
                                       "id":"_OptionDialog_RadioButton7",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "groupName":"RadioGroup1",
                                             "value":1
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalAlign = "middle";
                                          this.horizontalGap = 3;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":RadioButton,
                                             "id":"_OptionDialog_RadioButton8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "groupName":"RadioGroup1",
                                                   "value":2
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___OptionDialog_LinkButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_external_link_png_1541794256;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalAlign = "middle";
                                          this.horizontalGap = 3;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":RadioButton,
                                             "id":"radioYamato",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "groupName":"RadioGroup1",
                                                   "value":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___OptionDialog_LinkButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_external_link_png_1541794256;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalAlign = "middle";
                                          this.horizontalGap = 3;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":RadioButton,
                                             "id":"radioNoto",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "groupName":"RadioGroup1",
                                                   "value":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___OptionDialog_LinkButton3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_external_link_png_1541794256;
                                             }
                                          })]};
                                       }
                                    })]};
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"_OptionDialog_VBox6",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 10;
                              this.paddingTop = 10;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_OptionDialog_Label5",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.paddingLeft = 10;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_OptionDialog_Label6"
                                       }),new UIComponentDescriptor({
                                          "type":ComboBox,
                                          "id":"levelStudyCombo",
                                          "events":{"change":"__levelStudyCombo_change"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {"dataProvider":_OptionDialog_ArrayCollection1_c()};
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_OptionDialog_Label7"
                                       }),new UIComponentDescriptor({
                                          "type":ComboBox,
                                          "id":"levelEnglishCombo",
                                          "events":{"change":"__levelEnglishCombo_change"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {"dataProvider":_OptionDialog_ArrayCollection2_c()};
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_OptionDialog_Label8",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.paddingLeft = 10;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 15;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton11",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup3",
                                                "value":1
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton12",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup3",
                                                "value":4
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton13",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup3",
                                                "value":0
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton14",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup3",
                                                "value":3,
                                                "visible":false,
                                                "includeInLayout":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"_OptionDialog_RadioButton15",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "groupName":"RadioGroup3",
                                                "value":2,
                                                "visible":false,
                                                "includeInLayout":false
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
                                          "id":"_OptionDialog_Label9",
                                          "stylesFactory":function():void
                                          {
                                             this.fontWeight = "bold";
                                             this.paddingLeft = 10;
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":CheckBox,
                                          "id":"pmAutoOpenCheckBox",
                                          "events":{"change":"__pmAutoOpenCheckBox_change"}
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_OptionDialog_Label10",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.paddingLeft = 10;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"acceptArrowsCheckBox",
                                    "events":{"change":"__acceptArrowsCheckBox_change"},
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_OptionDialog_Label11"
                                       }),new UIComponentDescriptor({
                                          "type":ColorPicker,
                                          "id":"arrowColorPicker",
                                          "events":{"change":"__arrowColorPicker_change"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "showTextField":true,
                                                "width":30,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "stylesFactory":function():void
                                          {
                                             this.paddingRight = 0;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"text":""};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"arrowCanvas",
                                          "stylesFactory":function():void
                                          {
                                             this.backgroundColor = 16768341;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":160,
                                                "height":30
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_OptionDialog_Label13",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.paddingLeft = 10;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"games50",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "label":"50",
                                                "groupName":"RadioGroup4",
                                                "value":50
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"games100",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "label":"100",
                                                "groupName":"RadioGroup4",
                                                "value":100
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"games200",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "label":"200",
                                                "groupName":"RadioGroup4",
                                                "value":200
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"games300",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "label":"300",
                                                "groupName":"RadioGroup4",
                                                "value":300
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RadioButton,
                                          "id":"games500",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "label":"500",
                                                "groupName":"RadioGroup4",
                                                "value":500
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_OptionDialog_Label14",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.paddingLeft = 10;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":LinkButton,
                                          "id":"_OptionDialog_LinkButton4",
                                          "events":{"click":"___OptionDialog_LinkButton4_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.icon = _embed_mxml_images_icon_external_link_png_1541794256;
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"receiveKifuCommentCheckBox",
                                    "events":{"change":"__receiveKifuCommentCheckBox_change"},
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 30;
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"_OptionDialog_VBox7",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 20;
                              this.paddingTop = 15;
                              this.verticalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"pieceSetVBox34",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":290,
                                          "percentWidth":100,
                                          "horizontalScrollPolicy":"off"
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
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
                           "type":MyButton,
                           "id":"OkButton",
                           "events":{"click":"__OkButton_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"OK",
                                 "soundType":1,
                                 "width":100
                              };
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         this._pieceRadios = new Array();
         this._pieceRadios34 = new Array();
         this._embed_mxml_images_icon_external_link_png_1541794256 = OptionDialog__embed_mxml_images_icon_external_link_png_1541794256;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._OptionDialog_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_OptionDialogWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return OptionDialog[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this._OptionDialog_RadioButtonGroup3_i();
         this._OptionDialog_RadioButtonGroup2_i();
         this._OptionDialog_RadioButtonGroup4_i();
         this._OptionDialog_RadioButtonGroup5_i();
         this._OptionDialog_RadioButtonGroup6_i();
         this._OptionDialog_RadioButtonGroup1_i();
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         OptionDialog._watcherSetupUtil = param1;
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
            this.modalTransparencyDuration = 0;
            this.cornerRadius = 0;
            this.paddingLeft = 8;
            this.paddingBottom = 8;
            this.paddingRight = 8;
            this.paddingTop = 8;
            this.fontFamily = "Meiryo UI";
            this.fontSize = 11;
            this.modalTransparencyBlur = 0;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function loadPieceSets(param1:Array) : void
      {
         var _loc3_:HBox = null;
         var _loc4_:RadioButton = null;
         var _loc5_:int = 0;
         var _loc6_:Image = null;
         var _loc2_:int = 0;
         while(_loc2_ < Board.pieceSets.length - 3)
         {
            _loc3_ = new HBox();
            _loc3_.setStyle("horizontalGap",0);
            _loc4_ = new RadioButton();
            _loc4_.label = param1[_loc2_].getName;
            _loc4_.setStyle("paddingRight",20);
            _loc4_.groupName = "RadioGroup2";
            _loc4_.value = param1[_loc2_].index;
            if(param1[_loc2_].highRez)
            {
               _loc4_.toolTip = LanguageSelector.EJ("High Resolution. (supports larger boards)","高解像度 (大きい盤サイズ対応)");
            }
            _loc3_.addChild(_loc4_);
            this._pieceRadios.push(_loc4_);
            for each(_loc5_ in [0,10,7])
            {
               _loc6_ = new Image();
               _loc6_.source = param1[_loc2_].getPieceClass(0,_loc5_);
               _loc6_.width = 0.8 * 43;
               _loc6_.height = 0.8 * 48;
               _loc3_.addChild(_loc6_);
            }
            this.pieceSetVBox.addChild(_loc3_);
            _loc2_++;
         }
      }
      
      public function loadPieceSets34(param1:Array) : void
      {
         var _loc3_:HBox = null;
         var _loc4_:RadioButton = null;
         var _loc5_:int = 0;
         var _loc6_:Image = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = new HBox();
            _loc3_.setStyle("horizontalGap",5);
            _loc3_.setStyle("paddingLeft",70);
            _loc3_.setStyle("paddingBottom",5);
            _loc4_ = new RadioButton();
            _loc4_.label = param1[_loc2_].getName;
            _loc4_.setStyle("paddingRight",20);
            _loc4_.groupName = "RadioGroup5";
            _loc4_.value = param1[_loc2_].index;
            this.pieceSetVBox34.addChild(_loc4_);
            this._pieceRadios34.push(_loc4_);
            for each(_loc5_ in [0,1,2,7,15])
            {
               _loc6_ = new Image();
               _loc6_.source = param1[_loc2_].getPieceClass(0,_loc5_);
               _loc6_.width = 45;
               _loc6_.height = 45;
               _loc3_.addChild(_loc6_);
            }
            this.pieceSetVBox34.addChild(_loc3_);
            _loc2_++;
         }
      }
      
      public function enablePremium(param1:int) : void
      {
         if(param1 < 1)
         {
            this._pieceRadios[5].enabled = false;
            this._pieceRadios[5].toolTip = LanguageSelector.lan.for_premium;
            this._pieceRadios[6].enabled = false;
            this._pieceRadios[6].toolTip = LanguageSelector.lan.for_premium;
            this._pieceRadios[7].enabled = false;
            this._pieceRadios[7].toolTip = LanguageSelector.lan.for_premium;
            this._pieceRadios[8].enabled = false;
            this._pieceRadios[8].toolTip = LanguageSelector.lan.for_premium;
            this.games100.enabled = false;
            this.games100.toolTip = LanguageSelector.lan.for_premium;
            this.radioYamato.enabled = false;
            this.radioYamato.toolTip = LanguageSelector.lan.for_premium;
            this.radioNoto.enabled = false;
            this.radioNoto.toolTip = LanguageSelector.lan.for_premium;
         }
         if(param1 < 2)
         {
            this.games200.enabled = false;
            this.games200.toolTip = LanguageSelector.lan.for_premium;
         }
         if(param1 < 3)
         {
            this.games300.enabled = false;
            this.games300.toolTip = LanguageSelector.lan.for_premium;
         }
         if(param1 < 4)
         {
            this.games500.enabled = false;
            this.games500.toolTip = LanguageSelector.lan.for_premium;
         }
      }
      
      private function _updateOption(param1:String, param2:Object) : void
      {
         param2 = int(param2);
         dispatchEvent(new ServerMessageEvent(WRITE_OPTION,param1 + "," + param2));
      }
      
      private function _arrowColorChanged() : void
      {
         this._updateOption("arrow_color",this.arrowColorPicker.selectedColor);
         this.drawArrow();
      }
      
      public function drawArrow() : void
      {
         this.arrowCanvas.removeAllChildren();
         var _loc1_:BoardArrow = new BoardArrow(-1,new Point(6,1),new Point(9,1),this.arrowColorPicker.selectedColor,parentApplication.login_name);
         _loc1_.drawArrow(0);
         _loc1_.x = -10;
         _loc1_.y = -10;
         this.arrowCanvas.addChild(_loc1_);
      }
      
      private function _interpretLineBreak(param1:String) : String
      {
         return param1.replace(/\\n/g,"\n");
      }
      
      private function _OptionDialog_RadioButtonGroup3_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroup1_change);
         _loc1_.initialized(this,"RadioGroup1");
         this.RadioGroup1 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup1",this.RadioGroup1);
         return _loc1_;
      }
      
      public function __RadioGroup1_change(param1:Event) : void
      {
         this._updateOption("timer_sound_type",this.RadioGroup1.selectedValue);
      }
      
      private function _OptionDialog_RadioButtonGroup2_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroup2_change);
         _loc1_.initialized(this,"RadioGroup2");
         this.RadioGroup2 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup2",this.RadioGroup2);
         return _loc1_;
      }
      
      public function __RadioGroup2_change(param1:Event) : void
      {
         this._updateOption("piece_type",this.RadioGroup2.selectedValue);
      }
      
      private function _OptionDialog_RadioButtonGroup4_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroup3_change);
         _loc1_.initialized(this,"RadioGroup3");
         this.RadioGroup3 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup3",this.RadioGroup3);
         return _loc1_;
      }
      
      public function __RadioGroup3_change(param1:Event) : void
      {
         this._updateOption("notation_style",this.RadioGroup3.selectedValue);
      }
      
      private function _OptionDialog_RadioButtonGroup5_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroup4_change);
         _loc1_.initialized(this,"RadioGroup4");
         this.RadioGroup4 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup4",this.RadioGroup4);
         return _loc1_;
      }
      
      public function __RadioGroup4_change(param1:Event) : void
      {
         this._updateOption("history_length",this.RadioGroup4.selectedValue);
      }
      
      private function _OptionDialog_RadioButtonGroup6_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroup5_change);
         _loc1_.initialized(this,"RadioGroup5");
         this.RadioGroup5 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup5",this.RadioGroup5);
         return _loc1_;
      }
      
      public function __RadioGroup5_change(param1:Event) : void
      {
         this._updateOption("piece_type_34",this.RadioGroup5.selectedValue);
      }
      
      private function _OptionDialog_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroup6_change);
         _loc1_.initialized(this,"RadioGroup6");
         this.RadioGroup6 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup6",this.RadioGroup6);
         return _loc1_;
      }
      
      public function __RadioGroup6_change(param1:Event) : void
      {
         this._updateOption("board_size",this.RadioGroup6.selectedValue);
      }
      
      public function __grabPieceCheckBox_change(param1:Event) : void
      {
         this._updateOption("hold_piece",this.grabPieceCheckBox.selected);
      }
      
      public function __highlightMovableCheckBox_change(param1:Event) : void
      {
         this._updateOption("highlight_movable",this.highlightMovableCheckBox.selected);
      }
      
      public function __buttonSoundCheckBox_change(param1:Event) : void
      {
         this._updateOption("button_sound_play",this.buttonSoundCheckBox.selected);
      }
      
      public function __gameEndSoundCheckBox_change(param1:Event) : void
      {
         this._updateOption("end_sound_play",this.gameEndSoundCheckBox.selected);
      }
      
      public function __chatSound1CheckBox_change(param1:Event) : void
      {
         this._updateOption("lobbychat_sound_play",this.chatSound1CheckBox.selected);
      }
      
      public function __chatSound2CheckBox_change(param1:Event) : void
      {
         this._updateOption("gamechat_sound_play",this.chatSound2CheckBox.selected);
      }
      
      public function ___OptionDialog_LinkButton1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://shogihub.com/players/182"),"quote");
      }
      
      public function ___OptionDialog_LinkButton2_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://shogihub.com/players/449"),"quote");
      }
      
      public function ___OptionDialog_LinkButton3_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("https://81dojo.com/jp/?jump=announcements/160320.html"),"quote");
      }
      
      private function _OptionDialog_ArrayCollection1_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.source = [this._OptionDialog_Object1_i(),this._OptionDialog_Object2_i(),this._OptionDialog_Object3_i(),this._OptionDialog_Object4_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OptionDialog_Object1_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":0
         };
         this._OptionDialog_Object1 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object1",this._OptionDialog_Object1);
         return _loc1_;
      }
      
      private function _OptionDialog_Object2_i() : Object
      {
         var _loc1_:Object = {"label":null};
         this._OptionDialog_Object2 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object2",this._OptionDialog_Object2);
         return _loc1_;
      }
      
      private function _OptionDialog_Object3_i() : Object
      {
         var _loc1_:Object = {"label":null};
         this._OptionDialog_Object3 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object3",this._OptionDialog_Object3);
         return _loc1_;
      }
      
      private function _OptionDialog_Object4_i() : Object
      {
         var _loc1_:Object = {"label":null};
         this._OptionDialog_Object4 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object4",this._OptionDialog_Object4);
         return _loc1_;
      }
      
      public function __levelStudyCombo_change(param1:ListEvent) : void
      {
         this._updateOption("postgame_study_level",this.levelStudyCombo.selectedIndex);
      }
      
      private function _OptionDialog_ArrayCollection2_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.source = [this._OptionDialog_Object5_i(),this._OptionDialog_Object6_i(),this._OptionDialog_Object7_i(),this._OptionDialog_Object8_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _OptionDialog_Object5_i() : Object
      {
         var _loc1_:Object = {
            "label":null,
            "data":0
         };
         this._OptionDialog_Object5 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object5",this._OptionDialog_Object5);
         return _loc1_;
      }
      
      private function _OptionDialog_Object6_i() : Object
      {
         var _loc1_:Object = {"label":null};
         this._OptionDialog_Object6 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object6",this._OptionDialog_Object6);
         return _loc1_;
      }
      
      private function _OptionDialog_Object7_i() : Object
      {
         var _loc1_:Object = {"label":null};
         this._OptionDialog_Object7 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object7",this._OptionDialog_Object7);
         return _loc1_;
      }
      
      private function _OptionDialog_Object8_i() : Object
      {
         var _loc1_:Object = {"label":null};
         this._OptionDialog_Object8 = _loc1_;
         BindingManager.executeBindings(this,"_OptionDialog_Object8",this._OptionDialog_Object8);
         return _loc1_;
      }
      
      public function __levelEnglishCombo_change(param1:ListEvent) : void
      {
         this._updateOption("english_level",this.levelEnglishCombo.selectedIndex);
      }
      
      public function __pmAutoOpenCheckBox_change(param1:Event) : void
      {
         this._updateOption("pm_auto_open",this.pmAutoOpenCheckBox.selected);
      }
      
      public function __acceptArrowsCheckBox_change(param1:Event) : void
      {
         this._updateOption("accept_arrow",this.acceptArrowsCheckBox.selected);
      }
      
      public function __arrowColorPicker_change(param1:ColorPickerEvent) : void
      {
         this._arrowColorChanged();
      }
      
      public function ___OptionDialog_LinkButton4_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("https://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/players/favorites"),"quote");
      }
      
      public function __receiveKifuCommentCheckBox_change(param1:Event) : void
      {
         this._updateOption("receive_kifu_comment",this.receiveKifuCommentCheckBox.selected);
      }
      
      public function __OkButton_click(param1:MouseEvent) : void
      {
         PopUpManager.removePopUp(this);
      }
      
      private function _OptionDialog_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-green.jpg";
         },function(param1:Object):void
         {
            this.setStyle("backgroundImage",param1);
         },"this.backgroundImage");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.pieces;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_VBox1.label");
         result[2] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            _OptionDialog_VBox1.setStyle("backgroundImage",param1);
         },"_OptionDialog_VBox1.backgroundImage");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.board_size;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label1.text");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.board_size_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label1.toolTip");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Standard","標準");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton1.label");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.board_size_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton1.toolTip");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Large","大");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton2.label");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.board_size_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton2.toolTip");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Huge","特大");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton3.label");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.board_size_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton3.toolTip");
         result[11] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.blind_piece;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label2.text");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Middle","中級(Middle)");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton4.label");
         result[13] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Hard","上級(Hard)");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton5.label");
         result[14] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Extreme","超級(Extreme)");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton6.label");
         result[15] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.op_blind_notify;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"notifyBlindCheckBox.label");
         result[16] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.op_grab;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"grabPieceCheckBox.label");
         result[17] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.op_highlight;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"highlightMovableCheckBox.label");
         result[18] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.sound;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_VBox3.label");
         result[19] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            _OptionDialog_VBox3.setStyle("backgroundImage",param1);
         },"_OptionDialog_VBox3.backgroundImage");
         result[20] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.sound_button;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"buttonSoundCheckBox.label");
         result[21] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.sound_end;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"gameEndSoundCheckBox.label");
         result[22] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.sound_chat;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label3.text");
         result[23] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.lobby;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"chatSound1CheckBox.label");
         result[24] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.game_room;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"chatSound2CheckBox.label");
         result[25] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.sound_byoyomi;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label4.text");
         result[26] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.byoyomi_chime;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton7.label");
         result[27] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.byoyomi_jp + " (" + LanguageSelector.EJ("by Madoka KITAO","北尾まどか女流二段") + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton8.label");
         result[28] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.byoyomi_jp + " (" + LanguageSelector.EJ("by Yamato TAKAHASHI","高橋和女流三段") + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"radioYamato.label");
         result[29] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("yetAnother 萌えるチェスクロ voice sample","yetAnother製 「萌えるチェスクロ」 サンプル音源 (能登麻美子)");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"radioNoto.label");
         result[30] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.communication;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_VBox6.label");
         result[31] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            _OptionDialog_VBox6.setStyle("backgroundImage",param1);
         },"_OptionDialog_VBox6.backgroundImage");
         result[32] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.study_fitness;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label5.text");
         result[33] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.study_level;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label6.text");
         result[34] = new Binding(this,function():String
         {
            var _loc1_:* = _interpretLineBreak(LanguageSelector.lan.study_level_tip);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"levelStudyCombo.toolTip");
         result[35] = new Binding(this,function():*
         {
            return "<" + LanguageSelector.lan.not_defined + ">";
         },null,"_OptionDialog_Object1.label");
         result[36] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Level 0","レベル0");
         },null,"_OptionDialog_Object2.label");
         result[37] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Level 1","レベル1");
         },null,"_OptionDialog_Object3.label");
         result[38] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Level 2","レベル2");
         },null,"_OptionDialog_Object4.label");
         result[39] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.english_level;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label7.text");
         result[40] = new Binding(this,function():String
         {
            var _loc1_:* = _interpretLineBreak(LanguageSelector.lan.english_level_tip);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"levelEnglishCombo.toolTip");
         result[41] = new Binding(this,function():*
         {
            return "<" + LanguageSelector.lan.not_defined + ">";
         },null,"_OptionDialog_Object5.label");
         result[42] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Level 0","レベル0");
         },null,"_OptionDialog_Object6.label");
         result[43] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Level 1","レベル1");
         },null,"_OptionDialog_Object7.label");
         result[44] = new Binding(this,function():*
         {
            return LanguageSelector.EJ("Level 2","レベル2");
         },null,"_OptionDialog_Object8.label");
         result[45] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.notation;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label8.text");
         result[46] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.notation_jp;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton11.label");
         result[47] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.notation_west;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton12.label");
         result[48] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Chess-order","チェス形式");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton13.label");
         result[49] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.notation_kk;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton14.label");
         result[50] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.notation_west;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_RadioButton15.label");
         result[51] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.pm;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label9.text");
         result[52] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.pm_auto;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pmAutoOpenCheckBox.label");
         result[53] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.arrow;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label10.text");
         result[54] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.arrow_accept;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"acceptArrowsCheckBox.label");
         result[55] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.arrow_color;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label11.text");
         result[56] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.past_games;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label13.text");
         result[57] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.others;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_Label14.text");
         result[58] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Manage my favorite list","お気に入りリストの管理へ");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_LinkButton4.label");
         result[59] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Receive e-mail when my kifu is commented","自分の棋譜にコメントが付いたらEメール通知を受け取る");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"receiveKifuCommentCheckBox.label");
         result[60] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ(InfoFetcher.gameTypeShortEn("vazoo"),InfoFetcher.gameTypeJp("vazoo"));
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_OptionDialog_VBox7.label");
         result[61] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            _OptionDialog_VBox7.setStyle("backgroundImage",param1);
         },"_OptionDialog_VBox7.backgroundImage");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get OkButton() : MyButton
      {
         return this._1577144242OkButton;
      }
      
      public function set OkButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._1577144242OkButton;
         if(_loc2_ !== param1)
         {
            this._1577144242OkButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"OkButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroup1() : RadioButtonGroup
      {
         return this._916609357RadioGroup1;
      }
      
      public function set RadioGroup1(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._916609357RadioGroup1;
         if(_loc2_ !== param1)
         {
            this._916609357RadioGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroup1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroup2() : RadioButtonGroup
      {
         return this._916609358RadioGroup2;
      }
      
      public function set RadioGroup2(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._916609358RadioGroup2;
         if(_loc2_ !== param1)
         {
            this._916609358RadioGroup2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroup2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroup3() : RadioButtonGroup
      {
         return this._916609359RadioGroup3;
      }
      
      public function set RadioGroup3(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._916609359RadioGroup3;
         if(_loc2_ !== param1)
         {
            this._916609359RadioGroup3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroup3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroup4() : RadioButtonGroup
      {
         return this._916609360RadioGroup4;
      }
      
      public function set RadioGroup4(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._916609360RadioGroup4;
         if(_loc2_ !== param1)
         {
            this._916609360RadioGroup4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroup4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroup5() : RadioButtonGroup
      {
         return this._916609361RadioGroup5;
      }
      
      public function set RadioGroup5(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._916609361RadioGroup5;
         if(_loc2_ !== param1)
         {
            this._916609361RadioGroup5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroup5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroup6() : RadioButtonGroup
      {
         return this._916609362RadioGroup6;
      }
      
      public function set RadioGroup6(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._916609362RadioGroup6;
         if(_loc2_ !== param1)
         {
            this._916609362RadioGroup6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroup6",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptArrowsCheckBox() : CheckBox
      {
         return this._1608057227acceptArrowsCheckBox;
      }
      
      public function set acceptArrowsCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1608057227acceptArrowsCheckBox;
         if(_loc2_ !== param1)
         {
            this._1608057227acceptArrowsCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptArrowsCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowCanvas() : Canvas
      {
         return this._1398598337arrowCanvas;
      }
      
      public function set arrowCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1398598337arrowCanvas;
         if(_loc2_ !== param1)
         {
            this._1398598337arrowCanvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowCanvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowColorPicker() : ColorPicker
      {
         return this._1487515128arrowColorPicker;
      }
      
      public function set arrowColorPicker(param1:ColorPicker) : void
      {
         var _loc2_:Object = this._1487515128arrowColorPicker;
         if(_loc2_ !== param1)
         {
            this._1487515128arrowColorPicker = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowColorPicker",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonSoundCheckBox() : CheckBox
      {
         return this._1361910720buttonSoundCheckBox;
      }
      
      public function set buttonSoundCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1361910720buttonSoundCheckBox;
         if(_loc2_ !== param1)
         {
            this._1361910720buttonSoundCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonSoundCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chatSound1CheckBox() : CheckBox
      {
         return this._1250550845chatSound1CheckBox;
      }
      
      public function set chatSound1CheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1250550845chatSound1CheckBox;
         if(_loc2_ !== param1)
         {
            this._1250550845chatSound1CheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatSound1CheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chatSound2CheckBox() : CheckBox
      {
         return this._556903618chatSound2CheckBox;
      }
      
      public function set chatSound2CheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._556903618chatSound2CheckBox;
         if(_loc2_ !== param1)
         {
            this._556903618chatSound2CheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatSound2CheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameEndSoundCheckBox() : CheckBox
      {
         return this._1087365321gameEndSoundCheckBox;
      }
      
      public function set gameEndSoundCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1087365321gameEndSoundCheckBox;
         if(_loc2_ !== param1)
         {
            this._1087365321gameEndSoundCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameEndSoundCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get games100() : RadioButton
      {
         return this._1768290416games100;
      }
      
      public function set games100(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1768290416games100;
         if(_loc2_ !== param1)
         {
            this._1768290416games100 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"games100",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get games200() : RadioButton
      {
         return this._1768289455games200;
      }
      
      public function set games200(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1768289455games200;
         if(_loc2_ !== param1)
         {
            this._1768289455games200 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"games200",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get games300() : RadioButton
      {
         return this._1768288494games300;
      }
      
      public function set games300(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1768288494games300;
         if(_loc2_ !== param1)
         {
            this._1768288494games300 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"games300",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get games50() : RadioButton
      {
         return this._195588836games50;
      }
      
      public function set games50(param1:RadioButton) : void
      {
         var _loc2_:Object = this._195588836games50;
         if(_loc2_ !== param1)
         {
            this._195588836games50 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"games50",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get games500() : RadioButton
      {
         return this._1768286572games500;
      }
      
      public function set games500(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1768286572games500;
         if(_loc2_ !== param1)
         {
            this._1768286572games500 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"games500",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grabPieceCheckBox() : CheckBox
      {
         return this._809272773grabPieceCheckBox;
      }
      
      public function set grabPieceCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._809272773grabPieceCheckBox;
         if(_loc2_ !== param1)
         {
            this._809272773grabPieceCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grabPieceCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get highlightMovableCheckBox() : CheckBox
      {
         return this._272893731highlightMovableCheckBox;
      }
      
      public function set highlightMovableCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._272893731highlightMovableCheckBox;
         if(_loc2_ !== param1)
         {
            this._272893731highlightMovableCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highlightMovableCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelEnglishCombo() : ComboBox
      {
         return this._618034850levelEnglishCombo;
      }
      
      public function set levelEnglishCombo(param1:ComboBox) : void
      {
         var _loc2_:Object = this._618034850levelEnglishCombo;
         if(_loc2_ !== param1)
         {
            this._618034850levelEnglishCombo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelEnglishCombo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelStudyCombo() : ComboBox
      {
         return this._672222185levelStudyCombo;
      }
      
      public function set levelStudyCombo(param1:ComboBox) : void
      {
         var _loc2_:Object = this._672222185levelStudyCombo;
         if(_loc2_ !== param1)
         {
            this._672222185levelStudyCombo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelStudyCombo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get notifyBlindCheckBox() : CheckBox
      {
         return this._1271531855notifyBlindCheckBox;
      }
      
      public function set notifyBlindCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1271531855notifyBlindCheckBox;
         if(_loc2_ !== param1)
         {
            this._1271531855notifyBlindCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notifyBlindCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optionTab() : TabNavigator
      {
         return this._1845423840optionTab;
      }
      
      public function set optionTab(param1:TabNavigator) : void
      {
         var _loc2_:Object = this._1845423840optionTab;
         if(_loc2_ !== param1)
         {
            this._1845423840optionTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pieceSetVBox() : VBox
      {
         return this._61448663pieceSetVBox;
      }
      
      public function set pieceSetVBox(param1:VBox) : void
      {
         var _loc2_:Object = this._61448663pieceSetVBox;
         if(_loc2_ !== param1)
         {
            this._61448663pieceSetVBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pieceSetVBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pieceSetVBox34() : VBox
      {
         return this._1077378634pieceSetVBox34;
      }
      
      public function set pieceSetVBox34(param1:VBox) : void
      {
         var _loc2_:Object = this._1077378634pieceSetVBox34;
         if(_loc2_ !== param1)
         {
            this._1077378634pieceSetVBox34 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pieceSetVBox34",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmAutoOpenCheckBox() : CheckBox
      {
         return this._1820139385pmAutoOpenCheckBox;
      }
      
      public function set pmAutoOpenCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1820139385pmAutoOpenCheckBox;
         if(_loc2_ !== param1)
         {
            this._1820139385pmAutoOpenCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmAutoOpenCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioNoto() : RadioButton
      {
         return this._970407273radioNoto;
      }
      
      public function set radioNoto(param1:RadioButton) : void
      {
         var _loc2_:Object = this._970407273radioNoto;
         if(_loc2_ !== param1)
         {
            this._970407273radioNoto = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioNoto",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioYamato() : RadioButton
      {
         return this._251713038radioYamato;
      }
      
      public function set radioYamato(param1:RadioButton) : void
      {
         var _loc2_:Object = this._251713038radioYamato;
         if(_loc2_ !== param1)
         {
            this._251713038radioYamato = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioYamato",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get receiveKifuCommentCheckBox() : CheckBox
      {
         return this._1164738350receiveKifuCommentCheckBox;
      }
      
      public function set receiveKifuCommentCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1164738350receiveKifuCommentCheckBox;
         if(_loc2_ !== param1)
         {
            this._1164738350receiveKifuCommentCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"receiveKifuCommentCheckBox",_loc2_,param1));
            }
         }
      }
   }
}
