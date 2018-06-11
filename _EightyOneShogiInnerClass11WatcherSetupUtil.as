package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _EightyOneShogiInnerClass11WatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _EightyOneShogiInnerClass11WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EightyOneShogiInnerClass11.watcherSetupUtil = new _EightyOneShogiInnerClass11WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[1] = new PropertyWatcher("whiteFlagURL",null,[param4[0]],null);
         param5[4] = new PropertyWatcher("white",null,[param4[3]],null);
         param5[2] = new PropertyWatcher("whiteCountry",null,[param4[1]],null);
         param5[3] = new PropertyWatcher("whiteRankColor",null,[param4[2]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[3]);
      }
   }
}
