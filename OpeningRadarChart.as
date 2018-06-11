package
{
   import flash.display.JointStyle;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import mx.containers.Canvas;
   import mx.controls.Label;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   
   public class OpeningRadarChart extends Canvas
   {
       
      
      private var _968586266radarUI:UIComponent;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _gridSprite:Sprite;
      
      private var _radarSprite:Sprite;
      
      private var _pointSprite:Sprite;
      
      private var _pieceSprite:Sprite;
      
      private var _percents:Array;
      
      private var _label:TextField;
      
      public function OpeningRadarChart()
      {
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"radarUI",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"対抗型 居飛車",
                        "x":235,
                        "y":0,
                        "toolTip":"Static Rook in Opposition"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "events":{"toolTipShow":"___OpeningRadarChart_Label2_toolTipShow"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"矢倉・角換り",
                        "x":300,
                        "y":100,
                        "toolTip":"Yagura / Bishop Exchange"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"相掛かり・横歩",
                        "x":240,
                        "y":200,
                        "toolTip":"Side Pawn Picker / Double Wing Attack"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"対抗型 振り飛車",
                        "x":85,
                        "y":0,
                        "toolTip":"Swinging Rook in Opposition"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"相振り飛車",
                        "x":45,
                        "y":100,
                        "toolTip":"Double Swinging Rook"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"力戦",
                        "x":125,
                        "y":200,
                        "toolTip":"Free-style"
                     };
                  }
               })]};
            }
         });
         this._gridSprite = new Sprite();
         this._radarSprite = new Sprite();
         this._pointSprite = new Sprite();
         this._pieceSprite = new Sprite();
         this._percents = new Array();
         this._label = new TextField();
         super();
         mx_internal::_document = this;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      public function loadData(param1:Array) : void
      {
         var _loc7_:Object = null;
         var _loc8_:Sprite = null;
         var _loc2_:Number = width / 2;
         var _loc3_:Number = height / 2;
         var _loc4_:Number = height / 2 * 0.8;
         var _loc5_:Number = -Math.PI / 2 + Math.PI / 24;
         this._gridSprite.graphics.lineStyle(0.5,0,1,true,"normal",null,JointStyle.MITER);
         this._radarSprite.graphics.lineStyle(2,16711680,1,true,"normal",null,JointStyle.MITER);
         this._radarSprite.graphics.beginFill(16711680,0.5);
         this._pointSprite.graphics.lineStyle(1,16711680,1,true,"normal");
         this._pieceSprite.graphics.lineStyle(0.5,0,1,true,"normal",null,JointStyle.MITER);
         var _loc6_:int = 0;
         for each(_loc7_ in param1)
         {
            if(_loc7_.black_wins + _loc7_.black_losses == 0)
            {
               this._percents.push(-50);
            }
            else
            {
               this._percents.push(_loc7_.black_wins / (_loc7_.black_wins + _loc7_.black_losses) * 100);
            }
            if(_loc7_.white_wins + _loc7_.white_losses == 0)
            {
               this._percents.push(-50);
            }
            else
            {
               this._percents.push(_loc7_.white_wins / (_loc7_.white_wins + _loc7_.white_losses) * 100);
            }
         }
         _loc5_ = -Math.PI / 2 - Math.PI / 12;
         this._radarSprite.graphics.moveTo(_loc2_ + (_loc4_ / 3 + _loc4_ * 2 / 3 * this._percents[this._percents.length - 1] / 100) * Math.cos(_loc5_),_loc3_ + (_loc4_ / 3 + _loc4_ * 2 / 3 * this._percents[this._percents.length - 1] / 100) * Math.sin(_loc5_));
         _loc6_ = 0;
         while(_loc6_ < this._percents.length)
         {
            _loc5_ = _loc5_ + Math.PI / 6;
            this._gridSprite.graphics.moveTo(_loc2_ + _loc4_ / 3 * Math.cos(_loc5_ + Math.PI / 6),_loc3_ + _loc4_ / 3 * Math.sin(_loc5_ + Math.PI / 6));
            this._gridSprite.graphics.lineTo(_loc2_ + _loc4_ / 3 * Math.cos(_loc5_),_loc3_ + _loc4_ / 3 * Math.sin(_loc5_));
            if(this._percents[_loc6_] < 0)
            {
               this._gridSprite.graphics.lineStyle(0.5,0,0.2,true);
            }
            this._gridSprite.graphics.lineTo(_loc2_ + _loc4_ * Math.cos(_loc5_),_loc3_ + _loc4_ * Math.sin(_loc5_));
            if(this._percents[_loc6_] < 0)
            {
               this._gridSprite.graphics.lineStyle(0.5,0,1,true);
            }
            this._gridSprite.graphics.lineTo(_loc2_ + _loc4_ * Math.cos(_loc5_ + Math.PI / 6),_loc3_ + _loc4_ * Math.sin(_loc5_ + Math.PI / 6));
            this._gridSprite.graphics.moveTo(_loc2_ + _loc4_ * 2 / 3 * Math.cos(_loc5_ + Math.PI / 6),_loc3_ + _loc4_ * 2 / 3 * Math.sin(_loc5_ + Math.PI / 6));
            this._gridSprite.graphics.lineTo(_loc2_ + _loc4_ * 2 / 3 * Math.cos(_loc5_),_loc3_ + _loc4_ * 2 / 3 * Math.sin(_loc5_));
            this._radarSprite.graphics.lineTo(_loc2_ + (_loc4_ / 3 + _loc4_ * 2 / 3 * this._percents[_loc6_] / 100) * Math.cos(_loc5_),_loc3_ + (_loc4_ / 3 + _loc4_ * 2 / 3 * this._percents[_loc6_] / 100) * Math.sin(_loc5_));
            _loc8_ = new Sprite();
            _loc8_.graphics.beginFill(16711680,1);
            _loc8_.graphics.drawCircle(_loc2_ + (_loc4_ / 3 + _loc4_ * 2 / 3 * this._percents[_loc6_] / 100) * Math.cos(_loc5_),_loc3_ + (_loc4_ / 3 + _loc4_ * 2 / 3 * this._percents[_loc6_] / 100) * Math.sin(_loc5_),3);
            _loc8_.graphics.endFill();
            if(this._percents[_loc6_] >= 0)
            {
               _loc8_.addEventListener(MouseEvent.MOUSE_OVER,this._handleMouseOver);
               _loc8_.addEventListener(MouseEvent.MOUSE_OUT,this._handleMouseOut);
            }
            this._pointSprite.addChild(_loc8_);
            if(_loc6_ % 2 == 0)
            {
               this._pieceSprite.graphics.beginFill(0,1);
            }
            this._pieceSprite.graphics.moveTo(_loc2_ + 1.1 * _loc4_ * Math.cos(_loc5_),_loc3_ + 1.1 * _loc4_ * Math.sin(_loc5_));
            this._pieceSprite.graphics.lineTo(_loc2_ + 1.08 * _loc4_ * Math.cos(_loc5_ + 0.03),_loc3_ + 1.08 * _loc4_ * Math.sin(_loc5_ + 0.03));
            this._pieceSprite.graphics.lineTo(_loc2_ + _loc4_ * Math.cos(_loc5_ + 0.05),_loc3_ + _loc4_ * Math.sin(_loc5_ + 0.05));
            this._pieceSprite.graphics.lineTo(_loc2_ + _loc4_ * Math.cos(_loc5_ - 0.05),_loc3_ + _loc4_ * Math.sin(_loc5_ - 0.05));
            this._pieceSprite.graphics.lineTo(_loc2_ + 1.08 * _loc4_ * Math.cos(_loc5_ - 0.03),_loc3_ + 1.08 * _loc4_ * Math.sin(_loc5_ - 0.03));
            this._pieceSprite.graphics.lineTo(_loc2_ + 1.1 * _loc4_ * Math.cos(_loc5_),_loc3_ + 1.1 * _loc4_ * Math.sin(_loc5_));
            if(_loc6_ % 2 == 0)
            {
               this._pieceSprite.graphics.endFill();
            }
            _loc6_++;
         }
         this._radarSprite.graphics.endFill();
         this.radarUI.addChild(this._gridSprite);
         this.radarUI.addChild(this._pieceSprite);
         this.radarUI.addChild(this._radarSprite);
         this.radarUI.addChild(this._pointSprite);
         this._label.autoSize = "left";
         this._label.defaultTextFormat = new TextFormat("Meiryo UI",15,43520,true);
         this._label.selectable = false;
         this._pointSprite.addChild(this._label);
      }
      
      private function _handleMouseOver(param1:MouseEvent) : void
      {
         this._label.x = param1.localX - 18;
         this._label.y = param1.localY - 25;
         var _loc2_:int = 0;
         while(_loc2_ < this._pointSprite.numChildren)
         {
            if(this._pointSprite.getChildAt(_loc2_) == param1.target)
            {
               this._label.text = String(this._percents[_loc2_].toFixed(0)) + "%";
               break;
            }
            _loc2_++;
         }
      }
      
      private function _handleMouseOut(param1:MouseEvent) : void
      {
         this._label.text = "";
      }
      
      public function ___OpeningRadarChart_Label2_toolTipShow(param1:ToolTipEvent) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get radarUI() : UIComponent
      {
         return this._968586266radarUI;
      }
      
      public function set radarUI(param1:UIComponent) : void
      {
         var _loc2_:Object = this._968586266radarUI;
         if(_loc2_ !== param1)
         {
            this._968586266radarUI = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radarUI",_loc2_,param1));
            }
         }
      }
   }
}
