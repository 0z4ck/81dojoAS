package
{
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class GameResultWindow extends TitleWindow implements IBindingClient
   {
      
      private static const WIN:String = "win";
      
      private static const LOSE:String = "lose";
      
      private static const DRAW:String = "draw";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _269142853mainLabel:Label;
      
      private var _240158335opponentAfter:Label;
      
      private var _1117727940opponentBefore:Label;
      
      private var _407393495opponentRank:Label;
      
      private var _369004270showEffect:Fade;
      
      private var _726860547youAfter:Label;
      
      private var _1030542210youBefore:Label;
      
      private var _992776981youRank:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _91078296_main:String;
      
      private var _913003202_you_before:String;
      
      private var _1692900291_you_after:String;
      
      private var _1665212830_opponent_before:String;
      
      private var _1192328857_opponent_after:String;
      
      private var _608297557_you_rank:String;
      
      private var _515225649_opponent_rank:String;
      
      private var _dy:int;
      
      private var _resultType:String;
      
      private var _afterTimer:Timer;
      
      private var _closeTimer:Timer;
      
      private var _fadeInTimer:Timer;
      
      private var _fadeOutTimer:Timer;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GameResultWindow()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "events":{"click":"___GameResultWindow_TitleWindow1_click"},
            "stylesFactory":function():void
            {
               this.fontSize = 12;
               this.horizontalAlign = "center";
               this.headerHeight = 0;
               this.borderThicknessTop = 4;
               this.borderThicknessRight = 4;
               this.borderThicknessBottom = 4;
               this.borderThicknessLeft = 4;
               this.fontFamily = "Meiryo UI";
            },
            "propertiesFactory":function():Object
            {
               return {
                  "width":335,
                  "height":105,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Label,
                     "id":"mainLabel",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 23;
                        this.fontWeight = "bold";
                        this.paddingTop = 0;
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"youBefore",
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"youAfter",
                                 "effects":["showEffect"],
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                    this.showEffect = "showEffect";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"youRank",
                                 "effects":["showEffect"],
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                    this.showEffect = "showEffect";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"opponentBefore",
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"opponentAfter",
                                 "effects":["showEffect"],
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                    this.showEffect = "showEffect";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"opponentRank",
                                 "effects":["showEffect"],
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                    this.showEffect = "showEffect";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"visible":false};
                                 }
                              })]};
                           }
                        })]};
                     }
                  })]
               };
            }
         });
         this._afterTimer = new Timer(500,1);
         this._closeTimer = new Timer(5000,1);
         this._fadeInTimer = new Timer(50,10);
         this._fadeOutTimer = new Timer(50,20);
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GameResultWindow_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_GameResultWindowWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GameResultWindow[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 335;
         this.height = 105;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.alpha = 0;
         this._GameResultWindow_Fade1_i();
         this.addEventListener("click",this.___GameResultWindow_TitleWindow1_click);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         GameResultWindow._watcherSetupUtil = param1;
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
            this.horizontalAlign = "center";
            this.headerHeight = 0;
            this.borderThicknessTop = 4;
            this.borderThicknessRight = 4;
            this.borderThicknessBottom = 4;
            this.borderThicknessLeft = 4;
            this.fontFamily = "Meiryo UI";
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function initWindow(param1:String, param2:String, param3:int) : void
      {
         this._you_before = param1 + ": ";
         this._opponent_before = param2 + ": ";
         this._you_rank = "";
         this._opponent_rank = "";
         if(param3 > 0)
         {
            this._resultType = WIN;
            this._main = LanguageSelector.EJ("YOU WIN!","勝利！");
            this.mainLabel.setStyle("color",16711680);
            this._dy = -2;
         }
         else if(param3 < 0)
         {
            this._resultType = LOSE;
            this._main = LanguageSelector.EJ("YOU LOST...","敗北…");
            this.mainLabel.setStyle("color",255);
            this._dy = 2;
         }
         else
         {
            this._resultType = DRAW;
            this._main = LanguageSelector.EJ("DRAW","千日手 引分");
            this.mainLabel.setStyle("color",34816);
            this._dy = 0;
         }
         this._fadeInTimer.addEventListener(TimerEvent.TIMER,this._fadeIn);
         this._fadeInTimer.start();
         this._fadeOutTimer.addEventListener(TimerEvent.TIMER,this._fadeOut);
         this._fadeOutTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._remove);
         this._closeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._close);
         this._closeTimer.start();
      }
      
      public function readRateChange(param1:int, param2:int, param3:int, param4:int) : void
      {
         this._you_before = this._you_before + param1;
         this._opponent_before = this._opponent_before + param3;
         switch(this._resultType)
         {
            case WIN:
               this._you_after = "-> " + param2 + " (+" + (param2 - param1) + ")";
               this._opponent_after = "-> " + param4 + " (-" + (param3 - param4) + ")";
               if(InfoFetcher.makeRankFromRating(param1) != InfoFetcher.makeRankFromRating(param2))
               {
                  this._you_rank = LanguageSelector.EJ("Rank Up!","昇級!");
                  this.youRank.setStyle("color",16711680);
               }
               if(InfoFetcher.makeRankFromRating(param3) != InfoFetcher.makeRankFromRating(param4))
               {
                  this._opponent_rank = LanguageSelector.EJ("Rank Down","降級");
                  this.opponentRank.setStyle("color",255);
               }
               break;
            case LOSE:
               this._you_after = "-> " + param2 + " (-" + (param1 - param2) + ")";
               this._opponent_after = "-> " + param4 + " (+" + (param4 - param3) + ")";
               if(InfoFetcher.makeRankFromRating(param1) != InfoFetcher.makeRankFromRating(param2))
               {
                  this._you_rank = LanguageSelector.EJ("Rank Down","降級");
                  this.youRank.setStyle("color",255);
               }
               if(InfoFetcher.makeRankFromRating(param3) != InfoFetcher.makeRankFromRating(param4))
               {
                  this._opponent_rank = LanguageSelector.EJ("Rank Up!","昇級!");
                  this.opponentRank.setStyle("color",16711680);
               }
               break;
            case DRAW:
               this._you_after = "-> " + param2;
               this._opponent_after = "-> " + param4;
         }
         this.youBefore.visible = true;
         this.opponentBefore.visible = true;
         this._afterTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._after);
         this._afterTimer.start();
      }
      
      private function _after(param1:TimerEvent) : void
      {
         this.youAfter.visible = true;
         this.youRank.visible = true;
         this.opponentAfter.visible = true;
         this.opponentRank.visible = true;
      }
      
      private function _close(param1:TimerEvent) : void
      {
         this._fadeOutTimer.start();
      }
      
      private function _fadeIn(param1:TimerEvent) : void
      {
         this.alpha = this.alpha + 0.1;
      }
      
      private function _fadeOut(param1:TimerEvent) : void
      {
         this.alpha = this.alpha - 0.05;
         this.y = this.y + this._dy;
      }
      
      private function _remove(param1:TimerEvent) : void
      {
         this._stopAndRemove();
      }
      
      private function _stopAndRemove() : void
      {
         this.youBefore.visible = false;
         this.opponentBefore.visible = false;
         this.youAfter.visible = false;
         this.youRank.visible = false;
         this.opponentAfter.visible = false;
         this.opponentRank.visible = false;
         this._fadeInTimer.stop();
         this._fadeOutTimer.stop();
         this._closeTimer.stop();
         this._afterTimer.stop();
         this._fadeInTimer.removeEventListener(TimerEvent.TIMER,this._fadeIn);
         this._fadeOutTimer.removeEventListener(TimerEvent.TIMER,this._fadeOut);
         this._fadeOutTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._remove);
         this._closeTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._close);
         this._afterTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._after);
         PopUpManager.removePopUp(this);
      }
      
      private function _GameResultWindow_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         _loc1_.duration = 1000;
         this.showEffect = _loc1_;
         BindingManager.executeBindings(this,"showEffect",this.showEffect);
         return _loc1_;
      }
      
      public function ___GameResultWindow_TitleWindow1_click(param1:MouseEvent) : void
      {
         this._stopAndRemove();
      }
      
      private function _GameResultWindow_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = _main;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mainLabel.text");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = _you_before;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"youBefore.text");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = _you_after;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"youAfter.text");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = _you_rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"youRank.text");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = _opponent_before;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"opponentBefore.text");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = _opponent_after;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"opponentAfter.text");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = _opponent_rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"opponentRank.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLabel() : Label
      {
         return this._269142853mainLabel;
      }
      
      public function set mainLabel(param1:Label) : void
      {
         var _loc2_:Object = this._269142853mainLabel;
         if(_loc2_ !== param1)
         {
            this._269142853mainLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get opponentAfter() : Label
      {
         return this._240158335opponentAfter;
      }
      
      public function set opponentAfter(param1:Label) : void
      {
         var _loc2_:Object = this._240158335opponentAfter;
         if(_loc2_ !== param1)
         {
            this._240158335opponentAfter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"opponentAfter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get opponentBefore() : Label
      {
         return this._1117727940opponentBefore;
      }
      
      public function set opponentBefore(param1:Label) : void
      {
         var _loc2_:Object = this._1117727940opponentBefore;
         if(_loc2_ !== param1)
         {
            this._1117727940opponentBefore = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"opponentBefore",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get opponentRank() : Label
      {
         return this._407393495opponentRank;
      }
      
      public function set opponentRank(param1:Label) : void
      {
         var _loc2_:Object = this._407393495opponentRank;
         if(_loc2_ !== param1)
         {
            this._407393495opponentRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"opponentRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showEffect() : Fade
      {
         return this._369004270showEffect;
      }
      
      public function set showEffect(param1:Fade) : void
      {
         var _loc2_:Object = this._369004270showEffect;
         if(_loc2_ !== param1)
         {
            this._369004270showEffect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showEffect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get youAfter() : Label
      {
         return this._726860547youAfter;
      }
      
      public function set youAfter(param1:Label) : void
      {
         var _loc2_:Object = this._726860547youAfter;
         if(_loc2_ !== param1)
         {
            this._726860547youAfter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"youAfter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get youBefore() : Label
      {
         return this._1030542210youBefore;
      }
      
      public function set youBefore(param1:Label) : void
      {
         var _loc2_:Object = this._1030542210youBefore;
         if(_loc2_ !== param1)
         {
            this._1030542210youBefore = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"youBefore",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get youRank() : Label
      {
         return this._992776981youRank;
      }
      
      public function set youRank(param1:Label) : void
      {
         var _loc2_:Object = this._992776981youRank;
         if(_loc2_ !== param1)
         {
            this._992776981youRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"youRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _main() : String
      {
         return this._91078296_main;
      }
      
      private function set _main(param1:String) : void
      {
         var _loc2_:Object = this._91078296_main;
         if(_loc2_ !== param1)
         {
            this._91078296_main = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_main",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _you_before() : String
      {
         return this._913003202_you_before;
      }
      
      private function set _you_before(param1:String) : void
      {
         var _loc2_:Object = this._913003202_you_before;
         if(_loc2_ !== param1)
         {
            this._913003202_you_before = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_you_before",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _you_after() : String
      {
         return this._1692900291_you_after;
      }
      
      private function set _you_after(param1:String) : void
      {
         var _loc2_:Object = this._1692900291_you_after;
         if(_loc2_ !== param1)
         {
            this._1692900291_you_after = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_you_after",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _opponent_before() : String
      {
         return this._1665212830_opponent_before;
      }
      
      private function set _opponent_before(param1:String) : void
      {
         var _loc2_:Object = this._1665212830_opponent_before;
         if(_loc2_ !== param1)
         {
            this._1665212830_opponent_before = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_opponent_before",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _opponent_after() : String
      {
         return this._1192328857_opponent_after;
      }
      
      private function set _opponent_after(param1:String) : void
      {
         var _loc2_:Object = this._1192328857_opponent_after;
         if(_loc2_ !== param1)
         {
            this._1192328857_opponent_after = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_opponent_after",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _you_rank() : String
      {
         return this._608297557_you_rank;
      }
      
      private function set _you_rank(param1:String) : void
      {
         var _loc2_:Object = this._608297557_you_rank;
         if(_loc2_ !== param1)
         {
            this._608297557_you_rank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_you_rank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _opponent_rank() : String
      {
         return this._515225649_opponent_rank;
      }
      
      private function set _opponent_rank(param1:String) : void
      {
         var _loc2_:Object = this._515225649_opponent_rank;
         if(_loc2_ !== param1)
         {
            this._515225649_opponent_rank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_opponent_rank",_loc2_,param1));
            }
         }
      }
   }
}
