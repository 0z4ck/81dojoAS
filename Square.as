package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import mx.containers.Canvas;
   import mx.core.UIComponent;
   import spark.components.Image;
   
   public final class Square extends Canvas
   {
      
      public static var sizeX:Number = 43;
      
      public static var sizeY:Number = 48;
      
      public static const STAY:String = "stay";
       
      
      private var _coord_x:int;
      
      private var _coord_y:int;
      
      private var _img:Image;
      
      private var _stayTimer:Timer;
      
      private var _dead:Boolean = false;
      
      private var _movableMarker:UIComponent;
      
      private var _studyLabelUIC:UIComponent;
      
      private var _studyLabel:TextField;
      
      private var _studyLabelHoldTimer:Timer;
      
      private var _studyLabelFadeTimer:Timer;
      
      public function Square(param1:int, param2:int)
      {
         this._stayTimer = new Timer(150,1);
         this._movableMarker = new UIComponent();
         this._studyLabelUIC = new UIComponent();
         this._studyLabelHoldTimer = new Timer(1500,1);
         this._studyLabelFadeTimer = new Timer(100,10);
         super();
         this.width = sizeX;
         this.height = sizeY;
         this.setStyle("backgroundAlpha",0.25);
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.setStyle("borderStyle","outSet");
         this.setStyle("borderThickness",0);
         this.setStyle("borderColor",14483456);
         this._img = new Image();
         this._img.width = sizeX;
         this._img.height = sizeY;
         this._img.smooth = true;
         this.addChild(this._img);
         var _loc3_:Sprite = new Sprite();
         _loc3_.graphics.beginFill(65280,0.3);
         _loc3_.graphics.drawCircle(sizeX / 2,sizeY / 2,sizeX / 4);
         _loc3_.graphics.endFill();
         this._movableMarker.addChild(_loc3_);
         this._coord_x = param1;
         this._coord_y = param2;
         this._stayTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleStay);
         this._studyLabelHoldTimer.addEventListener(TimerEvent.TIMER,this._handleTimerHold);
         this._studyLabelFadeTimer.addEventListener(TimerEvent.TIMER,this._handleTimerFade);
         this._studyLabelFadeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleTimerFadeComplete);
      }
      
      public function hidePiece() : void
      {
         this._img.visible = false;
      }
      
      public function showPiece() : void
      {
         this._img.visible = true;
      }
      
      public function showMovable() : void
      {
         if(!contains(this._movableMarker))
         {
            addChild(this._movableMarker);
         }
      }
      
      public function hideMovable() : void
      {
         if(contains(this._movableMarker))
         {
            removeChild(this._movableMarker);
         }
      }
      
      public function showLabel(param1:String) : void
      {
         this._studyLabelHoldTimer.reset();
         this._studyLabelFadeTimer.reset();
         if(this._studyLabel == null)
         {
            this._studyLabel = new TextField();
            this._studyLabel.x = 0;
            this._studyLabel.y = -3;
            this._studyLabel.autoSize = "left";
            this._studyLabel.selectable = false;
            this._studyLabel.defaultTextFormat = new TextFormat("Meiryo UI",10,43520,true);
            this._studyLabelUIC.addChild(this._studyLabel);
         }
         this.hideLabel();
         this._studyLabel.text = param1;
         this._studyLabel.alpha = 1;
         addChild(this._studyLabelUIC);
         this._studyLabelHoldTimer.start();
      }
      
      public function hideLabel() : void
      {
         if(contains(this._studyLabelUIC))
         {
            removeChild(this._studyLabelUIC);
         }
      }
      
      private function _handleTimerHold(param1:TimerEvent) : void
      {
         this._studyLabelHoldTimer.reset();
         this._studyLabelFadeTimer.start();
      }
      
      private function _handleTimerFade(param1:TimerEvent) : void
      {
         this._studyLabel.alpha = this._studyLabel.alpha - 0.1;
      }
      
      private function _handleTimerFadeComplete(param1:TimerEvent) : void
      {
         this._studyLabelFadeTimer.reset();
         this.hideLabel();
      }
      
      public function mouseOver() : void
      {
         this.setStyle("borderThickness",sizeX > 50?2:1);
      }
      
      public function mouseOut() : void
      {
         this._stayTimer.stop();
         this.setStyle("borderThickness",0);
      }
      
      public function startTimer() : void
      {
         this._stayTimer.reset();
         this._stayTimer.start();
      }
      
      private function _handleStay(param1:TimerEvent) : void
      {
         dispatchEvent(new Event(STAY));
      }
      
      public function get coord_x() : int
      {
         return this._coord_x;
      }
      
      public function get coord_y() : int
      {
         return this._coord_y;
      }
      
      public function set source(param1:Object) : void
      {
         this._img.source = param1;
      }
      
      public function get source() : Object
      {
         return this._img.source;
      }
      
      public function set dead(param1:Boolean) : void
      {
         this._dead = param1;
      }
      
      public function get dead() : Boolean
      {
         return this._dead;
      }
   }
}
