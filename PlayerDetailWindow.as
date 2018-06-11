package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.AdvancedDataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Spacer;
   import mx.controls.Text;
   import mx.controls.TextArea;
   import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
   import mx.controls.advancedDataGridClasses.AdvancedDataGridColumnGroup;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class PlayerDetailWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn1:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn10:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn11:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn12:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn15:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn16:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn17:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn19:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn2:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn20:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn21:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn23:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn24:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn25:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn3:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn4:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn6:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn7:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumn8:AdvancedDataGridColumn;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumnGroup1:AdvancedDataGridColumnGroup;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumnGroup2:AdvancedDataGridColumnGroup;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumnGroup3:AdvancedDataGridColumnGroup;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumnGroup4:AdvancedDataGridColumnGroup;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumnGroup5:AdvancedDataGridColumnGroup;
      
      public var _PlayerDetailWindow_AdvancedDataGridColumnGroup6:AdvancedDataGridColumnGroup;
      
      public var _PlayerDetailWindow_Image1:Image;
      
      public var _PlayerDetailWindow_Image2:Image;
      
      public var _PlayerDetailWindow_Label1:Label;
      
      public var _PlayerDetailWindow_Label10:Label;
      
      public var _PlayerDetailWindow_Label11:Label;
      
      public var _PlayerDetailWindow_Label12:Label;
      
      public var _PlayerDetailWindow_Label13:Label;
      
      public var _PlayerDetailWindow_Label14:Label;
      
      public var _PlayerDetailWindow_Label2:Label;
      
      public var _PlayerDetailWindow_Label3:Label;
      
      public var _PlayerDetailWindow_Label4:Label;
      
      public var _PlayerDetailWindow_Label5:Label;
      
      public var _PlayerDetailWindow_Label7:Label;
      
      public var _PlayerDetailWindow_Label8:Label;
      
      public var _PlayerDetailWindow_Label9:Label;
      
      public var _PlayerDetailWindow_MyButton1:MyButton;
      
      public var _PlayerDetailWindow_MyButton2:MyButton;
      
      public var _PlayerDetailWindow_MyButton3:MyButton;
      
      public var _PlayerDetailWindow_MyButton4:MyButton;
      
      public var _PlayerDetailWindow_MyButton5:MyButton;
      
      public var _PlayerDetailWindow_Text2:Text;
      
      public var _PlayerDetailWindow_TextArea1:TextArea;
      
      public var _PlayerDetailWindow_VBox1:VBox;
      
      public var _PlayerDetailWindow_VBox3:VBox;
      
      private var _1387791343avatarCanvas:Canvas;
      
      private var _1570094177buttonApplyMenjo:MyButton;
      
      private var _660059106buttonJSA_en:MyButton;
      
      private var _660059248buttonJSA_ja:MyButton;
      
      private var _753827312buttonSystemPlayerInfo:MyButton;
      
      private var _385599455dataGrid1:AdvancedDataGrid;
      
      private var _385599454dataGrid2:AdvancedDataGrid;
      
      private var _1474492515googleMap:Image;
      
      private var _317586158label_JSA_level:Text;
      
      private var _1721924416nameBox:HBox;
      
      private var _500704838nonratedHBox:HBox;
      
      private var _1189269718openingPieChart:OpeningPieChart;
      
      private var _125578224openingRadarChart:OpeningRadarChart;
      
      private var _1982459891ratePlot2D:Plot2D;
      
      private var _1678483270resultViewStack:ViewStack;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _103149417login:String;
      
      private var _775651618connection:String = "offline";
      
      private var _978911657_country:String = "";
      
      private var _622410027_country_code:String = "";
      
      private var _2123794300_updated:String = "";
      
      private var _1553941608_joined:String = "";
      
      private var _964243856_mileage_total:int;
      
      private var _297015051_mileage_period:int;
      
      private var _1770368700_rating:int = 0;
      
      private var _2112052574_maxRating:int = 0;
      
      private var _91227403_rank:String = "";
      
      private var _1405959847avatar:String = null;
      
      private var _2135939837titleName:String = "none";
      
      private var _1138806925titleSubName:String = "無し";
      
      private var _91384054_wins:int = 0;
      
      private var _1611502640_losses:int = 0;
      
      private var _166479929_percentage:Number = 0;
      
      private var _1816480925_streak:int = 0;
      
      private var _947641414_streak_best:int = 0;
      
      private var _94881_pr:String = "";
      
      private var _cityName:String;
      
      private var _cityLatitude:Number;
      
      private var _cityLongitude:Number;
      
      private var _exp34:int = 0;
      
      private var _wins34:int = 0;
      
      private var _losses34:int = 0;
      
      private var _exp10:int = 0;
      
      private var _wins10:int = 0;
      
      private var _losses10:int = 0;
      
      private var _exp55:int = 0;
      
      private var _wins55:int = 0;
      
      private var _losses55:int = 0;
      
      private var _exp56:int = 0;
      
      private var _wins56:int = 0;
      
      private var _losses56:int = 0;
      
      private var _expKY:int = 0;
      
      private var _winsKY:int = 0;
      
      private var _lossesKY:int = 0;
      
      private const IMAGE_DIRECTORY:String = "https://81dojo.com/dojo/images/";
      
      private var _countryMapInfo:String;
      
      private var _ratings:Array;
      
      private var _openingData:Object;
      
      private var _nJSA:int = 0;
      
      private const opening_names:Array = ["double_wing","side_pawn","yagura","bishop_exchange","opposition_static","opposing_rook","3rd_file_rook","4th_file_rook","central_rook","double_ranging","unknown","*"];
      
      private const group_names:Array = ["side_and_wing","side_and_wing","yagura_and_bishop","yagura_and_bishop","opposition_static","opposition_ranging","opposition_ranging","opposition_ranging","opposition_ranging","double_ranging","unknown","*"];
      
      private var _embed_mxml_images_icon_web_png_84488084:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PlayerDetailWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "events":{
               "close":"___PlayerDetailWindow_TitleWindow1_close",
               "creationComplete":"___PlayerDetailWindow_TitleWindow1_creationComplete"
            },
            "stylesFactory":function():void
            {
               this.fontSize = 12;
               this.fontFamily = "Meiryo UI";
               this.paddingLeft = 5;
               this.paddingBottom = 5;
               this.paddingRight = 5;
               this.paddingTop = 5;
            },
            "propertiesFactory":function():Object
            {
               return {
                  "creationPolicy":"all",
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":VBox,
                           "id":"_PlayerDetailWindow_VBox1",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":150,
                                 "height":190,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"avatarCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":133,
                                          "height":133,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PlayerDetailWindow_Image1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":128,
                                                   "height":128,
                                                   "x":5,
                                                   "y":5
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PlayerDetailWindow_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 15;
                                       this.fontWeight = "bold";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_PlayerDetailWindow_Image2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":27,
                                                "height":17
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_PlayerDetailWindow_Label2"
                                       })]};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.verticalGap = 5;
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
                                       "id":"_PlayerDetailWindow_Label3"
                                    }),new UIComponentDescriptor({
                                       "type":Spacer,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":50};
                                       }
                                    })]};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PlayerDetailWindow_Label4"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_PlayerDetailWindow_Label5"
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"PR:"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Spacer,
                                 "propertiesFactory":function():Object
                                 {
                                    return {"height":-15};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":TextArea,
                                 "id":"_PlayerDetailWindow_TextArea1",
                                 "stylesFactory":function():void
                                 {
                                    this.fontSize = 10;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":220,
                                       "height":95,
                                       "editable":false
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"googleMap",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":280,
                                 "height":190
                              };
                           }
                        })]};
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "id":"_PlayerDetailWindow_VBox3",
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "solid";
                        this.paddingTop = 5;
                        this.paddingBottom = 5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":665,
                           "childDescriptors":[new UIComponentDescriptor({
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
                                       "id":"_PlayerDetailWindow_MyButton1",
                                       "events":{"click":"___PlayerDetailWindow_MyButton1_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"_PlayerDetailWindow_MyButton2",
                                       "events":{"click":"___PlayerDetailWindow_MyButton2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"_PlayerDetailWindow_MyButton3",
                                       "events":{"click":"___PlayerDetailWindow_MyButton3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"_PlayerDetailWindow_MyButton4",
                                       "events":{"click":"___PlayerDetailWindow_MyButton4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"_PlayerDetailWindow_MyButton5",
                                       "events":{"click":"___PlayerDetailWindow_MyButton5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"buttonApplyMenjo",
                                       "events":{"click":"__buttonApplyMenjo_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "enabled":false,
                                             "visible":false,
                                             "includeInLayout":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":MyButton,
                                       "id":"buttonSystemPlayerInfo",
                                       "events":{"click":"__buttonSystemPlayerInfo_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.icon = _embed_mxml_images_icon_web_png_84488084;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "visible":false,
                                             "includeInLayout":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 13;
                                 this.verticalAlign = "middle";
                                 this.paddingLeft = 15;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 10;
                                       this.paddingTop = 10;
                                       this.paddingBottom = 10;
                                       this.verticalGap = 2;
                                       this.borderStyle = "solid";
                                       this.backgroundColor = 15794137;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":125,
                                          "height":205,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label8"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label9"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label10"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label11"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label12"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label13"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PlayerDetailWindow_Label14"
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"resultViewStack",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":510,
                                          "height":220,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":OpeningPieChart,
                                             "id":"openingPieChart",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":490,
                                                   "height":220,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":OpeningRadarChart,
                                             "id":"openingRadarChart",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":400,
                                                   "height":220,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":510,
                                                   "height":220,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Plot2D,
                                                      "id":"ratePlot2D",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":510,
                                                            "height":220
                                                         };
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
                                                   "width":490,
                                                   "height":220,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":AdvancedDataGrid,
                                                      "id":"dataGrid1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 10;
                                                         this.textAlign = "right";
                                                         this.paddingLeft = 0;
                                                         this.paddingTop = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":480,
                                                            "height":215,
                                                            "sortableColumns":false,
                                                            "sortExpertMode":true,
                                                            "rowHeight":19,
                                                            "groupedColumns":[_PlayerDetailWindow_AdvancedDataGridColumn1_i(),_PlayerDetailWindow_AdvancedDataGridColumnGroup1_i(),_PlayerDetailWindow_AdvancedDataGridColumnGroup2_i(),_PlayerDetailWindow_AdvancedDataGridColumnGroup3_i()]
                                                         };
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
                                                   "width":490,
                                                   "height":220,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":AdvancedDataGrid,
                                                      "id":"dataGrid2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 10;
                                                         this.textAlign = "right";
                                                         this.paddingLeft = 0;
                                                         this.paddingTop = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":480,
                                                            "height":215,
                                                            "sortableColumns":false,
                                                            "sortExpertMode":true,
                                                            "rowHeight":19,
                                                            "verticalScrollPolicy":"off",
                                                            "groupedColumns":[_PlayerDetailWindow_AdvancedDataGridColumn14_c(),_PlayerDetailWindow_AdvancedDataGridColumnGroup4_i(),_PlayerDetailWindow_AdvancedDataGridColumnGroup5_i(),_PlayerDetailWindow_AdvancedDataGridColumnGroup6_i()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "id":"nonratedHBox",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 0;
                                                this.paddingLeft = 10;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalAlign = "middle";
                                                this.horizontalAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":490,
                                                   "height":220,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Text,
                                                      "id":"label_JSA_level",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"maxWidth":485};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":MyButton,
                                                      "id":"buttonJSA_en",
                                                      "events":{"click":"__buttonJSA_en_click"}
                                                   }),new UIComponentDescriptor({
                                                      "type":MyButton,
                                                      "id":"buttonJSA_ja",
                                                      "events":{"click":"__buttonJSA_ja_click"}
                                                   }),new UIComponentDescriptor({
                                                      "type":Text,
                                                      "id":"_PlayerDetailWindow_Text2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 15;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"maxWidth":485};
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
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
         this._ratings = new Array();
         this._openingData = new Object();
         this._embed_mxml_images_icon_web_png_84488084 = PlayerDetailWindow__embed_mxml_images_icon_web_png_84488084;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._PlayerDetailWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_PlayerDetailWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PlayerDetailWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.showCloseButton = true;
         this.creationPolicy = "all";
         this.addEventListener("close",this.___PlayerDetailWindow_TitleWindow1_close);
         this.addEventListener("creationComplete",this.___PlayerDetailWindow_TitleWindow1_creationComplete);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PlayerDetailWindow._watcherSetupUtil = param1;
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
      
      public function loadPlayerDetail(param1:Object) : void
      {
         this._country_code = String(InfoFetcher.country_codes[parseInt(param1["country-id"]) - 1] + 1000).substring(1);
         this._country = LanguageSelector.EJ(InfoFetcher.country_names_en[InfoFetcher.country_codes[parseInt(param1["country-id"]) - 1]],InfoFetcher.country_names[InfoFetcher.country_codes[parseInt(param1["country-id"]) - 1]]);
         this._countryMapInfo = InfoFetcher.country_maps[parseInt(param1["country-id"]) - 1];
         this._joined = param1["created-at"];
         this._joined = this._joined.substr(0,10);
         this._updated = param1["updated-at"];
         this._updated = this._updated.substr(0,10);
         this._mileage_total = param1["mileage-total"];
         this._mileage_period = param1["mileage-period"];
         this._pr = param1.pr;
         if(!this._pr)
         {
            this._pr = "";
         }
         this._pr = this._pr.replace(/\r\n/g,"\n");
         if(this._pr.match(/^\[object/))
         {
            this._pr = "";
         }
         this._rating = parseInt(param1.rate);
         this._maxRating = param1["max-rate"];
         this._rank = InfoFetcher.makeRankFromRating(this._rating);
         this._wins = param1.wins;
         this._losses = param1.losses;
         if(this._wins + this._losses < 10)
         {
            this._rank = "-";
         }
         this._exp34 = param1.exp34;
         this._wins34 = param1.wins34;
         this._losses34 = param1.losses34;
         this._exp55 = param1.exp55;
         this._wins55 = param1.wins55;
         this._losses55 = param1.losses55;
         this._exp56 = param1.exp56;
         this._wins56 = param1.wins56;
         this._losses56 = param1.losses56;
         this._exp10 = param1.exp10;
         this._wins10 = param1.wins10;
         this._losses10 = param1.losses10;
         this._expKY = param1["exp-ky"];
         this._winsKY = param1["wins-ky"];
         this._lossesKY = param1["losses-ky"];
         this._streak = param1.streak;
         this._streak_best = param1["streak-best"];
         this._percentage = this._wins + this._losses == 0?Number(0):Number(this._wins / (this._wins + this._losses) * 100);
         this._cityName = param1["city-name"];
         this._cityLatitude = param1["city-lat"];
         this._cityLongitude = param1["city-lon"];
         this._drawMap();
         this._addNonrateBox(LanguageSelector.EJ("10-sec","10秒将棋"),this._exp10,this._wins10,this._losses10);
         this._addNonrateBox(LanguageSelector.EJ("5656","ゴロゴロ将棋"),this._exp56,this._wins56,this._losses56);
         this._addNonrateBox(LanguageSelector.EJ("3x4","3x4将棋"),this._exp34,this._wins34,this._losses34);
         this._addNonrateBox(LanguageSelector.EJ("Mini","5五将棋"),this._exp55,this._wins55,this._losses55);
         this._addNonrateBox(LanguageSelector.EJ("Kyoto","京都将棋"),this._expKY,this._winsKY,this._lossesKY);
      }
      
      private function _close() : void
      {
         MyButton.playCancel();
         dispatchEvent(new Event("close_window"));
         PopUpManager.removePopUp(this);
      }
      
      private function _drawMap() : void
      {
         var _loc2_:Array = null;
         var _loc1_:* = "http://maps.googleapis.com/maps/api/staticmap?size=280x190&sensor=false&type=terrain";
         if(this._countryMapInfo == null)
         {
            _loc1_ = _loc1_ + "&center=0,0&zoom=1";
         }
         else if(this._countryMapInfo && this._countryMapInfo == "*")
         {
            _loc1_ = _loc1_ + "&center=0,0&zoom=1";
         }
         else
         {
            _loc2_ = this._countryMapInfo.split(",");
            _loc1_ = _loc1_ + ("&center=" + _loc2_[0] + "," + _loc2_[1] + "&zoom=" + _loc2_[2]);
            _loc1_ = _loc1_ + ("&markers=color:0x00ff00|size:mid|label:C|" + _loc2_[3] + "," + _loc2_[4]);
         }
         if(this._cityLatitude && this._cityLongitude)
         {
            if(this._cityLatitude >= -90 && this._cityLatitude <= 90 && this._cityLongitude >= -180 && this._cityLongitude <= 180)
            {
               _loc1_ = _loc1_ + ("&markers=color:0xffff00|label:I|" + this._cityLatitude + "," + this._cityLongitude);
            }
         }
         this.googleMap.source = _loc1_;
      }
      
      public function showHistory(param1:Array) : void
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:int = param1.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_++;
            this._ratings.push(new Point(_loc2_,Math.abs(param1[_loc3_].change)));
            _loc3_--;
         }
         this.ratePlot2D.loadData(this._ratings);
         this._nJSA = this._JSACerificateLevel(param1);
         this.buttonApplyMenjo.enabled = true;
         if(this._nJSA == 0)
         {
            this.label_JSA_level.text = LanguageSelector.EJ("You cannot apply for any Dan Diploma / Kyu Certificate at the moment.","現在の成績で申請可能な段級位はありません。");
            this.buttonJSA_en.enabled = false;
            this.buttonJSA_ja.enabled = false;
         }
         else
         {
            _loc3_ = this._nJSA > 0?int(2 + (6 - this._nJSA)):int(7 - this._nJSA);
            this.label_JSA_level.text = LanguageSelector.EJ("You can apply for up to " + InfoFetcher.rank_names_en[_loc3_] + ".\nPlease click the button below to jump to JSA\'s Diploma/Certificate registration site.","現在の成績で" + InfoFetcher.rank_names[_loc3_] + "まで申請可能です。\n下のボタンより日本将棋連盟の免状・認定状申請用ページにお進みください。");
         }
         _loc3_ = 0;
         while(_loc3_ < this.opening_names.length)
         {
            this._openingData[this.opening_names[_loc3_]] = this._openingDatum(this.group_names[_loc3_]);
            _loc3_++;
         }
         for each(_loc6_ in param1)
         {
            if(_loc4_ = _loc6_.opening.match(/^opposition_(black|white)(\d)$/))
            {
               if(_loc6_.sente && _loc4_[1] == "white" || !_loc6_.sente && _loc4_[1] == "black")
               {
                  _loc5_ = "opposition_static";
               }
               else
               {
                  switch(parseInt(_loc4_[2]))
                  {
                     case 2:
                        _loc5_ = "opposing_rook";
                        break;
                     case 3:
                        _loc5_ = "3rd_file_rook";
                        break;
                     case 4:
                        _loc5_ = "4th_file_rook";
                        break;
                     case 5:
                        _loc5_ = "central_rook";
                  }
               }
            }
            else
            {
               _loc5_ = _loc6_.opening;
            }
            if(parseInt(_loc6_.change) > 0)
            {
               if(_loc6_.sente)
               {
                  this._openingData[_loc5_].black_wins = this._openingData[_loc5_].black_wins + 1;
               }
               else
               {
                  this._openingData[_loc5_].white_wins = this._openingData[_loc5_].white_wins + 1;
               }
            }
            else if(_loc6_.sente)
            {
               this._openingData[_loc5_].black_losses = this._openingData[_loc5_].black_losses + 1;
            }
            else
            {
               this._openingData[_loc5_].white_losses = this._openingData[_loc5_].white_losses + 1;
            }
         }
         this.openingPieChart.loadData(this._pieDataArray());
         this.openingRadarChart.loadData(this._radarDataArray());
         this.dataGrid1.dataProvider = this._gridDataArray(["yagura","bishop_exchange","double_wing","side_pawn","opposition_static","blank","total"]);
         this.dataGrid2.dataProvider = this._gridDataArray(["central_rook","4th_file_rook","3rd_file_rook","opposing_rook","double_ranging","blank","total","blank","unknown"]);
      }
      
      private function _addNonrateBox(param1:String, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:VBox = new VBox();
         _loc5_.width = 95;
         _loc5_.height = 220;
         _loc5_.setStyle("verticalGap",0);
         var _loc6_:Label = new Label();
         _loc6_.setStyle("fontWeight","bold");
         _loc6_.setStyle("fontSize",13);
         _loc6_.text = param1;
         _loc5_.addChild(_loc6_);
         _loc6_ = new Label();
         _loc6_.text = InfoFetcher.makeRank34FromExp(param2);
         _loc6_.setStyle("color",InfoFetcher.makeColorFromRating34(param2));
         _loc5_.addChild(_loc6_);
         var _loc7_:Image = new Image();
         _loc7_.width = 80;
         _loc7_.height = 80;
         _loc7_.source = this.IMAGE_DIRECTORY + "avatars34/" + _loc6_.text + ".jpg";
         _loc7_.x = 5;
         _loc5_.addChild(_loc7_);
         _loc6_ = new Label();
         _loc6_.text = "EXP: " + param2;
         _loc5_.addChild(_loc6_);
         _loc6_ = new Label();
         _loc6_.text = LanguageSelector.EJ("Win: ","勝数: ") + param3;
         _loc5_.addChild(_loc6_);
         _loc6_ = new Label();
         _loc6_.text = LanguageSelector.EJ("Loss: ","負数: ") + param4;
         _loc5_.addChild(_loc6_);
         var _loc8_:Number = param3 + param4 == 0?Number(0):Number(param3 / (param3 + param4) * 100);
         _loc6_ = new Label();
         _loc6_.text = LanguageSelector.EJ("(" + _loc8_.toFixed(1) + "% win)","(勝率: " + _loc8_.toFixed(1) + "%)");
         _loc5_.addChild(_loc6_);
         this.nonratedHBox.addChild(_loc5_);
      }
      
      private function _pieDataArray() : Array
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in InfoFetcher.pie_chart_order)
         {
            _loc3_ = new Object();
            _loc3_.name = _loc2_;
            _loc3_.black = this._openingData[_loc2_].black_wins + this._openingData[_loc2_].black_losses;
            _loc3_.white = this._openingData[_loc2_].white_wins + this._openingData[_loc2_].white_losses;
            _loc3_.color = InfoFetcher.infoOpeningColor(_loc2_);
            _loc3_.group = this._openingData[_loc2_].group;
            _loc1_.push(_loc3_);
         }
         return _loc1_;
      }
      
      private function _radarDataArray() : Array
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Array = new Array();
         for each(_loc2_ in InfoFetcher.radar_chart_order)
         {
            _loc1_.push(this._openingDatum(_loc2_));
         }
         _loc3_ = 0;
         while(_loc3_ < this.opening_names.length)
         {
            if(this.group_names[_loc3_] != "*")
            {
               _loc4_ = InfoFetcher.radar_chart_order.indexOf(this.group_names[_loc3_]);
               _loc1_[_loc4_].black_wins = _loc1_[_loc4_].black_wins + this._openingData[this.opening_names[_loc3_]].black_wins;
               _loc1_[_loc4_].black_losses = _loc1_[_loc4_].black_losses + this._openingData[this.opening_names[_loc3_]].black_losses;
               _loc1_[_loc4_].white_wins = _loc1_[_loc4_].white_wins + this._openingData[this.opening_names[_loc3_]].white_wins;
               _loc1_[_loc4_].white_losses = _loc1_[_loc4_].white_losses + this._openingData[this.opening_names[_loc3_]].white_losses;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function _gridDataArray(param1:Array) : Array
      {
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc2_:Array = new Array();
         var _loc3_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         for each(_loc8_ in param1)
         {
            if(_loc8_ == "blank")
            {
               _loc9_ = new Object();
               _loc9_.tip = "";
            }
            else if(_loc8_ == "total")
            {
               _loc9_ = new Object();
               _loc9_.name = LanguageSelector.lan.total;
               _loc9_.tip = "";
               _loc9_.black_wins = _loc4_;
               _loc9_.black_losses = _loc5_;
               _loc9_.black_total = _loc9_.black_wins + _loc9_.black_losses;
               _loc9_.black_percent = _loc9_.black_total == 0?0:(_loc9_.black_wins / _loc9_.black_total * 100).toFixed(0);
               _loc9_.white_wins = _loc6_;
               _loc9_.white_losses = _loc7_;
               _loc9_.white_total = _loc9_.white_wins + _loc9_.white_losses;
               _loc9_.white_percent = _loc9_.white_total == 0?0:(_loc9_.white_wins / _loc9_.white_total * 100).toFixed(0);
               _loc9_.wins = _loc9_.black_wins + _loc9_.white_wins;
               _loc9_.losses = _loc9_.black_losses + _loc9_.white_losses;
               _loc9_.total = _loc9_.wins + _loc9_.losses;
               _loc9_.percent = _loc9_.total == 0?0:(_loc9_.wins / _loc9_.total * 100).toFixed(0);
               _loc3_ = false;
            }
            else
            {
               _loc9_ = new Object();
               _loc9_.name = InfoFetcher.openingNameJp(_loc8_);
               _loc9_.tip = InfoFetcher.openingNameEn(_loc8_);
               _loc9_.black_wins = this._openingData[_loc8_].black_wins;
               if(_loc3_)
               {
                  _loc4_ = _loc4_ + _loc9_.black_wins;
               }
               _loc9_.black_losses = this._openingData[_loc8_].black_losses;
               if(_loc3_)
               {
                  _loc5_ = _loc5_ + _loc9_.black_losses;
               }
               _loc9_.black_total = _loc9_.black_wins + _loc9_.black_losses;
               _loc9_.black_percent = _loc9_.black_total == 0?0:(_loc9_.black_wins / _loc9_.black_total * 100).toFixed(0);
               _loc9_.white_wins = this._openingData[_loc8_].white_wins;
               if(_loc3_)
               {
                  _loc6_ = _loc6_ + _loc9_.white_wins;
               }
               _loc9_.white_losses = this._openingData[_loc8_].white_losses;
               if(_loc3_)
               {
                  _loc7_ = _loc7_ + _loc9_.white_losses;
               }
               _loc9_.white_total = _loc9_.white_wins + _loc9_.white_losses;
               _loc9_.white_percent = _loc9_.white_total == 0?0:(_loc9_.white_wins / _loc9_.white_total * 100).toFixed(0);
               _loc9_.wins = _loc9_.black_wins + _loc9_.white_wins;
               _loc9_.losses = _loc9_.black_losses + _loc9_.white_losses;
               _loc9_.total = _loc9_.wins + _loc9_.losses;
               _loc9_.percent = _loc9_.total == 0?0:(_loc9_.wins / _loc9_.total * 100).toFixed(0);
            }
            _loc2_.push(_loc9_);
         }
         return _loc2_;
      }
      
      private function _openingDatum(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         _loc2_.black_wins = 0;
         _loc2_.black_losses = 0;
         _loc2_.white_wins = 0;
         _loc2_.white_losses = 0;
         _loc2_.group = param1;
         return _loc2_;
      }
      
      private function _JSACerificateLevel(param1:Array) : int
      {
         var _loc3_:int = 0;
         if(param1.length < 15)
         {
            return 0;
         }
         var _loc2_:int = 2;
         while(_loc2_ <= 12)
         {
            _loc3_ = 0;
            while(_loc3_ <= 10)
            {
               if(Math.abs(param1[_loc3_].change) < InfoFetcher.rank_thresholds[_loc2_] + 1)
               {
                  break;
               }
               if(_loc3_ == 10)
               {
                  if(_loc2_ <= 7)
                  {
                     return 8 - _loc2_;
                  }
                  return 7 - _loc2_;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return 0;
      }
      
      private function _navigateMenjo(param1:String) : void
      {
         var _loc2_:String = this.login;
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.url = "https://www.shogimenjo.jp/shogi_api/top/";
         _loc3_.method = URLRequestMethod.POST;
         var _loc4_:URLVariables = new URLVariables();
         _loc4_.site = "81";
         _loc4_.hn = _loc2_;
         _loc4_.maxdk = this._nJSA;
         _loc4_.dd = CsaShogiClient.generateMD5Hex("81" + _loc2_ + this._nJSA + Config.JSA_MENJO_PASS);
         _loc4_.lang = param1;
         _loc3_.data = _loc4_;
         navigateToURL(_loc3_,"_blank");
      }
      
      private function _navigateSystemPlayerInfo() : void
      {
         navigateToURL(new URLRequest("https://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/players/show/" + this.login));
      }
      
      public function ___PlayerDetailWindow_TitleWindow1_close(param1:CloseEvent) : void
      {
         this._close();
      }
      
      public function ___PlayerDetailWindow_TitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this._initWindow();
      }
      
      public function ___PlayerDetailWindow_MyButton1_click(param1:MouseEvent) : void
      {
         this.resultViewStack.selectedIndex = 0;
      }
      
      public function ___PlayerDetailWindow_MyButton2_click(param1:MouseEvent) : void
      {
         this.resultViewStack.selectedIndex = 1;
      }
      
      public function ___PlayerDetailWindow_MyButton3_click(param1:MouseEvent) : void
      {
         if(this.resultViewStack.selectedIndex == 2)
         {
            this.ratePlot2D.redrawData();
         }
         else
         {
            this.resultViewStack.selectedIndex = 2;
         }
      }
      
      public function ___PlayerDetailWindow_MyButton4_click(param1:MouseEvent) : void
      {
         this.resultViewStack.selectedIndex = this.resultViewStack.selectedIndex == 3?4:3;
      }
      
      public function ___PlayerDetailWindow_MyButton5_click(param1:MouseEvent) : void
      {
         this.resultViewStack.selectedIndex = 5;
      }
      
      public function __buttonApplyMenjo_click(param1:MouseEvent) : void
      {
         this.resultViewStack.selectedIndex = 6;
      }
      
      public function __buttonSystemPlayerInfo_click(param1:MouseEvent) : void
      {
         this._navigateSystemPlayerInfo();
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn1_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 76;
         _loc1_.dataField = "name";
         _loc1_.showDataTips = true;
         _loc1_.dataTipField = "tip";
         _loc1_.setStyle("textAlign","center");
         this._PlayerDetailWindow_AdvancedDataGridColumn1 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn1",this._PlayerDetailWindow_AdvancedDataGridColumn1);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumnGroup1_i() : AdvancedDataGridColumnGroup
      {
         var _loc1_:AdvancedDataGridColumnGroup = new AdvancedDataGridColumnGroup();
         _loc1_.children = [this._PlayerDetailWindow_AdvancedDataGridColumn2_i(),this._PlayerDetailWindow_AdvancedDataGridColumn3_i(),this._PlayerDetailWindow_AdvancedDataGridColumn4_i(),this._PlayerDetailWindow_AdvancedDataGridColumn5_c()];
         this._PlayerDetailWindow_AdvancedDataGridColumnGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumnGroup1",this._PlayerDetailWindow_AdvancedDataGridColumnGroup1);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn2_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "total";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn2 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn2",this._PlayerDetailWindow_AdvancedDataGridColumn2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn3_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "wins";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn3 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn3",this._PlayerDetailWindow_AdvancedDataGridColumn3);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn4_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "losses";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn4 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn4",this._PlayerDetailWindow_AdvancedDataGridColumn4);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn5_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.headerText = "%";
         _loc1_.dataField = "percent";
         _loc1_.setStyle("paddingLeft",2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumnGroup2_i() : AdvancedDataGridColumnGroup
      {
         var _loc1_:AdvancedDataGridColumnGroup = new AdvancedDataGridColumnGroup();
         _loc1_.children = [this._PlayerDetailWindow_AdvancedDataGridColumn6_i(),this._PlayerDetailWindow_AdvancedDataGridColumn7_i(),this._PlayerDetailWindow_AdvancedDataGridColumn8_i(),this._PlayerDetailWindow_AdvancedDataGridColumn9_c()];
         this._PlayerDetailWindow_AdvancedDataGridColumnGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumnGroup2",this._PlayerDetailWindow_AdvancedDataGridColumnGroup2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn6_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "black_total";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn6 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn6",this._PlayerDetailWindow_AdvancedDataGridColumn6);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn7_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "black_wins";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn7 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn7",this._PlayerDetailWindow_AdvancedDataGridColumn7);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn8_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "black_losses";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn8 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn8",this._PlayerDetailWindow_AdvancedDataGridColumn8);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn9_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.headerText = "%";
         _loc1_.dataField = "black_percent";
         _loc1_.setStyle("paddingLeft",2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumnGroup3_i() : AdvancedDataGridColumnGroup
      {
         var _loc1_:AdvancedDataGridColumnGroup = new AdvancedDataGridColumnGroup();
         _loc1_.children = [this._PlayerDetailWindow_AdvancedDataGridColumn10_i(),this._PlayerDetailWindow_AdvancedDataGridColumn11_i(),this._PlayerDetailWindow_AdvancedDataGridColumn12_i(),this._PlayerDetailWindow_AdvancedDataGridColumn13_c()];
         this._PlayerDetailWindow_AdvancedDataGridColumnGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumnGroup3",this._PlayerDetailWindow_AdvancedDataGridColumnGroup3);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn10_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "white_total";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn10 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn10",this._PlayerDetailWindow_AdvancedDataGridColumn10);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn11_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "white_wins";
         this._PlayerDetailWindow_AdvancedDataGridColumn11 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn11",this._PlayerDetailWindow_AdvancedDataGridColumn11);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn12_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "white_losses";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn12 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn12",this._PlayerDetailWindow_AdvancedDataGridColumn12);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn13_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.headerText = "%";
         _loc1_.dataField = "white_percent";
         _loc1_.setStyle("paddingLeft",2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn14_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.headerText = "Openings";
         _loc1_.width = 76;
         _loc1_.dataField = "name";
         _loc1_.showDataTips = true;
         _loc1_.dataTipField = "tip";
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumnGroup4_i() : AdvancedDataGridColumnGroup
      {
         var _loc1_:AdvancedDataGridColumnGroup = new AdvancedDataGridColumnGroup();
         _loc1_.children = [this._PlayerDetailWindow_AdvancedDataGridColumn15_i(),this._PlayerDetailWindow_AdvancedDataGridColumn16_i(),this._PlayerDetailWindow_AdvancedDataGridColumn17_i(),this._PlayerDetailWindow_AdvancedDataGridColumn18_c()];
         this._PlayerDetailWindow_AdvancedDataGridColumnGroup4 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumnGroup4",this._PlayerDetailWindow_AdvancedDataGridColumnGroup4);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn15_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "total";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn15 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn15",this._PlayerDetailWindow_AdvancedDataGridColumn15);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn16_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "wins";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn16 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn16",this._PlayerDetailWindow_AdvancedDataGridColumn16);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn17_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "losses";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn17 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn17",this._PlayerDetailWindow_AdvancedDataGridColumn17);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn18_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.headerText = "%";
         _loc1_.dataField = "percent";
         _loc1_.setStyle("paddingLeft",2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumnGroup5_i() : AdvancedDataGridColumnGroup
      {
         var _loc1_:AdvancedDataGridColumnGroup = new AdvancedDataGridColumnGroup();
         _loc1_.children = [this._PlayerDetailWindow_AdvancedDataGridColumn19_i(),this._PlayerDetailWindow_AdvancedDataGridColumn20_i(),this._PlayerDetailWindow_AdvancedDataGridColumn21_i(),this._PlayerDetailWindow_AdvancedDataGridColumn22_c()];
         this._PlayerDetailWindow_AdvancedDataGridColumnGroup5 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumnGroup5",this._PlayerDetailWindow_AdvancedDataGridColumnGroup5);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn19_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "black_total";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn19 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn19",this._PlayerDetailWindow_AdvancedDataGridColumn19);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn20_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "black_wins";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn20 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn20",this._PlayerDetailWindow_AdvancedDataGridColumn20);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn21_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "black_losses";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn21 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn21",this._PlayerDetailWindow_AdvancedDataGridColumn21);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn22_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.headerText = "%";
         _loc1_.dataField = "black_percent";
         _loc1_.setStyle("paddingLeft",2);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumnGroup6_i() : AdvancedDataGridColumnGroup
      {
         var _loc1_:AdvancedDataGridColumnGroup = new AdvancedDataGridColumnGroup();
         _loc1_.children = [this._PlayerDetailWindow_AdvancedDataGridColumn23_i(),this._PlayerDetailWindow_AdvancedDataGridColumn24_i(),this._PlayerDetailWindow_AdvancedDataGridColumn25_i(),this._PlayerDetailWindow_AdvancedDataGridColumn26_c()];
         this._PlayerDetailWindow_AdvancedDataGridColumnGroup6 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumnGroup6",this._PlayerDetailWindow_AdvancedDataGridColumnGroup6);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn23_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "white_total";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn23 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn23",this._PlayerDetailWindow_AdvancedDataGridColumn23);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn24_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "white_wins";
         this._PlayerDetailWindow_AdvancedDataGridColumn24 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn24",this._PlayerDetailWindow_AdvancedDataGridColumn24);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn25_i() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.dataField = "white_losses";
         _loc1_.setStyle("paddingLeft",2);
         this._PlayerDetailWindow_AdvancedDataGridColumn25 = _loc1_;
         BindingManager.executeBindings(this,"_PlayerDetailWindow_AdvancedDataGridColumn25",this._PlayerDetailWindow_AdvancedDataGridColumn25);
         return _loc1_;
      }
      
      private function _PlayerDetailWindow_AdvancedDataGridColumn26_c() : AdvancedDataGridColumn
      {
         var _loc1_:AdvancedDataGridColumn = new AdvancedDataGridColumn();
         _loc1_.width = 32;
         _loc1_.headerText = "%";
         _loc1_.dataField = "white_percent";
         _loc1_.setStyle("paddingLeft",2);
         return _loc1_;
      }
      
      public function __buttonJSA_en_click(param1:MouseEvent) : void
      {
         this._navigateMenjo("en");
      }
      
      public function __buttonJSA_ja_click(param1:MouseEvent) : void
      {
         this._navigateMenjo("ja");
      }
      
      private function _PlayerDetailWindow_bindingsSetup() : Array
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
            var _loc1_:* = LanguageSelector.EJ("Player Detail","プレーヤー詳細データ");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         result[2] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            _PlayerDetailWindow_VBox1.setStyle("backgroundImage",param1);
         },"_PlayerDetailWindow_VBox1.backgroundImage");
         result[3] = new Binding(this,null,null,"_PlayerDetailWindow_Image1.source","avatar");
         result[4] = new Binding(this,null,null,"_PlayerDetailWindow_Label1.text","login");
         result[5] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "flags_s/" + _country_code + ".gif";
         },null,"_PlayerDetailWindow_Image2.source");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = _country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label2.text");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.status + ": " + connection;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label3.text");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Total mileage","通算獲得マイレージ") + ": " + _mileage_total + " D" + LanguageSelector.EJ("-Miles","マイル");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label4.text");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Annual mileage","年間獲得マイレージ") + ": " + _mileage_period + " D" + LanguageSelector.EJ("-Miles","マイル");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label5.text");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = _pr;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_TextArea1.text");
         result[11] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            _PlayerDetailWindow_VBox3.setStyle("backgroundImage",param1);
         },"_PlayerDetailWindow_VBox3.backgroundImage");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.tendency;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_MyButton1.label");
         result[13] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.percentage;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_MyButton2.label");
         result[14] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.rate_history;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_MyButton3.label");
         result[15] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.data_table;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_MyButton4.label");
         result[16] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.nonrated;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_MyButton5.label");
         result[17] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.apply_dan;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"buttonApplyMenjo.label");
         result[18] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.web_system;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"buttonSystemPlayerInfo.toolTip");
         result[19] = new Binding(this,function():String
         {
            var _loc1_:* = _rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label7.text");
         result[20] = new Binding(this,function():String
         {
            var _loc1_:* = "R: " + _rating;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label8.text");
         result[21] = new Binding(this,function():String
         {
            var _loc1_:* = "  (" + LanguageSelector.EJ("max","最高") + ": " + _maxRating + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label9.text");
         result[22] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Win","勝数") + ": " + _wins;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label10.text");
         result[23] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Loss","負数") + ": " + _losses;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label11.text");
         result[24] = new Binding(this,function():String
         {
            var _loc1_:* = "  (" + LanguageSelector.EJ("Total","合計") + ": " + (_wins + _losses) + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label12.text");
         result[25] = new Binding(this,function():String
         {
            var _loc1_:* = "  (" + LanguageSelector.EJ("","勝率: ") + "" + _percentage.toFixed(1) + "%" + LanguageSelector.EJ(" win","") + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label13.text");
         result[26] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Streak","最多連勝") + ": " + _streak_best;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Label14.text");
         result[27] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Openings","戦型");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn1.headerText");
         result[28] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.total;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumnGroup1.headerText");
         result[29] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("T","全");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn2.headerText");
         result[30] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("W","勝");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn3.headerText");
         result[31] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("L","敗");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn4.headerText");
         result[32] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.black + "(▲)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumnGroup2.headerText");
         result[33] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("T","全");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn6.headerText");
         result[34] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("W","勝");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn7.headerText");
         result[35] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("L","敗");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn8.headerText");
         result[36] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.white + "(△)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumnGroup3.headerText");
         result[37] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("T","全");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn10.headerText");
         result[38] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("W","勝");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn11.headerText");
         result[39] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("L","敗");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn12.headerText");
         result[40] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.total;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumnGroup4.headerText");
         result[41] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("T","全");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn15.headerText");
         result[42] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("W","勝");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn16.headerText");
         result[43] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("L","敗");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn17.headerText");
         result[44] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.black + "(▲)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumnGroup5.headerText");
         result[45] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("T","全");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn19.headerText");
         result[46] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("W","勝");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn20.headerText");
         result[47] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("L","敗");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn21.headerText");
         result[48] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.white + "(△)";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumnGroup6.headerText");
         result[49] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("T","全");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn23.headerText");
         result[50] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("W","勝");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn24.headerText");
         result[51] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("L","敗");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_AdvancedDataGridColumn25.headerText");
         result[52] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("For players residing overseas","海外居住者の方");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"buttonJSA_en.label");
         result[53] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("For players residing in Japan","日本国内の方");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"buttonJSA_ja.label");
         result[54] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("You can apply for a rank after playing 15 rated games, when the last 10 games are in or above that specific rank　(at least 5-kyu) without touching the \'downgrade-deciding match\' zone.","レーティング対局15局以上消化後、最新10局のレーティングが全て一定段級位以上かつ残留戦エリアにかかっていない場合に、その段級位(5級以上のみ)の免状・認定状を取得できます。");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PlayerDetailWindow_Text2.text");
         return result;
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
      public function get buttonApplyMenjo() : MyButton
      {
         return this._1570094177buttonApplyMenjo;
      }
      
      public function set buttonApplyMenjo(param1:MyButton) : void
      {
         var _loc2_:Object = this._1570094177buttonApplyMenjo;
         if(_loc2_ !== param1)
         {
            this._1570094177buttonApplyMenjo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonApplyMenjo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonJSA_en() : MyButton
      {
         return this._660059106buttonJSA_en;
      }
      
      public function set buttonJSA_en(param1:MyButton) : void
      {
         var _loc2_:Object = this._660059106buttonJSA_en;
         if(_loc2_ !== param1)
         {
            this._660059106buttonJSA_en = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonJSA_en",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonJSA_ja() : MyButton
      {
         return this._660059248buttonJSA_ja;
      }
      
      public function set buttonJSA_ja(param1:MyButton) : void
      {
         var _loc2_:Object = this._660059248buttonJSA_ja;
         if(_loc2_ !== param1)
         {
            this._660059248buttonJSA_ja = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonJSA_ja",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonSystemPlayerInfo() : MyButton
      {
         return this._753827312buttonSystemPlayerInfo;
      }
      
      public function set buttonSystemPlayerInfo(param1:MyButton) : void
      {
         var _loc2_:Object = this._753827312buttonSystemPlayerInfo;
         if(_loc2_ !== param1)
         {
            this._753827312buttonSystemPlayerInfo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonSystemPlayerInfo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGrid1() : AdvancedDataGrid
      {
         return this._385599455dataGrid1;
      }
      
      public function set dataGrid1(param1:AdvancedDataGrid) : void
      {
         var _loc2_:Object = this._385599455dataGrid1;
         if(_loc2_ !== param1)
         {
            this._385599455dataGrid1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGrid1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGrid2() : AdvancedDataGrid
      {
         return this._385599454dataGrid2;
      }
      
      public function set dataGrid2(param1:AdvancedDataGrid) : void
      {
         var _loc2_:Object = this._385599454dataGrid2;
         if(_loc2_ !== param1)
         {
            this._385599454dataGrid2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGrid2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleMap() : Image
      {
         return this._1474492515googleMap;
      }
      
      public function set googleMap(param1:Image) : void
      {
         var _loc2_:Object = this._1474492515googleMap;
         if(_loc2_ !== param1)
         {
            this._1474492515googleMap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleMap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label_JSA_level() : Text
      {
         return this._317586158label_JSA_level;
      }
      
      public function set label_JSA_level(param1:Text) : void
      {
         var _loc2_:Object = this._317586158label_JSA_level;
         if(_loc2_ !== param1)
         {
            this._317586158label_JSA_level = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label_JSA_level",_loc2_,param1));
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
      public function get nonratedHBox() : HBox
      {
         return this._500704838nonratedHBox;
      }
      
      public function set nonratedHBox(param1:HBox) : void
      {
         var _loc2_:Object = this._500704838nonratedHBox;
         if(_loc2_ !== param1)
         {
            this._500704838nonratedHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nonratedHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openingPieChart() : OpeningPieChart
      {
         return this._1189269718openingPieChart;
      }
      
      public function set openingPieChart(param1:OpeningPieChart) : void
      {
         var _loc2_:Object = this._1189269718openingPieChart;
         if(_loc2_ !== param1)
         {
            this._1189269718openingPieChart = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openingPieChart",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openingRadarChart() : OpeningRadarChart
      {
         return this._125578224openingRadarChart;
      }
      
      public function set openingRadarChart(param1:OpeningRadarChart) : void
      {
         var _loc2_:Object = this._125578224openingRadarChart;
         if(_loc2_ !== param1)
         {
            this._125578224openingRadarChart = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openingRadarChart",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ratePlot2D() : Plot2D
      {
         return this._1982459891ratePlot2D;
      }
      
      public function set ratePlot2D(param1:Plot2D) : void
      {
         var _loc2_:Object = this._1982459891ratePlot2D;
         if(_loc2_ !== param1)
         {
            this._1982459891ratePlot2D = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ratePlot2D",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resultViewStack() : ViewStack
      {
         return this._1678483270resultViewStack;
      }
      
      public function set resultViewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1678483270resultViewStack;
         if(_loc2_ !== param1)
         {
            this._1678483270resultViewStack = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resultViewStack",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get login() : String
      {
         return this._103149417login;
      }
      
      public function set login(param1:String) : void
      {
         var _loc2_:Object = this._103149417login;
         if(_loc2_ !== param1)
         {
            this._103149417login = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"login",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get connection() : String
      {
         return this._775651618connection;
      }
      
      public function set connection(param1:String) : void
      {
         var _loc2_:Object = this._775651618connection;
         if(_loc2_ !== param1)
         {
            this._775651618connection = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"connection",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _country() : String
      {
         return this._978911657_country;
      }
      
      private function set _country(param1:String) : void
      {
         var _loc2_:Object = this._978911657_country;
         if(_loc2_ !== param1)
         {
            this._978911657_country = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_country",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _country_code() : String
      {
         return this._622410027_country_code;
      }
      
      private function set _country_code(param1:String) : void
      {
         var _loc2_:Object = this._622410027_country_code;
         if(_loc2_ !== param1)
         {
            this._622410027_country_code = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_country_code",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _updated() : String
      {
         return this._2123794300_updated;
      }
      
      private function set _updated(param1:String) : void
      {
         var _loc2_:Object = this._2123794300_updated;
         if(_loc2_ !== param1)
         {
            this._2123794300_updated = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_updated",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _joined() : String
      {
         return this._1553941608_joined;
      }
      
      private function set _joined(param1:String) : void
      {
         var _loc2_:Object = this._1553941608_joined;
         if(_loc2_ !== param1)
         {
            this._1553941608_joined = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_joined",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _mileage_total() : int
      {
         return this._964243856_mileage_total;
      }
      
      private function set _mileage_total(param1:int) : void
      {
         var _loc2_:Object = this._964243856_mileage_total;
         if(_loc2_ !== param1)
         {
            this._964243856_mileage_total = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_mileage_total",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _mileage_period() : int
      {
         return this._297015051_mileage_period;
      }
      
      private function set _mileage_period(param1:int) : void
      {
         var _loc2_:Object = this._297015051_mileage_period;
         if(_loc2_ !== param1)
         {
            this._297015051_mileage_period = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_mileage_period",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _rating() : int
      {
         return this._1770368700_rating;
      }
      
      private function set _rating(param1:int) : void
      {
         var _loc2_:Object = this._1770368700_rating;
         if(_loc2_ !== param1)
         {
            this._1770368700_rating = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_rating",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _maxRating() : int
      {
         return this._2112052574_maxRating;
      }
      
      private function set _maxRating(param1:int) : void
      {
         var _loc2_:Object = this._2112052574_maxRating;
         if(_loc2_ !== param1)
         {
            this._2112052574_maxRating = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_maxRating",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _rank() : String
      {
         return this._91227403_rank;
      }
      
      private function set _rank(param1:String) : void
      {
         var _loc2_:Object = this._91227403_rank;
         if(_loc2_ !== param1)
         {
            this._91227403_rank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_rank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avatar() : String
      {
         return this._1405959847avatar;
      }
      
      public function set avatar(param1:String) : void
      {
         var _loc2_:Object = this._1405959847avatar;
         if(_loc2_ !== param1)
         {
            this._1405959847avatar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avatar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleName() : String
      {
         return this._2135939837titleName;
      }
      
      public function set titleName(param1:String) : void
      {
         var _loc2_:Object = this._2135939837titleName;
         if(_loc2_ !== param1)
         {
            this._2135939837titleName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleSubName() : String
      {
         return this._1138806925titleSubName;
      }
      
      public function set titleSubName(param1:String) : void
      {
         var _loc2_:Object = this._1138806925titleSubName;
         if(_loc2_ !== param1)
         {
            this._1138806925titleSubName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleSubName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _wins() : int
      {
         return this._91384054_wins;
      }
      
      private function set _wins(param1:int) : void
      {
         var _loc2_:Object = this._91384054_wins;
         if(_loc2_ !== param1)
         {
            this._91384054_wins = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_wins",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _losses() : int
      {
         return this._1611502640_losses;
      }
      
      private function set _losses(param1:int) : void
      {
         var _loc2_:Object = this._1611502640_losses;
         if(_loc2_ !== param1)
         {
            this._1611502640_losses = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_losses",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _percentage() : Number
      {
         return this._166479929_percentage;
      }
      
      private function set _percentage(param1:Number) : void
      {
         var _loc2_:Object = this._166479929_percentage;
         if(_loc2_ !== param1)
         {
            this._166479929_percentage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_percentage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _streak() : int
      {
         return this._1816480925_streak;
      }
      
      private function set _streak(param1:int) : void
      {
         var _loc2_:Object = this._1816480925_streak;
         if(_loc2_ !== param1)
         {
            this._1816480925_streak = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_streak",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _streak_best() : int
      {
         return this._947641414_streak_best;
      }
      
      private function set _streak_best(param1:int) : void
      {
         var _loc2_:Object = this._947641414_streak_best;
         if(_loc2_ !== param1)
         {
            this._947641414_streak_best = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_streak_best",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _pr() : String
      {
         return this._94881_pr;
      }
      
      private function set _pr(param1:String) : void
      {
         var _loc2_:Object = this._94881_pr;
         if(_loc2_ !== param1)
         {
            this._94881_pr = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_pr",_loc2_,param1));
            }
         }
      }
   }
}
