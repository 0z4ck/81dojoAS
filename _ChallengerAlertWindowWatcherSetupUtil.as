package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ChallengerAlertWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _ChallengerAlertWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ChallengerAlertWindow.watcherSetupUtil = new _ChallengerAlertWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[3],param4[5],param4[6],param4[7],param4[8],param4[10],param4[11],param4[12]],null);
         param5[5] = new PropertyWatcher("country",{"propertyChange":true},[param4[3]],null);
         param5[14] = new PropertyWatcher("loss_small",{"propertyChange":true},[param4[6]],null);
         param5[8] = new PropertyWatcher("rate",{"propertyChange":true},[param4[5]],null);
         param5[16] = new PropertyWatcher("reject",{"propertyChange":true},[param4[8]],null);
         param5[12] = new PropertyWatcher("win_small",{"propertyChange":true},[param4[6]],null);
         param5[20] = new PropertyWatcher("auto_reject",{"propertyChange":true},[param4[12]],null);
         param5[18] = new PropertyWatcher("detail",{"propertyChange":true},[param4[10]],null);
         param5[19] = new PropertyWatcher("reject_reason",{"propertyChange":true},[param4[11]],null);
         param5[15] = new PropertyWatcher("accept",{"propertyChange":true},[param4[7]],null);
         param5[1] = new PropertyWatcher("challenger",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4],param4[5],param4[6]],param2);
         param5[11] = new PropertyWatcher("wins",{"propertyChange":true},[param4[6]],null);
         param5[6] = new PropertyWatcher("country",{"propertyChange":true},[param4[3]],null);
         param5[2] = new PropertyWatcher("rankColor",{"propertyChange":true},[param4[1]],null);
         param5[7] = new PropertyWatcher("flag_m",{"propertyChange":true},[param4[4]],null);
         param5[3] = new PropertyWatcher("name",{"propertyChange":true},[param4[2]],null);
         param5[10] = new PropertyWatcher("rank",{"propertyChange":true},[param4[5]],null);
         param5[13] = new PropertyWatcher("losses",{"propertyChange":true},[param4[6]],null);
         param5[9] = new PropertyWatcher("rateStr",{"propertyChange":true},[param4[5]],null);
         param5[17] = new PropertyWatcher("remainTime",{"propertyChange":true},[param4[9]],param2);
         param5[4].updateParent(LanguageSelector);
         param5[4].addChild(param5[5]);
         param5[4].addChild(param5[14]);
         param5[4].addChild(param5[8]);
         param5[4].addChild(param5[16]);
         param5[4].addChild(param5[12]);
         param5[4].addChild(param5[20]);
         param5[4].addChild(param5[18]);
         param5[4].addChild(param5[19]);
         param5[4].addChild(param5[15]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[11]);
         param5[1].addChild(param5[6]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[7]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[10]);
         param5[1].addChild(param5[13]);
         param5[1].addChild(param5[9]);
         param5[17].updateParent(param1);
      }
   }
}
