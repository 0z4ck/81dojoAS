package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _EightyOneShogiInnerClass5WatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _EightyOneShogiInnerClass5WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EightyOneShogiInnerClass5.watcherSetupUtil = new _EightyOneShogiInnerClass5WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4]],param2);
         param5[2] = new PropertyWatcher("markWidth",null,[param4[1]],null);
         param5[4] = new PropertyWatcher("name",null,[param4[3]],null);
         param5[5] = new PropertyWatcher("idleColor",null,[param4[4]],null);
         param5[3] = new PropertyWatcher("markTip",null,[param4[2]],null);
         param5[1] = new PropertyWatcher("mark",null,[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[5]);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[1]);
      }
   }
}
