package
{
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.utils.Timer;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Label;
   
   public final class WorldClockGadget extends HBox
   {
      
      private static const names_jp:Array = new Array("世界標準時","フランクフルト","モスクワ","ムンバイ","バンコク","東京","ロサンゼルス","ニューヨーク","サンパウロ");
      
      private static const names_en:Array = new Array("UTC","Frankfurt","Moscow","Mumbai","Bangkok","Tokyo","Los Angeles","New York","Sao Paulo");
      
      private static const half_hour:Array = new Array(false,false,false,true,false,false,false,false,false);
      
      private static const days_jp:Array = new Array("日","月","火","水","木","金","土");
      
      private static const days_en:Array = new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");
       
      
      private var _boxes:Array;
      
      private var _clocks:Array;
      
      private var _timer:Timer;
      
      private var _labels:Array;
      
      public function WorldClockGadget()
      {
         var _loc3_:VBox = null;
         var _loc4_:Label = null;
         var _loc5_:HBox = null;
         this._boxes = [];
         this._clocks = [];
         this._timer = new Timer(60000);
         this._labels = [];
         super();
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.setStyle("horizontalAlign","center");
         this.setStyle("verticalAlign","top");
         this.setStyle("fontSize",12);
         this.setStyle("horizontalGap",15);
         var _loc1_:DropShadowFilter = new DropShadowFilter(2,45,0,0.3);
         var _loc2_:int = 0;
         while(_loc2_ < names_en.length)
         {
            _loc3_ = new VBox();
            _loc3_.setStyle("verticalGap",0);
            _loc3_.setStyle("horizontalAlign","center");
            _loc4_ = new Label();
            _loc4_.setStyle("fontWeight","bold");
            _loc3_.addChild(_loc4_);
            this._labels.push(_loc4_);
            _loc5_ = new HBox();
            _loc5_.width = 90;
            _loc5_.horizontalScrollPolicy = "off";
            _loc5_.setStyle("horizontalAlign","center");
            _loc5_.filters = [_loc1_];
            _loc4_ = new Label();
            this._clocks.push(_loc4_);
            this._boxes.push(_loc5_);
            _loc5_.addChild(_loc4_);
            _loc3_.addChild(_loc5_);
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      public function start() : void
      {
         this.update();
         var _loc1_:int = 0;
         while(_loc1_ < this._labels.length)
         {
            this._labels[_loc1_].text = LanguageSelector.EJ(names_en[_loc1_],names_jp[_loc1_]);
            _loc1_++;
         }
         this._timer.addEventListener(TimerEvent.TIMER,this._handleTimer);
         this._timer.start();
      }
      
      public function update() : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getUTCDay();
         var _loc3_:int = _loc1_.getUTCHours();
         var _loc4_:int = _loc1_.getUTCMinutes();
         if(_loc1_.getUTCSeconds() >= 30)
         {
            _loc4_ = _loc4_ + 1;
         }
         var _loc5_:Array = !!LanguageSelector.isJapanese()?days_jp:days_en;
         var _loc6_:int = 0;
         while(_loc6_ < this._clocks.length)
         {
            _loc7_ = _loc4_ + (!!half_hour[_loc6_]?30:0);
            _loc8_ = _loc3_ + InfoFetcher.clock_differences[_loc6_];
            if(_loc7_ >= 60)
            {
               _loc7_ = _loc7_ - 60;
               _loc8_ = _loc8_ + 1;
            }
            if(_loc8_ < 0)
            {
               _loc8_ = _loc8_ + 24;
               this._clocks[_loc6_].text = _loc5_[(_loc2_ - 1 + 7) % 7] + " " + (_loc8_ + 100).toString().substring(1) + ":" + (_loc7_ + 100).toString().substring(1);
            }
            else if(_loc8_ >= 24)
            {
               _loc8_ = _loc8_ - 24;
               this._clocks[_loc6_].text = _loc5_[(_loc2_ + 1 + 7) % 7] + " " + (_loc8_ + 100).toString().substring(1) + ":" + (_loc7_ + 100).toString().substring(1);
            }
            else
            {
               this._clocks[_loc6_].text = _loc5_[_loc2_] + " " + (_loc8_ + 100).toString().substring(1) + ":" + (_loc7_ + 100).toString().substring(1);
            }
            if(_loc8_ >= 18 || _loc8_ <= 5)
            {
               this._boxes[_loc6_].setStyle("backgroundColor",68);
               this._boxes[_loc6_].setStyle("color",16777164);
            }
            else
            {
               this._boxes[_loc6_].setStyle("backgroundColor",16777164);
               this._boxes[_loc6_].setStyle("color",undefined);
            }
            _loc6_++;
         }
      }
      
      private function _handleTimer(param1:TimerEvent) : void
      {
         this.update();
      }
   }
}
