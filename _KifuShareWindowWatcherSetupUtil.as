package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _KifuShareWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _KifuShareWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KifuShareWindow.watcherSetupUtil = new _KifuShareWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[0]],null);
         param5[1] = new PropertyWatcher("share",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(LanguageSelector);
         param5[0].addChild(param5[1]);
      }
   }
}
