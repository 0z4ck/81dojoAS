package
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.events.PropertyChangeEvent;
   
   public class OpeningPieChart extends HBox
   {
      
      private static const RIGHT_ANGLE:Number = Math.PI / 2;
      
      private static const style_names:Array = new Array("未確定(データ不足)","居飛車党","純粋居飛車党","振り飛車党","純粋振り飛車党","オールラウンダー","真正オールラウンダー","対抗形志向","対抗形マニア","力戦派","矢倉マニア","角換りマニア","横歩取りマニア","三間飛車党","三間飛車マニア","四間飛車党","四間飛車マニア","中飛車党","中飛車マニア");
      
      private static const style_names_en:Array = new Array("","Static Rook Player","Pure Static Rook Player","Swinging Rook Player","Pure Swinging Rook Player","All-rounder","Genuine All-rounder","Opposition Seeker","Opposition Enthusiast","Free-style Player","Yagura Enthusiast","Bishop Exchange Enthusiast","Side Pawn Picker Enthusiast","3rd-file Rook Player","3rd-file Rook Enthusiast","4th-file Rook Player","4th-file Rook Enthusiast","Central Rook Player","Central Rook Enthusiast");
       
      
      private var _1345670963listVBox:VBox;
      
      private var _1007476310pieChartCanvas:Canvas;
      
      private var _1699882107twitterButton:MyButton;
      
      private var _501248986typeLabel:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _n:int = 0;
      
      private var _nStatic:int = 0;
      
      private var _nRanging:int = 0;
      
      private var _nOpposition:int = 0;
      
      private var _ui:UIComponent;
      
      private var _pieSprite:Sprite;
      
      private var _percents:Object;
      
      private var _twitterList:String = "";
      
      public var isMyself:Boolean = false;
      
      private var _embed_mxml_images_icon_twitter_small_png_1531308514:Class;
      
      public function OpeningPieChart()
      {
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "stylesFactory":function():void
            {
               this.horizontalGap = 20;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                     this.verticalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":210,
                        "height":220,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"typeLabel",
                           "stylesFactory":function():void
                           {
                              this.paddingTop = -3;
                              this.paddingBottom = -2;
                              this.fontWeight = "bold";
                              this.fontSize = 14;
                              this.fontFamily = "Meiryo UI";
                              this.textDecoration = "underline";
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"pieChartCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":200,
                                 "height":200,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Spacer,
                           "propertiesFactory":function():Object
                           {
                              return {"height":-30};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalAlign = "right";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":MyButton,
                                    "id":"twitterButton",
                                    "events":{"click":"__twitterButton_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.icon = _embed_mxml_images_icon_twitter_small_png_1531308514;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":30,
                                          "visible":false,
                                          "toolTip":"称号をツイート"
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
                  "id":"listVBox",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "solid";
                     this.verticalGap = 0;
                     this.backgroundColor = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":180,
                        "height":220,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off"
                     };
                  }
               })]};
            }
         });
         this._ui = new UIComponent();
         this._pieSprite = new Sprite();
         this._percents = new Object();
         this._embed_mxml_images_icon_twitter_small_png_1531308514 = OpeningPieChart__embed_mxml_images_icon_twitter_small_png_1531308514;
         super();
         mx_internal::_document = this;
      }
      
      public static function drawPie(param1:Graphics, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Point = null;
         var _loc8_:int = Math.max(1,Math.floor(Math.abs(param5 - param6) / 0.4));
         var _loc12_:int = 0;
         while(_loc12_ <= _loc8_)
         {
            _loc13_ = param5 + (param6 - param5) * _loc12_ / _loc8_;
            _loc14_ = Math.cos(_loc13_) * param4 + param2;
            _loc15_ = Math.sin(_loc13_) * param4 + param3;
            if(_loc12_ == 0)
            {
               if(param7)
               {
                  param1.lineTo(_loc14_,_loc15_);
               }
               else
               {
                  param1.moveTo(_loc14_,_loc15_);
               }
            }
            else
            {
               _loc16_ = getControlPoint(_loc9_,_loc10_,_loc11_ + RIGHT_ANGLE,_loc14_,_loc15_,_loc13_ + RIGHT_ANGLE);
               param1.curveTo(_loc16_.x,_loc16_.y,_loc14_,_loc15_);
            }
            _loc9_ = _loc14_;
            _loc10_ = _loc15_;
            _loc11_ = _loc13_;
            _loc12_++;
         }
      }
      
      public static function getControlPoint(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Point
      {
         var _loc7_:Number = param4 - param1;
         var _loc8_:Number = param5 - param2;
         var _loc9_:Number = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
         var _loc10_:Number = Math.atan2(_loc8_,_loc7_);
         var _loc11_:Number = _loc9_ * Math.sin(param6 - _loc10_) / Math.sin(param6 - param3);
         var _loc12_:Number = param1 + _loc11_ * Math.cos(param3);
         var _loc13_:Number = param2 + _loc11_ * Math.sin(param3);
         return new Point(_loc12_,_loc13_);
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
            this.horizontalGap = 20;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function loadData(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc11_:int = 0;
         for each(_loc2_ in param1)
         {
            this._n = this._n + (_loc2_.black + _loc2_.white);
            if(["opposition_ranging","double_ranging"].indexOf(_loc2_.group) >= 0)
            {
               this._nRanging = this._nRanging + (_loc2_.black + _loc2_.white);
            }
            if(["yagura_and_bishop","side_and_wing","opposition_static"].indexOf(_loc2_.group) >= 0)
            {
               this._nStatic = this._nStatic + (_loc2_.black + _loc2_.white);
            }
            if(["opposition_ranging","opposition_static"].indexOf(_loc2_.group) >= 0)
            {
               this._nOpposition = this._nOpposition + (_loc2_.black + _loc2_.white);
            }
         }
         if(this._n == 0)
         {
            return;
         }
         this._ui.width = this.pieChartCanvas.width;
         this._ui.height = this.pieChartCanvas.height;
         this.pieChartCanvas.addChild(this._ui);
         var _loc3_:Number = -Math.PI / 2;
         var _loc4_:Number = _loc3_;
         var _loc5_:Number = _loc3_;
         var _loc6_:Number = _loc3_;
         var _loc7_:Number = this._ui.width / 2;
         var _loc8_:Number = this._ui.height / 2;
         var _loc9_:Number = this._ui.width * 0.45;
         var _loc10_:Number = _loc9_ * 0.4;
         this._pieSprite.graphics.lineStyle();
         this._pieSprite.graphics.beginFill(13421772,1);
         this._pieSprite.graphics.drawCircle(_loc7_ + 2,_loc8_ + 2,_loc9_ + 1);
         this._pieSprite.graphics.endFill();
         this._pieSprite.graphics.moveTo(_loc7_,_loc8_);
         for each(_loc2_ in param1)
         {
            this.listVBox.addChild(this._listItem(_loc2_));
            if(_loc2_.name == "unknown")
            {
               _loc5_ = _loc3_;
            }
            if(_loc2_.black + _loc2_.white > 0)
            {
               this._pieSprite.graphics.beginFill(_loc2_.color,1);
               drawPie(this._pieSprite.graphics,_loc7_,_loc8_,_loc9_,_loc3_,_loc3_ = Number(_loc3_ + 2 * Math.PI * (_loc2_.black + _loc2_.white) / this._n),true);
               this._pieSprite.graphics.lineTo(_loc7_,_loc8_);
               this._pieSprite.graphics.endFill();
               if(_loc2_.black > 0)
               {
                  this._pieSprite.graphics.beginFill(0,1);
                  drawPie(this._pieSprite.graphics,_loc7_,_loc8_,_loc10_,_loc4_,_loc4_ = Number(_loc4_ + 2 * Math.PI * _loc2_.black / this._n),true);
                  this._pieSprite.graphics.lineTo(_loc7_,_loc8_);
                  this._pieSprite.graphics.endFill();
               }
               if(_loc2_.white > 0)
               {
                  this._pieSprite.graphics.beginFill(16777215,1);
                  drawPie(this._pieSprite.graphics,_loc7_,_loc8_,_loc10_,_loc4_,_loc4_ = Number(_loc4_ + 2 * Math.PI * _loc2_.white / this._n),true);
                  this._pieSprite.graphics.lineTo(_loc7_,_loc8_);
                  this._pieSprite.graphics.endFill();
               }
            }
            if(_loc2_.name == "unknown")
            {
               _loc6_ = _loc4_;
            }
         }
         this._pieSprite.graphics.lineStyle(3,60928,0.7,true);
         this._pieSprite.graphics.lineTo(_loc7_,_loc8_ - _loc9_ * 1.08);
         this._pieSprite.graphics.moveTo(_loc7_ + _loc9_ * 1.08 * Math.cos(_loc5_),_loc8_ + _loc9_ * 1.08 * Math.sin(_loc5_));
         this._pieSprite.graphics.lineTo(_loc7_,_loc8_);
         this._pieSprite.graphics.lineTo(_loc7_ + _loc9_ * 1.08 * Math.cos(_loc6_),_loc8_ + _loc9_ * 1.08 * Math.sin(_loc6_));
         this._ui.addChild(this._pieSprite);
         if(this._n < 10)
         {
            _loc11_ = 0;
         }
         else if(this._nStatic >= 2 / 3 * this._n)
         {
            _loc11_ = 1;
            if(this._nRanging <= 0.05 * this._n)
            {
               _loc11_ = 2;
            }
            if(this._percents["yagura"] / 100 >= 0.8 * (this._nStatic / this._n - this._percents["opposition_static"] / 100))
            {
               _loc11_ = 10;
            }
            else if(this._percents["bishop_exchange"] / 100 >= 0.8 * (this._nStatic / this._n - this._percents["opposition_static"] / 100))
            {
               _loc11_ = 11;
            }
            else if(this._percents["side_pawn"] / 100 >= 0.8 * (this._nStatic / this._n - this._percents["opposition_static"] / 100))
            {
               _loc11_ = 12;
            }
         }
         else if(this._nRanging >= 2 / 3 * this._n)
         {
            _loc11_ = 3;
            if(this._percents["3rd_file_rook"] / 100 >= this._nRanging / this._n * 2 / 3 || this._nRanging / this._n - (this._percents["3rd_file_rook"] + this._percents["double_ranging"]) / 100 <= 0.25 * this._percents["3rd_file_rook"] / 100)
            {
               _loc11_ = 13;
            }
            else if(this._percents["4th_file_rook"] / 100 >= this._nRanging / this._n * 2 / 3 || this._nRanging / this._n - (this._percents["4th_file_rook"] + this._percents["double_ranging"]) / 100 <= 0.25 * this._percents["4th_file_rook"] / 100)
            {
               _loc11_ = 15;
            }
            else if(this._percents["central_rook"] / 100 >= this._nRanging / this._n * 2 / 3 || this._nRanging / this._n - (this._percents["central_rook"] + this._percents["double_ranging"]) / 100 <= 0.25 * this._percents["central_rook"] / 100)
            {
               _loc11_ = 17;
            }
            if(this._nStatic <= 0.05 * this._n)
            {
               switch(_loc11_)
               {
                  case 13:
                     _loc11_ = 14;
                     break;
                  case 15:
                     _loc11_ = 16;
                     break;
                  case 17:
                     _loc11_ = 18;
                     break;
                  default:
                     _loc11_ = 4;
               }
            }
         }
         else if(this._nOpposition >= 2 / 3 * this._n && this._percents["opposition_static"] / 100 >= 0.25 * this._nOpposition / this._n && this._percents["oppsition_static"] / 100 <= 0.75 * this._nOpposition / this._n)
         {
            _loc11_ = 7;
            if(this._nOpposition >= 0.9 * this._n)
            {
               _loc11_ = 8;
            }
         }
         else if(this._percents["unknown"] > 1 / 2 * 100)
         {
            _loc11_ = 9;
         }
         else if(this._percents["double_ranging"] >= 7 && this._percents["3rd_file_rook"] >= 7 && this._percents["central_rook"] >= 7 && this._percents["yagura"] >= 7 && this._percents["bishop_exchange"] >= 7 && this._percents["side_pawn"] >= 7)
         {
            _loc11_ = 6;
         }
         else if(this._nRanging <= 0.05 * this._n)
         {
            _loc11_ = 2;
         }
         else if(this._nStatic <= 0.05 * this._n)
         {
            _loc11_ = 4;
         }
         else if(this._percents["opposition_static"] / 100 >= 0.8 * this._nStatic / this._n)
         {
            _loc11_ = 7;
         }
         else
         {
            _loc11_ = 5;
         }
         this.typeLabel.text = LanguageSelector.EJ(style_names_en[_loc11_],style_names[_loc11_]);
         this.typeLabel.toolTip = LanguageSelector.EJ(style_names[_loc11_],style_names_en[_loc11_]);
         if(this.isMyself && _loc11_ != 0)
         {
            parentApplication.setPlayingStyle(_loc11_);
            this.twitterButton.visible = true;
         }
      }
      
      private function _listItem(param1:Object) : HBox
      {
         var _loc2_:HBox = new HBox();
         _loc2_.setStyle("horizontalGap",0);
         _loc2_.setStyle("paddingBottom",0);
         var _loc3_:Label = new Label();
         _loc3_.setStyle("leading",1);
         _loc3_.text = "■";
         _loc3_.setStyle("color",param1.color);
         _loc2_.addChild(_loc3_);
         _loc3_ = new Label();
         _loc3_.setStyle("leading",1);
         _loc3_.width = 90;
         _loc3_.text = InfoFetcher.openingNameJp(param1.name);
         _loc3_.toolTip = InfoFetcher.openingNameEn(param1.name);
         _loc2_.addChild(_loc3_);
         _loc3_ = new Label();
         _loc3_.setStyle("leading",1);
         _loc3_.width = 60;
         _loc3_.setStyle("textAlign","right");
         this._percents[param1.name] = (param1.black + param1.white) / this._n * 100;
         _loc3_.text = this._percents[param1.name].toFixed(1) + " %";
         _loc2_.height = 20;
         _loc2_.addChild(_loc3_);
         if(this._percents[param1.name] >= 5)
         {
            this._twitterList = this._twitterList + (" " + InfoFetcher.openingNameJp(param1.name).replace(/\s/,"") + "=" + _loc3_.text.replace(/\s/,""));
         }
         return _loc2_;
      }
      
      private function _sendTwitter() : void
      {
         var _loc1_:* = "81道場で【" + this.typeLabel.text + "】に認定されたよ\n(過去" + this._n + "局中:" + this._twitterList + ") https://81dojo.com #shogi";
         _loc1_ = "http://twitter.com/share?text=" + encodeURIComponent(_loc1_);
         navigateToURL(new URLRequest(_loc1_),"_blank");
      }
      
      public function __twitterButton_click(param1:MouseEvent) : void
      {
         this._sendTwitter();
      }
      
      [Bindable(event="propertyChange")]
      public function get listVBox() : VBox
      {
         return this._1345670963listVBox;
      }
      
      public function set listVBox(param1:VBox) : void
      {
         var _loc2_:Object = this._1345670963listVBox;
         if(_loc2_ !== param1)
         {
            this._1345670963listVBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listVBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pieChartCanvas() : Canvas
      {
         return this._1007476310pieChartCanvas;
      }
      
      public function set pieChartCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1007476310pieChartCanvas;
         if(_loc2_ !== param1)
         {
            this._1007476310pieChartCanvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pieChartCanvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get twitterButton() : MyButton
      {
         return this._1699882107twitterButton;
      }
      
      public function set twitterButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._1699882107twitterButton;
         if(_loc2_ !== param1)
         {
            this._1699882107twitterButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"twitterButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLabel() : Label
      {
         return this._501248986typeLabel;
      }
      
      public function set typeLabel(param1:Label) : void
      {
         var _loc2_:Object = this._501248986typeLabel;
         if(_loc2_ !== param1)
         {
            this._501248986typeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLabel",_loc2_,param1));
            }
         }
      }
   }
}
