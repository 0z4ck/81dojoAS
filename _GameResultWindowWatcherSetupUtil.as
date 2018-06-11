package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _GameResultWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _GameResultWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GameResultWindow.watcherSetupUtil = new _GameResultWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("_main",{"propertyChange":true},[param4[0]],param2);
         param5[2] = new PropertyWatcher("_you_after",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("_you_rank",{"propertyChange":true},[param4[3]],param2);
         param5[6] = new PropertyWatcher("_opponent_rank",{"propertyChange":true},[param4[6]],param2);
         param5[5] = new PropertyWatcher("_opponent_after",{"propertyChange":true},[param4[5]],param2);
         param5[1] = new PropertyWatcher("_you_before",{"propertyChange":true},[param4[1]],param2);
         param5[4] = new PropertyWatcher("_opponent_before",{"propertyChange":true},[param4[4]],param2);
         param5[0].updateParent(param1);
         param5[2].updateParent(param1);
         param5[3].updateParent(param1);
         param5[6].updateParent(param1);
         param5[5].updateParent(param1);
         param5[1].updateParent(param1);
         param5[4].updateParent(param1);
      }
   }
}
