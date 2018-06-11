package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _NewGameFormWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _NewGameFormWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NewGameForm.watcherSetupUtil = new _NewGameFormWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[39] = new PropertyWatcher("tournaments",{"propertyChange":true},[param4[52]],param2);
         param5[48] = new PropertyWatcher("_mileForFix",{"propertyChange":true},[param4[59],param4[61]],param2);
         param5[0] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7],param4[8],param4[9],param4[10],param4[11],param4[12],param4[13],param4[14],param4[15],param4[16],param4[17],param4[18],param4[19],param4[20],param4[22],param4[24],param4[25],param4[26],param4[29],param4[31],param4[33],param4[35],param4[36],param4[37],param4[38],param4[39],param4[40],param4[43],param4[44],param4[45],param4[46],param4[47],param4[48],param4[49],param4[51],param4[53],param4[55],param4[56],param4[62],param4[65]],null);
         param5[31] = new PropertyWatcher("hc_56",{"propertyChange":true},[param4[44]],null);
         param5[57] = new PropertyWatcher("wait",{"propertyChange":true},[param4[65]],null);
         param5[36] = new PropertyWatcher("hc_33",{"propertyChange":true},[param4[49]],null);
         param5[35] = new PropertyWatcher("hc_kyoto",{"propertyChange":true},[param4[48]],null);
         param5[7] = new PropertyWatcher("hc_lance",{"propertyChange":true},[param4[20]],null);
         param5[9] = new PropertyWatcher("hc_bishop",{"propertyChange":true},[param4[22]],null);
         param5[38] = new PropertyWatcher("tournament",{"propertyChange":true},[param4[51]],null);
         param5[32] = new PropertyWatcher("hc_zoo",{"propertyChange":true},[param4[45]],null);
         param5[2] = new PropertyWatcher("sec",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4],param4[14],param4[15],param4[16],param4[17]],null);
         param5[40] = new PropertyWatcher("study_room",{"propertyChange":true},[param4[53]],null);
         param5[1] = new PropertyWatcher("min",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4],param4[6],param4[7],param4[8],param4[9],param4[10],param4[11],param4[12],param4[13]],null);
         param5[33] = new PropertyWatcher("hc_judkins",{"propertyChange":true},[param4[46]],null);
         param5[18] = new PropertyWatcher("hc_6p",{"propertyChange":true},[param4[31]],null);
         param5[20] = new PropertyWatcher("hc_8p",{"propertyChange":true},[param4[33]],null);
         param5[6] = new PropertyWatcher("hc_fixed",{"propertyChange":true},[param4[19]],null);
         param5[22] = new PropertyWatcher("hc_tombonl",{"propertyChange":true},[param4[35]],null);
         param5[23] = new PropertyWatcher("hc_tombol",{"propertyChange":true},[param4[36]],null);
         param5[44] = new PropertyWatcher("for_premium",{"propertyChange":true},[param4[56]],null);
         param5[13] = new PropertyWatcher("hc_2p",{"propertyChange":true},[param4[26]],null);
         param5[16] = new PropertyWatcher("hc_4p",{"propertyChange":true},[param4[29]],null);
         param5[27] = new PropertyWatcher("hc_naked",{"propertyChange":true},[param4[40]],null);
         param5[4] = new PropertyWatcher("nonrated",{"propertyChange":true},[param4[5]],null);
         param5[26] = new PropertyWatcher("hc_3pawns",{"propertyChange":true},[param4[39]],null);
         param5[24] = new PropertyWatcher("hc_tombo",{"propertyChange":true},[param4[37]],null);
         param5[30] = new PropertyWatcher("hc_openair",{"propertyChange":true},[param4[43]],null);
         param5[3] = new PropertyWatcher("rated",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4]],null);
         param5[11] = new PropertyWatcher("hc_rook",{"propertyChange":true},[param4[24]],null);
         param5[25] = new PropertyWatcher("hc_10p",{"propertyChange":true},[param4[38]],null);
         param5[43] = new PropertyWatcher("comment",{"propertyChange":true},[param4[55]],null);
         param5[5] = new PropertyWatcher("hc_even",{"propertyChange":true},[param4[18]],null);
         param5[12] = new PropertyWatcher("hc_rooklance",{"propertyChange":true},[param4[25]],null);
         param5[34] = new PropertyWatcher("hc_mini",{"propertyChange":true},[param4[47]],null);
         param5[53] = new PropertyWatcher("private_room",{"propertyChange":true},[param4[62]],null);
         param5[41] = new PropertyWatcher("nonrated_handicap",{"propertyChange":true},[param4[54]],param2);
         param5[42] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param4[54]],null);
         param5[54] = new PropertyWatcher("privateRoomCheckBox",{"propertyChange":true},[param4[63],param4[64]],param2);
         param5[55] = new PropertyWatcher("selected",{
            "valueCommit":true,
            "click":true
         },[param4[63],param4[64]],null);
         param5[39].updateParent(param1);
         param5[48].updateParent(param1);
         param5[0].updateParent(LanguageSelector);
         param5[0].addChild(param5[31]);
         param5[0].addChild(param5[57]);
         param5[0].addChild(param5[36]);
         param5[0].addChild(param5[35]);
         param5[0].addChild(param5[7]);
         param5[0].addChild(param5[9]);
         param5[0].addChild(param5[38]);
         param5[0].addChild(param5[32]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[40]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[33]);
         param5[0].addChild(param5[18]);
         param5[0].addChild(param5[20]);
         param5[0].addChild(param5[6]);
         param5[0].addChild(param5[22]);
         param5[0].addChild(param5[23]);
         param5[0].addChild(param5[44]);
         param5[0].addChild(param5[13]);
         param5[0].addChild(param5[16]);
         param5[0].addChild(param5[27]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[26]);
         param5[0].addChild(param5[24]);
         param5[0].addChild(param5[30]);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[11]);
         param5[0].addChild(param5[25]);
         param5[0].addChild(param5[43]);
         param5[0].addChild(param5[5]);
         param5[0].addChild(param5[12]);
         param5[0].addChild(param5[34]);
         param5[0].addChild(param5[53]);
         param5[41].updateParent(param1);
         param5[41].addChild(param5[42]);
         param5[54].updateParent(param1);
         param5[54].addChild(param5[55]);
      }
   }
}
