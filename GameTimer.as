package
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.utils.Timer;
   import mx.containers.Canvas;
   import mx.controls.Label;
   import spark.components.Image;
   
   public final class GameTimer extends Canvas
   {
      
      public static var CHECK_TIMEOUT:String = "check_timeout";
      
      public static var TIMER_LAG:String = "timer_lag";
      
      public static var soundType:int = 2;
      
      private static var arrows:Class = GameTimer_arrows;
      
      private static var sound_timer:Class = GameTimer_sound_timer;
      
      private static var _sound_timer:Sound = new sound_timer();
       
      
      private var _label:Label;
      
      private var _label_sub:Label;
      
      private var _box:Canvas;
      
      private var _arrows:Image;
      
      private var _total:int;
      
      private var _byoyomi:int;
      
      private var _time_left:int;
      
      private var _accumulated_time:int;
      
      private var _byoyomi_flag:Boolean;
      
      private var _timeout_flag:Boolean;
      
      private var _timer:Timer;
      
      private var _startTime:Number;
      
      private var _thisCount:int;
      
      private var _lagging:Boolean;
      
      private var _disconnected:Boolean = false;
      
      public function GameTimer()
      {
         super();
         this.width = 100;
         this.horizontalScrollPolicy = "no";
         this._box = new Canvas();
         this._box.x = 7;
         this._box.width = 85;
         this._box.horizontalScrollPolicy = "no";
         this._box.setStyle("borderStyle","solid");
         this._box.setStyle("borderColor",0);
         this._box.setStyle("textAlign","center");
         this._box.setStyle("backgroundColor",16777215);
         this._label = new Label();
         this._label.setStyle("textAlign","center");
         this._label.setStyle("fontFamily",undefined);
         this._label.setStyle("fontSize",18);
         this._label.setStyle("fontWeight","bold");
         this._label.x = 0;
         this._label.width = 85;
         this._box.addChild(this._label);
         addChild(this._box);
         this._label_sub = new Label();
         this._label_sub.setStyle("fontSize",9);
         this._label_sub.setStyle("color",15636787);
         this._label_sub.x = 76;
         this._label_sub.y = 17;
         this._label_sub.truncateToFit = false;
         addChild(this._label_sub);
         this._arrows = new Image();
         this._arrows.source = arrows;
         this._arrows.smooth = true;
         this._arrows.y = 2;
         addChild(this._arrows);
         this._timer = new Timer(1000);
         this._timer.addEventListener(TimerEvent.TIMER,this._tickHandler);
         Byoyomi.init();
      }
      
      public function start() : void
      {
         if(!this._timer.running)
         {
            this._timer.start();
            this._arrows.visible = true;
            this._lagging = false;
            this._thisCount = 0;
            this._startTime = Number(new Date());
         }
      }
      
      public function stop() : void
      {
         if(this._timer.running)
         {
            this._timer.stop();
            this._arrows.visible = false;
         }
         this._disconnected = false;
      }
      
      public function reset(param1:int, param2:int) : void
      {
         this._total = param1;
         this._byoyomi = param2;
         this._byoyomi_flag = this._total <= 0;
         this._time_left = !!this._byoyomi_flag?int(this._byoyomi):int(this._total);
         this._accumulated_time = 0;
         this._timeout_flag = false;
         if(this._byoyomi_flag)
         {
            this._box.setStyle("backgroundColor",16776960);
         }
         else
         {
            this._box.setStyle("backgroundColor",16777215);
         }
         this._arrows.visible = false;
         this._disconnected = false;
         this._display();
      }
      
      public function suspend(param1:Boolean = false) : void
      {
         if(this._timer.running)
         {
            this._timer.stop();
            if(this._byoyomi_flag)
            {
               this._box.setStyle("backgroundColor",16776960);
               this._time_left = this._byoyomi;
            }
         }
         this._arrows.visible = param1;
         this._display();
      }
      
      public function resume() : void
      {
         if(this._disconnected && this._byoyomi_flag)
         {
            return;
         }
         if(!this._timer.running)
         {
            this._timer.start();
            this._lagging = false;
            this._thisCount = 0;
            this._startTime = Number(new Date());
         }
         this._arrows.visible = true;
         this._display();
      }
      
      public function accumulateTime(param1:int) : void
      {
         if(this._byoyomi_flag)
         {
            return;
         }
         this._accumulated_time = this._accumulated_time + param1;
         if(this._accumulated_time < this._total)
         {
            this._time_left = this._total - this._accumulated_time;
         }
         else
         {
            this._byoyomi_flag = true;
            this._box.setStyle("backgroundColor",16776960);
            this._time_left = this._byoyomi;
         }
         this._display();
      }
      
      public function timeout() : void
      {
         this._time_left = 0;
         this._box.setStyle("backgroundColor",16711680);
         this._display();
      }
      
      private function _tickHandler(param1:TimerEvent) : void
      {
         this._time_left--;
         if(++this._thisCount % 5 == 0 && this._time_left <= 60)
         {
            if(!this._lagging && Number(new Date()) - this._startTime > (this._thisCount + 5) * 1000)
            {
               dispatchEvent(new Event(TIMER_LAG));
               this._lagging = true;
            }
         }
         if(this._time_left <= 0)
         {
            if(this._byoyomi > 0 && !this._byoyomi_flag)
            {
               this._byoyomi_flag = true;
               this._box.setStyle("backgroundColor",16776960);
               this._time_left = this._byoyomi;
               if(soundType == 1)
               {
                  _sound_timer.play();
               }
               else if(soundType >= 2 && this._byoyomi > 10)
               {
                  Byoyomi.sayByoyomi();
               }
               if(this._disconnected)
               {
                  this.suspend(true);
               }
            }
            else
            {
               this._timeout_flag = true;
               this._box.setStyle("backgroundColor",16711680);
               dispatchEvent(new Event(CHECK_TIMEOUT));
            }
         }
         else if(this._byoyomi_flag)
         {
            if(soundType == 1)
            {
               if(this._time_left >= 1 && this._time_left <= 5 || this._time_left == 7 || this._time_left == 9)
               {
                  _sound_timer.play();
               }
            }
            else if(soundType >= 2)
            {
               if(this._time_left == 10 || this._time_left == 20 || this._time_left == 30)
               {
                  Byoyomi.sayNumber(9 + int((this._byoyomi - this._time_left) / 10));
               }
               else if(this._time_left >= 1 && this._time_left <= 9)
               {
                  Byoyomi.sayNumber(10 - this._time_left);
               }
            }
            if(this._time_left == 9)
            {
               this._box.setStyle("backgroundColor",16733440);
            }
         }
         this._display();
      }
      
      private function _display() : void
      {
         var _loc1_:String = "";
         var _loc2_:int = this._time_left % 60;
         if(this._time_left <= -3)
         {
            this._label.text = LanguageSelector.EJ("Delay","遅延");
         }
         else if(this._time_left < 0)
         {
            this._label.text = "0:00";
         }
         else
         {
            _loc1_ = int(this._time_left / 60).toString() + ":" + (_loc2_ < 10?"0":"") + _loc2_.toString();
            this._label.text = _loc1_;
         }
         this._label_sub.text = !!this._byoyomi_flag?"":this._byoyomi.toString();
      }
      
      public function disconnect(param1:Boolean) : void
      {
         if(this._disconnected == param1)
         {
            return;
         }
         this._disconnected = param1;
         if(this._disconnected)
         {
            if(this._byoyomi_flag)
            {
               this.suspend(true);
            }
         }
         else if(this._arrows.visible)
         {
            this.resume();
         }
      }
      
      public function get time_left() : int
      {
         return this._time_left;
      }
   }
}
