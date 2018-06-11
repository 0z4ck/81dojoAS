package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _PromotionWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _PromotionWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PromotionWindow.watcherSetupUtil = new _PromotionWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("_yesIcon",{"propertyChange":true},[param4[0]],param2);
         param5[3] = new PropertyWatcher("_noLabel",{"propertyChange":true},[param4[3]],param2);
         param5[2] = new PropertyWatcher("_noIcon",{"propertyChange":true},[param4[2]],param2);
         param5[1] = new PropertyWatcher("_yesLabel",{"propertyChange":true},[param4[1]],param2);
         param5[0].updateParent(param1);
         param5[3].updateParent(param1);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}
