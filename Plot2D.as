package
{
   import flash.display.JointStyle;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import mx.core.UIComponent;
   
   public class Plot2D extends UIComponent
   {
       
      
      private var _xmin:Number;
      
      private var _xmax:Number;
      
      private var _ymin:Number;
      
      private var _ymax:Number;
      
      private var _points:Array;
      
      private var _originalPoints:Array;
      
      private var _margin:Number = 0.05;
      
      private var _label:TextField;
      
      private var _lineSprite:Sprite;
      
      public function Plot2D()
      {
         this._label = new TextField();
         this._lineSprite = new Sprite();
         super();
         addChild(this._lineSprite);
      }
      
      public function loadData(param1:Array) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Point = null;
         var _loc8_:TextField = null;
         var _loc9_:Sprite = null;
         this._points = param1;
         if(this._originalPoints == null)
         {
            this._originalPoints = this._points.concat();
         }
         this._xmin = 10000000000;
         this._xmax = -10000000000;
         this._ymin = this._xmin;
         this._ymax = this._xmax;
         for each(_loc2_ in this._points)
         {
            if(_loc2_.x < this._xmin)
            {
               this._xmin = _loc2_.x;
            }
            if(_loc2_.x > this._xmax)
            {
               this._xmax = _loc2_.x;
            }
            if(_loc2_.y < this._ymin)
            {
               this._ymin = _loc2_.y;
            }
            if(_loc2_.y > this._ymax)
            {
               this._ymax = _loc2_.y;
            }
         }
         _loc3_ = this._xmax == this._xmin?Number(2 * Math.max(Math.abs(this._xmax),1)):Number(this._xmax - this._xmin);
         this._xmax = this._xmax + 0.02 * _loc3_;
         this._xmin = this._xmin - 0.05 * _loc3_;
         _loc3_ = this._ymax == this._ymin?Number(2 * Math.max(Math.abs(this._ymax),1)):Number(this._ymax - this._ymin);
         this._ymax = this._ymax + 0.1 * _loc3_;
         this._ymin = this._ymin - 0.1 * _loc3_;
         this._lineSprite.graphics.clear();
         this._lineSprite.graphics.lineStyle(1,0,1,true,"normal",null,JointStyle.MITER);
         this._lineSprite.graphics.moveTo(width * 2 * this._margin,height * this._margin);
         this._lineSprite.graphics.lineTo(width * 2 * this._margin,height * (1 - this._margin));
         this._lineSprite.graphics.lineTo(width * (1 - this._margin),height * (1 - this._margin));
         if(this._ymax - this._ymin > 300)
         {
            _loc4_ = 100;
         }
         else if(this._ymax - this._ymin > 120)
         {
            _loc4_ = 50;
         }
         else if(this._ymax - this._ymin > 60)
         {
            _loc4_ = 20;
         }
         else if(this._ymax - this._ymin > 30)
         {
            _loc4_ = 10;
         }
         else if(this._ymax - this._ymin > 12)
         {
            _loc4_ = 5;
         }
         else if(this._ymax - this._ymin > 6)
         {
            _loc4_ = 2;
         }
         else
         {
            _loc4_ = 1;
         }
         var _loc5_:int = int(this._ymin) - 1;
         while(_loc5_ < this._ymax)
         {
            if(_loc5_ % _loc4_ == 0)
            {
               this._lineSprite.graphics.lineStyle(1,13421772,1,true,"normal");
               _loc7_ = this._trans(new Point(this._xmin,_loc5_));
               this._lineSprite.graphics.moveTo(_loc7_.x,_loc7_.y);
               this._lineSprite.graphics.lineTo(width * (1 - this._margin),_loc7_.y);
               _loc8_ = new TextField();
               _loc8_.autoSize = "right";
               _loc8_.defaultTextFormat = new TextFormat("Meiryo UI",11,0,true);
               _loc8_.selectable = false;
               _loc8_.text = String(_loc5_);
               _loc8_.x = 8;
               _loc8_.y = _loc7_.y - 11;
               this._lineSprite.addChild(_loc8_);
            }
            _loc6_ = InfoFetcher.rank_thresholds.indexOf(_loc5_);
            if(_loc6_ >= 0)
            {
               this._lineSprite.graphics.lineStyle(3,43775,0.5,true,"normal");
               _loc7_ = this._trans(new Point(this._xmin,_loc5_));
               this._lineSprite.graphics.moveTo(_loc7_.x,_loc7_.y);
               this._lineSprite.graphics.lineTo(width * (1 - this._margin),_loc7_.y);
               _loc8_ = new TextField();
               _loc8_.autoSize = "left";
               _loc8_.defaultTextFormat = new TextFormat("Meiryo UI",11,43775,true);
               _loc8_.selectable = false;
               _loc8_.text = LanguageSelector.EJ(InfoFetcher.rank_names_en[_loc6_],InfoFetcher.rank_names[_loc6_]);
               _loc8_.x = _loc7_.x;
               _loc8_.y = _loc7_.y - 18;
               this._lineSprite.addChild(_loc8_);
            }
            _loc5_++;
         }
         this._lineSprite.graphics.lineStyle(1,16711680,1,true,"normal",null,JointStyle.MITER);
         _loc7_ = this._trans(this._points[0]);
         this._lineSprite.graphics.moveTo(_loc7_.x,_loc7_.y);
         for each(_loc2_ in this._points)
         {
            _loc7_ = this._trans(_loc2_);
            this._lineSprite.graphics.lineTo(_loc7_.x,_loc7_.y);
            _loc9_ = new Sprite();
            _loc9_.graphics.beginFill(16711680,1);
            _loc9_.graphics.drawCircle(_loc7_.x,_loc7_.y,3);
            _loc9_.graphics.endFill();
            _loc9_.addEventListener(MouseEvent.MOUSE_OVER,this._handleMouseOver);
            _loc9_.addEventListener(MouseEvent.MOUSE_OUT,this._handleMouseOut);
            addChild(_loc9_);
         }
         this._label.autoSize = "left";
         this._label.defaultTextFormat = new TextFormat("Meiryo UI",14,43520,true);
         this._label.selectable = false;
         addChild(this._label);
      }
      
      public function redrawData() : void
      {
         var _loc1_:int = 0;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         while(this._lineSprite.numChildren > 0)
         {
            this._lineSprite.removeChildAt(0);
         }
         addChild(this._lineSprite);
         if(this._points.length > 200)
         {
            _loc1_ = 200;
         }
         else if(this._points.length > 100)
         {
            _loc1_ = 100;
         }
         else if(this._points.length > 50)
         {
            _loc1_ = 50;
         }
         else
         {
            _loc1_ = this._originalPoints.length;
         }
         this.loadData(this._originalPoints.slice(this._originalPoints.length - _loc1_));
      }
      
      private function _handleMouseOver(param1:MouseEvent) : void
      {
         this._label.x = param1.localX - 18;
         this._label.y = param1.localY - 25;
         var _loc2_:int = 0;
         while(_loc2_ < numChildren)
         {
            if(getChildAt(_loc2_) == param1.target)
            {
               this._label.text = String(this._points[_loc2_ - 1].y);
               break;
            }
            _loc2_++;
         }
      }
      
      private function _handleMouseOut(param1:MouseEvent) : void
      {
         this._label.text = "";
      }
      
      private function _trans(param1:Point) : Point
      {
         var _loc2_:Number = 2 * this._margin * width + (1 - 3 * this._margin) * width * (param1.x - this._xmin) / (this._xmax - this._xmin);
         var _loc3_:Number = this._margin * height + (1 - 2 * this._margin) * height * (param1.y - this._ymax) / (this._ymin - this._ymax);
         return new Point(_loc2_,_loc3_);
      }
   }
}
