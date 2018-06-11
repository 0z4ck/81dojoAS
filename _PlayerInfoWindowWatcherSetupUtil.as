package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _PlayerInfoWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _PlayerInfoWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PlayerInfoWindow.watcherSetupUtil = new _PlayerInfoWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[29] = new PropertyWatcher("hideMove",{"propertyChange":true},[param4[18]],param2);
         param5[32] = new PropertyWatcher("parentApplication",{"initialize":true},[param4[21]],param2);
         param5[33] = new PropertyWatcher("lan",null,[param4[21]],null);
         param5[34] = new PropertyWatcher("favorite",null,[param4[21]],null);
         param5[28] = new PropertyWatcher("showMove",{"propertyChange":true},[param4[17]],param2);
         param5[3] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[2],param4[3],param4[7],param4[9],param4[10],param4[11],param4[13],param4[14],param4[15],param4[19],param4[20],param4[22],param4[23],param4[24]],null);
         param5[36] = new PropertyWatcher("allow",{"propertyChange":true},[param4[23]],null);
         param5[9] = new PropertyWatcher("country",{"propertyChange":true},[param4[7]],null);
         param5[37] = new PropertyWatcher("set_rate",{"propertyChange":true},[param4[24]],null);
         param5[23] = new PropertyWatcher("streak",{"propertyChange":true},[param4[14]],null);
         param5[21] = new PropertyWatcher("total",{"propertyChange":true},[param4[13]],null);
         param5[25] = new PropertyWatcher("current",{"propertyChange":true},[param4[15]],null);
         param5[18] = new PropertyWatcher("loss_small",{"propertyChange":true},[param4[11]],null);
         param5[5] = new PropertyWatcher("status_tip_html5",{"propertyChange":true},[param4[3]],null);
         param5[12] = new PropertyWatcher("rate",{"propertyChange":true},[param4[9]],null);
         param5[16] = new PropertyWatcher("win_small",{"propertyChange":true},[param4[10]],null);
         param5[31] = new PropertyWatcher("challenge",{"propertyChange":true},[param4[20]],null);
         param5[35] = new PropertyWatcher("ignore",{"propertyChange":true},[param4[22]],null);
         param5[30] = new PropertyWatcher("detail",{"propertyChange":true},[param4[19]],null);
         param5[4] = new PropertyWatcher("status_tip_mobile",{"propertyChange":true},[param4[2]],null);
         param5[1] = new PropertyWatcher("_user",{"propertyChange":true},[param4[1],param4[4],param4[5],param4[6],param4[7],param4[8],param4[9],param4[10],param4[11],param4[12],param4[13],param4[14],param4[15]],param2);
         param5[15] = new PropertyWatcher("wins",null,[param4[10]],null);
         param5[10] = new PropertyWatcher("country",null,[param4[7]],null);
         param5[24] = new PropertyWatcher("streak_best",null,[param4[14]],null);
         param5[2] = new PropertyWatcher("avatar",null,[param4[1]],null);
         param5[26] = new PropertyWatcher("streak",null,[param4[15]],null);
         param5[8] = new PropertyWatcher("titleSubName",null,[param4[6]],null);
         param5[17] = new PropertyWatcher("losses",null,[param4[11]],null);
         param5[13] = new PropertyWatcher("rateStr",null,[param4[9]],null);
         param5[22] = new PropertyWatcher("total",null,[param4[13]],null);
         param5[7] = new PropertyWatcher("titleName",null,[param4[5]],null);
         param5[11] = new PropertyWatcher("flag_m",null,[param4[8]],null);
         param5[19] = new PropertyWatcher("percentage",null,[param4[12]],null);
         param5[6] = new PropertyWatcher("name",null,[param4[4]],null);
         param5[14] = new PropertyWatcher("rank",null,[param4[9]],null);
         param5[27] = new PropertyWatcher("pmText",{"propertyChange":true},[param4[16]],param2);
         param5[29].updateParent(param1);
         param5[32].updateParent(param1);
         param5[32].addChild(param5[33]);
         param5[33].addChild(param5[34]);
         param5[28].updateParent(param1);
         param5[3].updateParent(LanguageSelector);
         param5[3].addChild(param5[36]);
         param5[3].addChild(param5[9]);
         param5[3].addChild(param5[37]);
         param5[3].addChild(param5[23]);
         param5[3].addChild(param5[21]);
         param5[3].addChild(param5[25]);
         param5[3].addChild(param5[18]);
         param5[3].addChild(param5[5]);
         param5[3].addChild(param5[12]);
         param5[3].addChild(param5[16]);
         param5[3].addChild(param5[31]);
         param5[3].addChild(param5[35]);
         param5[3].addChild(param5[30]);
         param5[3].addChild(param5[4]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[15]);
         param5[1].addChild(param5[10]);
         param5[1].addChild(param5[24]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[26]);
         param5[1].addChild(param5[8]);
         param5[1].addChild(param5[17]);
         param5[1].addChild(param5[13]);
         param5[1].addChild(param5[22]);
         param5[1].addChild(param5[7]);
         param5[1].addChild(param5[11]);
         param5[1].addChild(param5[19]);
         param5[1].addChild(param5[6]);
         param5[1].addChild(param5[14]);
         param5[27].updateParent(param1);
      }
   }
}
