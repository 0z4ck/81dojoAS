package
{
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.utils.Timer;
   import spark.components.Image;
   
   public final class TypingIndicator extends Image
   {
      
      private static var img:Class = TypingIndicator_img;
      
      private static var filter:DropShadowFilter = new DropShadowFilter(4,60,0,0.4);
       
      
      private var _timer:Timer;
      
      public function TypingIndicator()
      {
         this._timer = new Timer(50,100);
         super();
         this.alpha = 0;
         this.source = img;
         this.x = 16;
         this.y = 24 + 5;
         this.smooth = true;
         this.filters = [filter];
         this._timer.addEventListener(TimerEvent.TIMER,this._handleTimer);
         this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleTimerComplete);
      }
      
      public function show() : void
      {
         this.alpha = 1;
         this.y = 24 + 5;
         this._timer.reset();
         this._timer.start();
      }
      
      private function _handleTimer(param1:TimerEvent) : void
      {
         this.y = 24 + 5 * Math.cos(2 * 3.14159 * 1.2 * 0.05 * this._timer.currentCount);
         if(this._timer.currentCount > 70)
         {
            this.alpha = (100 - this._timer.currentCount) / 30;
         }
      }
      
      private function _handleTimerComplete(param1:TimerEvent) : void
      {
         this.stop();
      }
      
      public function stop() : void
      {
         this._timer.stop();
         this.alpha = 0;
      }
   }
}
