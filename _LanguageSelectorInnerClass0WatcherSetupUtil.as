package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _LanguageSelectorInnerClass0WatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _LanguageSelectorInnerClass0WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LanguageSelectorInnerClass0.watcherSetupUtil = new _LanguageSelectorInnerClass0WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("image",null,[param4[0]],null);
         param5[2] = new PropertyWatcher("label",null,[param4[1]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
      }
   }
}
