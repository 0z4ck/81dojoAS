package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ImpasseStatusWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _ImpasseStatusWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImpasseStatusWindow.watcherSetupUtil = new _ImpasseStatusWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[10] = new PropertyWatcher("_white",{"propertyChange":true},[param4[6],param4[7],param4[8]],param2);
         param5[14] = new PropertyWatcher("pieces",{"propertyChange":true},[param4[7]],null);
         param5[11] = new PropertyWatcher("entered",{"propertyChange":true},[param4[6]],null);
         param5[15] = new PropertyWatcher("points",{"propertyChange":true},[param4[8]],null);
         param5[4] = new PropertyWatcher("_black",{"propertyChange":true},[param4[3],param4[4],param4[5]],param2);
         param5[8] = new PropertyWatcher("pieces",{"propertyChange":true},[param4[4]],null);
         param5[5] = new PropertyWatcher("entered",{"propertyChange":true},[param4[3]],null);
         param5[9] = new PropertyWatcher("points",{"propertyChange":true},[param4[5]],null);
         param5[0] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[9],param4[10]],null);
         param5[3] = new PropertyWatcher("points_impasse",{"propertyChange":true},[param4[2]],null);
         param5[16] = new PropertyWatcher("declare",{"propertyChange":true},[param4[9]],null);
         param5[1] = new PropertyWatcher("entered_impasse",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("pieces_impasse",{"propertyChange":true},[param4[1]],null);
         param5[17] = new PropertyWatcher("close",{"propertyChange":true},[param4[10]],null);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[14]);
         param5[10].addChild(param5[11]);
         param5[10].addChild(param5[15]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[8]);
         param5[4].addChild(param5[5]);
         param5[4].addChild(param5[9]);
         param5[0].updateParent(LanguageSelector);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[16]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[17]);
      }
   }
}
