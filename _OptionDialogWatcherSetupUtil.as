package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _OptionDialogWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _OptionDialogWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OptionDialog.watcherSetupUtil = new _OptionDialogWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new StaticPropertyWatcher("lan",{"propertyChange":true},[param4[1],param4[3],param4[4],param4[6],param4[8],param4[10],param4[11],param4[15],param4[16],param4[17],param4[18],param4[20],param4[21],param4[22],param4[23],param4[24],param4[25],param4[26],param4[27],param4[28],param4[30],param4[32],param4[33],param4[34],param4[35],param4[39],param4[40],param4[41],param4[45],param4[46],param4[47],param4[49],param4[50],param4[51],param4[52],param4[53],param4[54],param4[55],param4[56],param4[57]],null);
         param5[29] = new PropertyWatcher("study_level",{"propertyChange":true},[param4[33]],null);
         param5[28] = new PropertyWatcher("study_fitness",{"propertyChange":true},[param4[32]],null);
         param5[49] = new PropertyWatcher("arrow",{"propertyChange":true},[param4[53]],null);
         param5[8] = new PropertyWatcher("blind_piece",{"propertyChange":true},[param4[11]],null);
         param5[18] = new PropertyWatcher("sound_chat",{"propertyChange":true},[param4[22]],null);
         param5[15] = new PropertyWatcher("sound",{"propertyChange":true},[param4[18]],null);
         param5[21] = new PropertyWatcher("sound_byoyomi",{"propertyChange":true},[param4[25]],null);
         param5[3] = new PropertyWatcher("board_size",{"propertyChange":true},[param4[3]],null);
         param5[2] = new PropertyWatcher("pieces",{"propertyChange":true},[param4[1]],null);
         param5[48] = new PropertyWatcher("pm_auto",{"propertyChange":true},[param4[52]],null);
         param5[16] = new PropertyWatcher("sound_button",{"propertyChange":true},[param4[20]],null);
         param5[42] = new PropertyWatcher("notation",{"propertyChange":true},[param4[45]],null);
         param5[17] = new PropertyWatcher("sound_end",{"propertyChange":true},[param4[21]],null);
         param5[31] = new PropertyWatcher("study_level_tip",{"propertyChange":true},[param4[34]],null);
         param5[32] = new PropertyWatcher("not_defined",{"propertyChange":true},[param4[35],param4[41]],null);
         param5[27] = new PropertyWatcher("communication",{"propertyChange":true},[param4[30]],null);
         param5[22] = new PropertyWatcher("byoyomi_chime",{"propertyChange":true},[param4[26]],null);
         param5[38] = new PropertyWatcher("english_level_tip",{"propertyChange":true},[param4[40]],null);
         param5[53] = new PropertyWatcher("others",{"propertyChange":true},[param4[57]],null);
         param5[4] = new PropertyWatcher("board_size_tip",{"propertyChange":true},[param4[4],param4[6],param4[8],param4[10]],null);
         param5[20] = new PropertyWatcher("game_room",{"propertyChange":true},[param4[24]],null);
         param5[43] = new PropertyWatcher("notation_jp",{"propertyChange":true},[param4[46]],null);
         param5[12] = new PropertyWatcher("op_blind_notify",{"propertyChange":true},[param4[15]],null);
         param5[52] = new PropertyWatcher("past_games",{"propertyChange":true},[param4[56]],null);
         param5[51] = new PropertyWatcher("arrow_color",{"propertyChange":true},[param4[55]],null);
         param5[14] = new PropertyWatcher("op_highlight",{"propertyChange":true},[param4[17]],null);
         param5[44] = new PropertyWatcher("notation_west",{"propertyChange":true},[param4[47],param4[50]],null);
         param5[36] = new PropertyWatcher("english_level",{"propertyChange":true},[param4[39]],null);
         param5[19] = new PropertyWatcher("lobby",{"propertyChange":true},[param4[23]],null);
         param5[50] = new PropertyWatcher("arrow_accept",{"propertyChange":true},[param4[54]],null);
         param5[13] = new PropertyWatcher("op_grab",{"propertyChange":true},[param4[16]],null);
         param5[46] = new PropertyWatcher("notation_kk",{"propertyChange":true},[param4[49]],null);
         param5[47] = new PropertyWatcher("pm",{"propertyChange":true},[param4[51]],null);
         param5[23] = new PropertyWatcher("byoyomi_jp",{"propertyChange":true},[param4[27],param4[28]],null);
         param5[1].updateParent(LanguageSelector);
         param5[1].addChild(param5[29]);
         param5[1].addChild(param5[28]);
         param5[1].addChild(param5[49]);
         param5[1].addChild(param5[8]);
         param5[1].addChild(param5[18]);
         param5[1].addChild(param5[15]);
         param5[1].addChild(param5[21]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[48]);
         param5[1].addChild(param5[16]);
         param5[1].addChild(param5[42]);
         param5[1].addChild(param5[17]);
         param5[1].addChild(param5[31]);
         param5[1].addChild(param5[32]);
         param5[1].addChild(param5[27]);
         param5[1].addChild(param5[22]);
         param5[1].addChild(param5[38]);
         param5[1].addChild(param5[53]);
         param5[1].addChild(param5[4]);
         param5[1].addChild(param5[20]);
         param5[1].addChild(param5[43]);
         param5[1].addChild(param5[12]);
         param5[1].addChild(param5[52]);
         param5[1].addChild(param5[51]);
         param5[1].addChild(param5[14]);
         param5[1].addChild(param5[44]);
         param5[1].addChild(param5[36]);
         param5[1].addChild(param5[19]);
         param5[1].addChild(param5[50]);
         param5[1].addChild(param5[13]);
         param5[1].addChild(param5[46]);
         param5[1].addChild(param5[47]);
         param5[1].addChild(param5[23]);
      }
   }
}
