package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _EightyOneShogiInnerClass4WatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _EightyOneShogiInnerClass4WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EightyOneShogiInnerClass4.watcherSetupUtil = new _EightyOneShogiInnerClass4WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0],param4[1],param4[2]],param2);
         param5[3] = new PropertyWatcher("watcher_names",null,[param4[2]],null);
         param5[2] = new PropertyWatcher("watchersColor",null,[param4[1]],null);
         param5[1] = new PropertyWatcher("watchersText",null,[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[1]);
      }
   }
}
