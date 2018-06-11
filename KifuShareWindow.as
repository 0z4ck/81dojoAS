package
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.System;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class KifuShareWindow extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _916609357RadioGroup1:RadioButtonGroup;
      
      private var _1455570664diagramRadio:RadioButton;
      
      private var _2116091496facebookButton:MyButton;
      
      private var _1946783054kifuRadio:RadioButton;
      
      private var _1699882107twitterButton:MyButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var kifu:Object;
      
      public var diagram:Object;
      
      public var moves:int;
      
      public var turn:int;
      
      public var pieceType:int;
      
      private var _embed_mxml_images_icon_twitter_png_468270354:Class;
      
      private var _embed_mxml_images_icon_facebook_png_1134222798:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KifuShareWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "stylesFactory":function():void
            {
               this.paddingLeft = 8;
               this.paddingBottom = 8;
               this.paddingRight = 8;
               this.paddingTop = 8;
               this.horizontalAlign = "center";
               this.fontFamily = "Meiryo UI";
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"kifuRadio",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"RadioGroup1",
                              "value":0,
                              "selected":true
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RadioButton,
                        "id":"diagramRadio",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "groupName":"RadioGroup1",
                              "value":1
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                     this.paddingBottom = 10;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"twitterButton",
                        "events":{"click":"__twitterButton_click"},
                        "stylesFactory":function():void
                        {
                           this.icon = _embed_mxml_images_icon_twitter_png_468270354;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":44,
                              "toolTip":"Twitter"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"facebookButton",
                        "events":{"click":"__facebookButton_click"},
                        "stylesFactory":function():void
                        {
                           this.icon = _embed_mxml_images_icon_facebook_png_1134222798;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":44,
                              "toolTip":"Facebook"
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "events":{"click":"___KifuShareWindow_MyButton3_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"Close",
                        "soundType":2
                     };
                  }
               })]};
            }
         });
         this._embed_mxml_images_icon_twitter_png_468270354 = KifuShareWindow__embed_mxml_images_icon_twitter_png_468270354;
         this._embed_mxml_images_icon_facebook_png_1134222798 = KifuShareWindow__embed_mxml_images_icon_facebook_png_1134222798;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KifuShareWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_KifuShareWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KifuShareWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this._KifuShareWindow_RadioButtonGroup1_i();
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         KifuShareWindow._watcherSetupUtil = param1;
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
            this.paddingLeft = 8;
            this.paddingBottom = 8;
            this.paddingRight = 8;
            this.paddingTop = 8;
            this.horizontalAlign = "center";
            this.fontFamily = "Meiryo UI";
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _toURL() : String
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         if(this.RadioGroup1.selectedValue == 0)
         {
            _loc1_ = "http://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/kifus/" + this.kifu.id;
            _loc2_ = new Array();
            if(this.turn != 0)
            {
               _loc2_.push("turn=" + this.turn);
            }
            if(this.moves != 0)
            {
               _loc2_.push("moves=" + this.moves);
            }
            if(_loc2_.length > 0)
            {
               _loc1_ = _loc1_ + ("?" + _loc2_.join("&"));
            }
         }
         else
         {
            _loc1_ = "http://sfenreader.appspot.com/twiimg?sfen=" + this.diagram.sfen;
            _loc1_ = _loc1_ + ("&lm=" + this.diagram.lm);
            _loc1_ = _loc1_ + ("&sname=" + this.diagram.sname);
            _loc1_ = _loc1_ + ("&gname=" + this.diagram.gname);
            _loc1_ = _loc1_ + LanguageSelector.EJ("&title=from_81Dojo",encodeURI("&title=81道場・局面図"));
         }
         return _loc1_;
      }
      
      private function _copyURL() : void
      {
         System.setClipboard(this._toURL());
         Alert.show(LanguageSelector.EJ("URL is set to clipboard.","クリップボードにURLをコピーしました。"));
      }
      
      private function _sendTwitter() : void
      {
         var _loc1_:* = "";
         if(this.RadioGroup1.selectedValue == 0)
         {
            _loc1_ = _loc1_ + "81道場 対局譜: ";
            if(this.kifu.opening_jp != "")
            {
               _loc1_ = _loc1_ + (" 【" + this.kifu.opening_jp.replace(/☗/,"▲").replace(/☖/,"△") + "】 ");
            }
            _loc1_ = _loc1_ + ("▲" + this.kifu.black + " (" + InfoFetcher.country_names[this.kifu.blackCountryCode] + ", " + this.kifu.blackRank + ") 対 ");
            _loc1_ = _loc1_ + ("△" + this.kifu.white + " (" + InfoFetcher.country_names[this.kifu.whiteCountryCode] + ", " + this.kifu.whiteRank + ")");
            _loc1_ = _loc1_ + " #81dojo #shogi";
         }
         else
         {
            _loc1_ = _loc1_ + ("81道場 局面図: ▲" + this.diagram.sname + " 対 △" + this.diagram.gname);
            _loc1_ = _loc1_ + " #81dojo #shogi (powered by @shibacho2)";
         }
         _loc1_ = "http://twitter.com/share?text=" + encodeURIComponent(_loc1_) + "&url=" + encodeURIComponent(this._toURL());
         navigateToURL(new URLRequest(_loc1_),"_blank");
      }
      
      private function _sendTwitterEn() : void
      {
         var _loc1_:* = "http://twitter.com/share?text=";
         if(this.RadioGroup1.selectedValue == 0)
         {
            _loc1_ = _loc1_ + "81Dojo Kifu: [";
            _loc1_ = _loc1_ + (this.kifu.black + "(" + InfoFetcher.country_names3[this.kifu.blackCountryCode] + ", " + this.kifu.blackRank + ") vs ");
            _loc1_ = _loc1_ + (this.kifu.white + "(" + InfoFetcher.country_names3[this.kifu.whiteCountryCode] + ", " + this.kifu.whiteRank + ")]");
            if(this.kifu.opening != "")
            {
               _loc1_ = _loc1_ + (", " + this.kifu.opening);
            }
            _loc1_ = _loc1_ + ". %2381dojo";
         }
         else
         {
            _loc1_ = _loc1_ + ("81Dojo Diagram: [" + this.diagram.sname + " vs " + this.diagram.gname + "]");
            _loc1_ = _loc1_ + " %2381dojo (powered by @shibacho2)";
         }
         _loc1_ = _loc1_ + ("&url=" + encodeURIComponent(this._toURL()));
         navigateToURL(new URLRequest(_loc1_),"_blank");
      }
      
      private function _sendFacebook() : void
      {
         var _loc1_:String = "http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(this._toURL());
         navigateToURL(new URLRequest(_loc1_),"_blank");
      }
      
      public function toggleRadio(param1:Boolean, param2:Boolean) : void
      {
         this.kifuRadio.enabled = param1;
         this.diagramRadio.enabled = param2;
         if(!param1)
         {
            this.diagramRadio.selected = true;
         }
         else if(!param2)
         {
            this.kifuRadio.selected = true;
         }
      }
      
      private function _KifuShareWindow_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.initialized(this,"RadioGroup1");
         this.RadioGroup1 = _loc1_;
         BindingManager.executeBindings(this,"RadioGroup1",this.RadioGroup1);
         return _loc1_;
      }
      
      public function __twitterButton_click(param1:MouseEvent) : void
      {
         if(LanguageSelector.isJapanese())
         {
            this._sendTwitter();
         }
         else
         {
            this._sendTwitterEn();
         }
      }
      
      public function __facebookButton_click(param1:MouseEvent) : void
      {
         this._sendFacebook();
      }
      
      public function ___KifuShareWindow_MyButton3_click(param1:MouseEvent) : void
      {
         PopUpManager.removePopUp(this);
      }
      
      private function _KifuShareWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.lan.share;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Kifu (on 81Dojo Kifu Viewer)","棋譜(81Dojo棋譜ビューアー)");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"kifuRadio.label");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = LanguageSelector.EJ("Diagram (on cloud service by shibacho)","局面図(クラウド局面図ジェネレータ by shibacho)");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"diagramRadio.label");
         return result;
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
      public function get diagramRadio() : RadioButton
      {
         return this._1455570664diagramRadio;
      }
      
      public function set diagramRadio(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1455570664diagramRadio;
         if(_loc2_ !== param1)
         {
            this._1455570664diagramRadio = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diagramRadio",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get facebookButton() : MyButton
      {
         return this._2116091496facebookButton;
      }
      
      public function set facebookButton(param1:MyButton) : void
      {
         var _loc2_:Object = this._2116091496facebookButton;
         if(_loc2_ !== param1)
         {
            this._2116091496facebookButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"facebookButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuRadio() : RadioButton
      {
         return this._1946783054kifuRadio;
      }
      
      public function set kifuRadio(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1946783054kifuRadio;
         if(_loc2_ !== param1)
         {
            this._1946783054kifuRadio = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuRadio",_loc2_,param1));
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
   }
}
