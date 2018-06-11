package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _InvitationAlertWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _InvitationAlertWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InvitationAlertWindow.watcherSetupUtil = new _InvitationAlertWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("gameType",{"propertyChange":true},[param4[6]],param2);
         param5[8] = new PropertyWatcher("total",{"propertyChange":true},[param4[6]],param2);
         param5[9] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[6],param4[7],param4[8],param4[10]],null);
         param5[12] = new PropertyWatcher("sec",{"propertyChange":true},[param4[6]],null);
         param5[10] = new PropertyWatcher("min",{"propertyChange":true},[param4[6]],null);
         param5[14] = new PropertyWatcher("decline",{"propertyChange":true},[param4[8]],null);
         param5[13] = new PropertyWatcher("challenge",{"propertyChange":true},[param4[7]],null);
         param5[16] = new PropertyWatcher("decline_reason",{"propertyChange":true},[param4[10]],null);
         param5[1] = new PropertyWatcher("inviter",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4]],param2);
         param5[3] = new PropertyWatcher("rankColor",{"propertyChange":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("name",{"propertyChange":true},[param4[3]],null);
         param5[2] = new PropertyWatcher("rank",{"propertyChange":true},[param4[1]],null);
         param5[5] = new PropertyWatcher("flag_s",{"propertyChange":true},[param4[4]],null);
         param5[15] = new PropertyWatcher("remainTime",{"propertyChange":true},[param4[9]],param2);
         param5[11] = new PropertyWatcher("byoyomi",{"propertyChange":true},[param4[6]],param2);
         param5[7].updateParent(param1);
         param5[8].updateParent(param1);
         param5[9].updateParent(LanguageSelector);
         param5[9].addChild(param5[12]);
         param5[9].addChild(param5[10]);
         param5[9].addChild(param5[14]);
         param5[9].addChild(param5[13]);
         param5[9].addChild(param5[16]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[4]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[5]);
         param5[15].updateParent(param1);
         param5[11].updateParent(param1);
      }
   }
}
