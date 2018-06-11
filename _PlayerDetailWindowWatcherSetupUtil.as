package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _PlayerDetailWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _PlayerDetailWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PlayerDetailWindow.watcherSetupUtil = new _PlayerDetailWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[28] = new PropertyWatcher("_wins",{"propertyChange":true},[param4[22],param4[24]],param2);
         param5[8] = new PropertyWatcher("connection",{"propertyChange":true},[param4[7]],param2);
         param5[15] = new PropertyWatcher("_pr",{"propertyChange":true},[param4[10]],param2);
         param5[4] = new PropertyWatcher("_country_code",{"propertyChange":true},[param4[5]],param2);
         param5[24] = new PropertyWatcher("_rating",{"propertyChange":true},[param4[20]],param2);
         param5[30] = new PropertyWatcher("_losses",{"propertyChange":true},[param4[23],param4[24]],param2);
         param5[37] = new PropertyWatcher("_streak_best",{"propertyChange":true},[param4[26]],param2);
         param5[13] = new PropertyWatcher("_mileage_period",{"propertyChange":true},[param4[9]],param2);
         param5[26] = new PropertyWatcher("_maxRating",{"propertyChange":true},[param4[21]],param2);
         param5[3] = new PropertyWatcher("login",{"propertyChange":true},[param4[4]],param2);
         param5[33] = new PropertyWatcher("_percentage",{"propertyChange":true},[param4[25]],param2);
         param5[10] = new PropertyWatcher("_mileage_total",{"propertyChange":true},[param4[8]],param2);
         param5[2] = new PropertyWatcher("avatar",{"propertyChange":true},[param4[3]],param2);
         param5[5] = new PropertyWatcher("_country",{"propertyChange":true},[param4[6]],param2);
         param5[6] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[7],param4[12],param4[13],param4[14],param4[15],param4[16],param4[17],param4[18],param4[28],param4[32],param4[36],param4[40],param4[44],param4[48]],null);
         param5[39] = new PropertyWatcher("total",{"propertyChange":true},[param4[28],param4[40]],null);
         param5[47] = new PropertyWatcher("white",{"propertyChange":true},[param4[36],param4[48]],null);
         param5[16] = new PropertyWatcher("tendency",{"propertyChange":true},[param4[12]],null);
         param5[19] = new PropertyWatcher("data_table",{"propertyChange":true},[param4[15]],null);
         param5[17] = new PropertyWatcher("percentage",{"propertyChange":true},[param4[13]],null);
         param5[22] = new PropertyWatcher("web_system",{"propertyChange":true},[param4[18]],null);
         param5[43] = new PropertyWatcher("black",{"propertyChange":true},[param4[32],param4[44]],null);
         param5[20] = new PropertyWatcher("nonrated",{"propertyChange":true},[param4[16]],null);
         param5[18] = new PropertyWatcher("rate_history",{"propertyChange":true},[param4[14]],null);
         param5[21] = new PropertyWatcher("apply_dan",{"propertyChange":true},[param4[17]],null);
         param5[7] = new PropertyWatcher("status",{"propertyChange":true},[param4[7]],null);
         param5[23] = new PropertyWatcher("_rank",{"propertyChange":true},[param4[19]],param2);
         param5[28].updateParent(param1);
         param5[8].updateParent(param1);
         param5[15].updateParent(param1);
         param5[4].updateParent(param1);
         param5[24].updateParent(param1);
         param5[30].updateParent(param1);
         param5[37].updateParent(param1);
         param5[13].updateParent(param1);
         param5[26].updateParent(param1);
         param5[3].updateParent(param1);
         param5[33].updateParent(param1);
         param5[10].updateParent(param1);
         param5[2].updateParent(param1);
         param5[5].updateParent(param1);
         param5[6].updateParent(LanguageSelector);
         param5[6].addChild(param5[39]);
         param5[6].addChild(param5[47]);
         param5[6].addChild(param5[16]);
         param5[6].addChild(param5[19]);
         param5[6].addChild(param5[17]);
         param5[6].addChild(param5[22]);
         param5[6].addChild(param5[43]);
         param5[6].addChild(param5[20]);
         param5[6].addChild(param5[18]);
         param5[6].addChild(param5[21]);
         param5[6].addChild(param5[7]);
         param5[23].updateParent(param1);
      }
   }
}
