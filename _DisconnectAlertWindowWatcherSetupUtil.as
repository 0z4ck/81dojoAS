package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _DisconnectAlertWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _DisconnectAlertWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DisconnectAlertWindow.watcherSetupUtil = new _DisconnectAlertWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4]],null);
         param5[5] = new PropertyWatcher("declare",{"propertyChange":true},[param4[4]],null);
         param5[2] = new PropertyWatcher("msg_disconnect",{"propertyChange":true},[param4[1]],null);
         param5[3] = new PropertyWatcher("msg_disconnect_alert1",{"propertyChange":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("msg_disconnect_alert2",{"propertyChange":true},[param4[3]],null);
         param5[6] = new PropertyWatcher("remainTime",{"propertyChange":true},[param4[5]],param2);
         param5[1].updateParent(LanguageSelector);
         param5[1].addChild(param5[5]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[4]);
         param5[6].updateParent(param1);
      }
   }
}
