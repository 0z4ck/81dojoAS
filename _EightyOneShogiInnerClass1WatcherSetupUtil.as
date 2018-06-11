package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _EightyOneShogiInnerClass1WatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _EightyOneShogiInnerClass1WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EightyOneShogiInnerClass1.watcherSetupUtil = new _EightyOneShogiInnerClass1WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7]],param2);
         param5[1] = new PropertyWatcher("black",null,[param4[0],param4[1],param4[3],param4[4],param4[5]],null);
         param5[6] = new PropertyWatcher("country",null,[param4[4]],null);
         param5[3] = new PropertyWatcher("rankColor",null,[param4[1]],null);
         param5[7] = new PropertyWatcher("name",null,[param4[5]],null);
         param5[2] = new PropertyWatcher("rank",null,[param4[0]],null);
         param5[5] = new PropertyWatcher("flag_s",null,[param4[3]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[6]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[7]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[5]);
      }
   }
}
