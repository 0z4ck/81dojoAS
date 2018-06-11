package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _EightyOneShogiInnerClass7WatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _EightyOneShogiInnerClass7WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EightyOneShogiInnerClass7.watcherSetupUtil = new _EightyOneShogiInnerClass7WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("parentApplication",{"initialize":true},[param4[6]],param2);
         param5[6] = new PropertyWatcher("lan",null,[param4[6]],null);
         param5[7] = new PropertyWatcher("status_tip_host",null,[param4[6]],null);
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[7],param4[8],param4[9],param4[10],param4[11]],param2);
         param5[4] = new PropertyWatcher("isHost",null,[param4[4],param4[5]],null);
         param5[2] = new PropertyWatcher("showMic",null,[param4[1],param4[2]],null);
         param5[9] = new PropertyWatcher("markWidth",null,[param4[8]],null);
         param5[1] = new PropertyWatcher("voice_icon",null,[param4[0]],null);
         param5[11] = new PropertyWatcher("name",null,[param4[10]],null);
         param5[12] = new PropertyWatcher("idleColor",null,[param4[11]],null);
         param5[10] = new PropertyWatcher("markTip",null,[param4[9]],null);
         param5[3] = new PropertyWatcher("voiceTooltip",null,[param4[3]],null);
         param5[8] = new PropertyWatcher("mark",null,[param4[7]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[6].addChild(param5[7]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[9]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[11]);
         param5[0].addChild(param5[12]);
         param5[0].addChild(param5[10]);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[8]);
      }
   }
}
