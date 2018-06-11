package
{
   import flash.display.JointStyle;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import mx.core.UIComponent;
   
   public final class BoardArrow extends UIComponent
   {
      
      public static const FROM_BOARD:int = -1;
      
      public static const FROM_HAND_SENTE:int = 0;
      
      public static const FROM_HAND_GOTE:int = 1;
      
      private static const HEAD_LENGTH:Number = 16;
      
      private static const HEAD_ANGLE:Number = Math.PI / 6;
      
      private static const OFFSET:Number = 3;
       
      
      private var _fromType:int;
      
      private var _from:Point;
      
      private var _to:Point;
      
      private var _color:uint;
      
      private var _sender:String;
      
      private var _sprite:Sprite;
      
      private var _nameTag:TextField;
      
      private var _nameTagHoldTimer:Timer;
      
      private var _nameTagFadeTimer:Timer;
      
      private var _isDrawn:Boolean = false;
      
      public function BoardArrow(param1:int, param2:Point, param3:Point, param4:uint, param5:String)
      {
         this._sprite = new Sprite();
         this._nameTag = new TextField();
         this._nameTagHoldTimer = new Timer(1500,1);
         this._nameTagFadeTimer = new Timer(100,10);
         super();
         this._fromType = param1;
         this._from = new Point(param2.x,param2.y);
         this._to = new Point(param3.x,param3.y);
         this._color = param4;
         this._sender = param5;
         this._nameTag.defaultTextFormat = new TextFormat("Meiryo UI",10,this._color,true);
         this._nameTag.text = param5;
         this._nameTagHoldTimer.addEventListener(TimerEvent.TIMER,this._handleTimerHold);
         this._nameTagFadeTimer.addEventListener(TimerEvent.TIMER,this._handleTimerFade);
         this._nameTagFadeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleTimerFadeComplete);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.addChild(this._sprite);
      }
      
      public function drawArrow(param1:int) : void
      {
         var _loc4_:Number = NaN;
         this._sprite.graphics.clear();
         this._sprite.graphics.lineStyle(1,this._color,1,true,"normal",null,JointStyle.MITER);
         var _loc2_:Point = new Point();
         var _loc3_:Point = new Point();
         if(this._fromType == FROM_BOARD)
         {
            _loc2_ = this._squareCenterCoord(this._from,param1);
         }
         else if(param1 == this._fromType)
         {
            _loc2_ = new Point(Board.handX0 + this._from.x,Board.handY0 + this._from.y);
         }
         else
         {
            _loc2_ = new Point(Board.handX1 + this._from.x,Board.handY1 + this._from.y);
         }
         _loc3_ = this._squareCenterCoord(this._to,param1);
         if(_loc2_.x == _loc3_.x && _loc2_.y == _loc3_.y)
         {
            this._sprite.graphics.lineStyle(2,this._color,1,true,"normal",null,JointStyle.MITER);
            this._sprite.graphics.drawCircle(_loc3_.x,_loc3_.y,Square.sizeX * 0.45);
         }
         else
         {
            _loc4_ = Math.atan2(_loc2_.y - _loc3_.y,_loc2_.x - _loc3_.x);
            _loc2_ = new Point(_loc2_.x - OFFSET * Math.cos(_loc4_),_loc2_.y - OFFSET * Math.sin(_loc4_));
            _loc3_ = new Point(_loc3_.x + OFFSET * Math.cos(_loc4_),_loc3_.y + OFFSET * Math.sin(_loc4_));
            this._sprite.graphics.moveTo(_loc2_.x,_loc2_.y);
            this._sprite.graphics.lineTo(_loc3_.x + HEAD_LENGTH / 2 * Math.cos(_loc4_ + HEAD_ANGLE * 0.4),_loc3_.y + HEAD_LENGTH / 2 * Math.sin(_loc4_ + HEAD_ANGLE * 0.4));
            this._sprite.graphics.lineTo(_loc3_.x + HEAD_LENGTH * Math.cos(_loc4_ + HEAD_ANGLE),_loc3_.y + HEAD_LENGTH * Math.sin(_loc4_ + HEAD_ANGLE));
            this._sprite.graphics.lineStyle(1.5,this._color,0.8,true,"normal",null,JointStyle.MITER);
            this._sprite.graphics.lineTo(_loc3_.x,_loc3_.y);
            this._sprite.graphics.lineTo(_loc3_.x + HEAD_LENGTH * Math.cos(_loc4_ - HEAD_ANGLE),_loc3_.y + HEAD_LENGTH * Math.sin(_loc4_ - HEAD_ANGLE));
            this._sprite.graphics.lineStyle(1,this._color,1,true,"normal",null,JointStyle.MITER);
            this._sprite.graphics.lineTo(_loc3_.x + HEAD_LENGTH / 2 * Math.cos(_loc4_ - HEAD_ANGLE * 0.4),_loc3_.y + HEAD_LENGTH / 2 * Math.sin(_loc4_ - HEAD_ANGLE * 0.4));
            this._sprite.graphics.lineTo(_loc2_.x,_loc2_.y);
         }
         this._nameTag.alpha = 1;
         this._nameTag.x = _loc3_.x + 10;
         this._nameTag.y = _loc3_.y - 16;
         this._nameTag.autoSize = "left";
         this._nameTag.selectable = false;
         this._sprite.addChild(this._nameTag);
         this._isDrawn = true;
         this._nameTagHoldTimer.start();
      }
      
      public function erase() : void
      {
         this._nameTagFadeTimer.reset();
         this._nameTagHoldTimer.reset();
         if(this._sprite.contains(this._nameTag))
         {
            this._sprite.removeChild(this._nameTag);
         }
         this._sprite.graphics.clear();
         this._isDrawn = false;
      }
      
      private function _handleTimerHold(param1:TimerEvent) : void
      {
         this._nameTagHoldTimer.reset();
         this._nameTagFadeTimer.start();
      }
      
      private function _handleTimerFade(param1:TimerEvent) : void
      {
         this._nameTag.alpha = this._nameTag.alpha - 0.1;
      }
      
      private function _handleTimerFadeComplete(param1:TimerEvent) : void
      {
         this._nameTagFadeTimer.reset();
         this._sprite.removeChild(this._nameTag);
      }
      
      private function _squareCenterCoord(param1:Point, param2:int) : Point
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param2 == Kyokumen.SENTE)
         {
            _loc3_ = 9 - param1.x;
            _loc4_ = param1.y - 1;
         }
         else
         {
            _loc3_ = param1.x + Board.nCol - 10;
            _loc4_ = Board.nRow - param1.y;
         }
         return new Point(Board.squaresEdgeX + (_loc3_ + 0.5) * Square.sizeX + 1,Board.squaresEdgeY + (_loc4_ + 0.5) * Square.sizeY + 1);
      }
      
      public function get sender() : String
      {
         return this._sender;
      }
      
      public function get isDrawn() : Boolean
      {
         return this._isDrawn;
      }
   }
}
