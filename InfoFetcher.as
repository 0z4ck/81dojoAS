package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.sendToURL;
   import mx.containers.Canvas;
   import spark.components.Image;
   
   public final class InfoFetcher extends EventDispatcher
   {
      
      public static var titleUser:Array;
      
      public static var titleName:Array;
      
      public static var titleSubName:Array;
      
      public static var titleAvatar:Array;
      
      public static var avatarHolders:Array;
      
      public static var specialRoomPass:Array;
      
      public static var socketNeedsHandshake:Boolean = false;
      
      public static const rank_names:Array = new Array("プロ","七段","六段","五段","四段","三段","二段","初段","1級","2級","3級","4級","5級","6級","7級","8級","9級","10級","11級","12級","13級","14級","15級");
      
      public static const rank_names_en:Array = new Array("PRO","7-Dan","6-Dan","5-Dan","4-Dan","3-Dan","2-Dan","1-Dan","1-kyu","2-kyu","3-kyu","4-kyu","5-kyu","6-kyu","7-kyu","8-kyu","9-kyu","10-kyu","11-kyu","12-kyu","13-kyu","14-kyu","15-kyu");
      
      public static const rank_thresholds:Array = new Array(3500,2300,2150,2000,1875,1750,1625,1500,1425,1350,1300,1250,1200,1150,1100,1050,1000,900,800,700,600,500,0);
      
      public static const rank_thresholds34:Array = new Array(15000,10000,7000,5000,3000,2000,1000,500,200,100,50,20,5,0);
      
      public static const rank_names34:Array = new Array("GOD","KING","MINISTER","SENATOR","SAGE","MASTER","PROFESSOR","DOCTOR","TEACHER","STUDENT","KID","INFANT","BABY","EGG");
      
      public static var country_codes:Array;
      
      public static var country_names:Array;
      
      public static var country_names_en:Array;
      
      public static var country_names3:Array;
      
      public static var country_list_names:Array;
      
      public static var country_list_names_en:Array;
      
      public static var country_maps:Array;
      
      public static var system_tournaments:Array;
      
      public static var tournament_codes:Array = new Array("81","CO","AS","SN","SS","RZ","DM","RL","PM","PR","PI","PO","PS","PK","PZ","PT","PN","PA","PJ","JM","JZ","JI","JO","JF","JV","FG");
      
      public static var tournament_name_en:Array = new Array("81Ou","CosmOu","Aeon Saint","Supernova","Shooting Star","Renza","Dark Matter","Relay Shogi","Meijin","Ryu-ou","Ou-i","Oushou","Kisei","Kiou","Ouza","Masters Tournament","Rookies Tournament","Asahi Cup","JT Series","Women Meijin","Women Ouza","Woman Ou-i","Women Oushou","Kurashiki Azalea","MyNavi Women Open","Excellent game replay");
      
      public static var tournament_name_jp:Array = new Array("八一王戦","宇宙王戦","永聖戦","新星戦","流星戦","連座戦","冥将戦","リレー","名人戦","竜王戦","王位戦","王将戦","棋聖戦","棋王戦","王座戦","達人戦","新人王戦","朝日杯","JT杯","女流名人","女流王座","女流王位","女流王将","倉敷藤花","マイナビ","好局再現");
      
      public static const pie_chart_order:Array = new Array("opposition_static","yagura","bishop_exchange","side_pawn","double_wing","unknown","double_ranging","opposing_rook","3rd_file_rook","4th_file_rook","central_rook");
      
      public static const radar_chart_order:Array = new Array("opposition_static","yagura_and_bishop","side_and_wing","unknown","double_ranging","opposition_ranging");
      
      public static const adminsLv1:Array = new Array("kota","hidetchi","test1","test2","test3","admin");
      
      public static const adminsLv2:Array = new Array("berni314","tkaneko","test4");
      
      public static const calendar_days_jp:Array = new Array("日","月","火","水","木","金","土");
      
      public static const calendar_days_en:Array = new Array("Su","Mo","Tu","We","Th","Fr","Sa");
      
      public static const calendar_months_jp:Array = new Array("１月　　/","２月　　/","３月　　/","４月　　/","５月　　/","６月　　/","７月　　/","８月　　/","９月　　/","１０月　　/","１１月　　/","１２月　　/");
      
      public static const calendar_months_en:Array = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
      
      public static const handicaps_ja:Object = {
         "r":"平手",
         "nr":"平手",
         "hcfixed":"定先",
         "hclance":"香落ち",
         "hcbishop":"角落ち",
         "hcrook":"飛車落ち",
         "hcrooklance":"飛香落ち",
         "hcrooksilver":"飛銀落ち",
         "hc2p":"二枚落ち",
         "hc4p":"四枚落ち",
         "hc6p":"六枚落ち",
         "hc8p":"八枚落ち",
         "hctombonl":"トンボ＋桂香",
         "hctombol":"トンボ＋香",
         "hctombo":"トンボ",
         "hc10p":"十枚落ち",
         "hcfu3":"歩三兵",
         "hcnaked":"裸玉",
         "vaoa":"青空将棋",
         "vamini":"五々将棋",
         "va5656":"ゴロゴロ将棋",
         "vajudkins":"ジャドケンス将棋",
         "vakyoto":"京都将棋",
         "vazoo":"どうぶつしょうぎ",
         "va33":"９マス将棋",
         "hcpawnrd":"右端歩得",
         "hcpawnld":"左端歩得",
         "hcpawn2d":"両端歩得",
         "hclanced":"香得",
         "hcbishopd":"角得",
         "hcrookd":"飛車得",
         "hcrooklanced":"飛香得",
         "hc2pd":"二枚得",
         "hc4pd":"四枚得",
         "hc6pd":"六枚得",
         "hc8pd":"八枚得"
      };
      
      public static const handicaps_en:Object = {
         "r":"Even Game",
         "nr":"Even Game",
         "hcfixed":"Fixed-black",
         "hclance":"Lance Down",
         "hcbishop":"Bishop Down",
         "hcrook":"Rook Down",
         "hcrooklance":"Rook-Lance Down",
         "hcrooksilver":"Rook-Silver Down",
         "hc2p":"2-piece Down",
         "hc4p":"4-piece Down",
         "hc6p":"6-piece Down",
         "hc8p":"8-piece Down",
         "hctombonl":"Dragonfly & Knight-Lance",
         "hctombol":"Dragonfly & Lance",
         "hctombo":"Dragonfly",
         "hc10p":"10-piece Down",
         "hcfu3":"Three Pawns",
         "hcnaked":"Naked King",
         "vaoa":"Open-air Shogi",
         "vamini":"Mini Shogi",
         "va5656":"Goro-Goro Shogi",
         "vajudkins":"Judkins Shogi",
         "vakyoto":"Kyoto Shogi",
         "vazoo":"Dobutsu Shogi",
         "va33":"9-square Shogi",
         "hcpawnrd":"Right Pawn Gained",
         "hcpawnld":"Left Pawn Gained",
         "hcpawn2d":"Both Pawns Gained",
         "hclanced":"Lance Gained",
         "hcbishopd":"Bishop Gained",
         "hcrookd":"Rook Gained",
         "hcrooklanced":"Rook-Lance Gained",
         "hc2pd":"2-piece Gained",
         "hc4pd":"4-piece Gained",
         "hc6pd":"6-piece Gained",
         "hc8pd":"8-piece Gained"
      };
      
      public static const handicaps_en_short:Object = {
         "r":"-",
         "nr":"-",
         "hcfixed":"Fixed-black",
         "hclance":"Lance Down",
         "hcbishop":"Bishop Down",
         "hcrook":"Rook Down",
         "hcrooklance":"1.5p Down",
         "hcrooksilver":"1.75p Down",
         "hc2p":"2p Down",
         "hc4p":"4p Down",
         "hc6p":"6p Down",
         "hc8p":"8p Down",
         "hctombonl":"Dragonfly+NL",
         "hctombol":"Dragonfly+L",
         "hctombo":"Dragonfly",
         "hc10p":"10p Down",
         "hcfu3":"Three Pawns",
         "hcnaked":"Naked King",
         "vaoa":"Open-air",
         "vamini":"Mini Shogi",
         "va5656":"Goro-Goro",
         "vajudkins":"Judkins",
         "vakyoto":"Kyoto Shogi",
         "vazoo":"Dobutsu",
         "va33":"9-square",
         "hcpawnrd":"R-Pawn Gained",
         "hcpawnld":"L-Pawn Gained",
         "hcpawn2d":"2-Pawns Gained",
         "hclanced":"Lance Gained",
         "hcbishopd":"Bishop Gained",
         "hcrookd":"Rook Gained",
         "hcrooklanced":"1.5p Gained",
         "hc2pd":"2p Gained",
         "hc4pd":"4p Gained",
         "hc6pd":"6p Gained",
         "hc8pd":"8p Gained"
      };
      
      public static var broadcasterLv1:Array;
      
      public static var broadcasterLv2:Array;
      
      public static var eventPlayers:Array;
      
      public static var clock_differences:Array;
      
      private static var gold_medal:Class = InfoFetcher_gold_medal;
      
      private static var silver_medal:Class = InfoFetcher_silver_medal;
      
      private static var bronze_medal:Class = InfoFetcher_bronze_medal;
      
      public static const horizontalTextBars:Array = new Array("　","▏","▎","▍","▌","▋","▊","▉","█");
      
      public static const verticalTextBars:Array = new Array("　","▁","▂","▃","▄","▅","▆","▇","█");
      
      public static var total_logins:int = 0;
      
      public static var total_games:int = 0;
      
      public static var wins_static:int = 0;
      
      public static var wins_swinging:int = 0;
      
      private static var CountryText:Class = InfoFetcher_CountryText;
       
      
      private var _urlLoader:URLLoader;
      
      private var _urlLoaderCode:URLLoader;
      
      private var _urlLoaderLogins:URLLoader;
      
      private var _urlLoaderStaticSwinging:URLLoader;
      
      private const SOURCE:String = "https://81dojo.com/dojo/";
      
      public var newestVer:String;
      
      public var nochat:Array;
      
      public var banned:Array;
      
      public var initMessage:String = "";
      
      public var initMessageJp:String = "";
      
      public var gameMessage:String = "";
      
      public var gameMessageJp:String = "";
      
      public var serverMaintenanceTime:Date;
      
      private var _urlRequest:URLRequest;
      
      private var _login_name:String;
      
      public function InfoFetcher()
      {
         this._urlLoader = new URLLoader();
         this._urlLoaderCode = new URLLoader();
         this._urlLoaderLogins = new URLLoader();
         this._urlLoaderStaticSwinging = new URLLoader();
         this._urlRequest = new URLRequest();
         super();
         this._urlLoader.addEventListener(Event.COMPLETE,this._parseInfo);
         this._urlRequest.url = this.SOURCE + "users/write.php";
         this._urlRequest.method = URLRequestMethod.GET;
         this._urlLoaderCode.addEventListener(Event.COMPLETE,this._codeReceived);
         this._urlLoaderLogins.addEventListener(Event.COMPLETE,this._readData);
         this._urlLoaderStaticSwinging.addEventListener(Event.COMPLETE,this._readData);
         this.refresh();
      }
      
      public static function makeRankFromRating(param1:int) : String
      {
         var _loc2_:int = 0;
         while(_loc2_ < rank_thresholds.length)
         {
            if(param1 >= rank_thresholds[_loc2_])
            {
               return !!LanguageSelector.isJapanese()?rank_names[_loc2_]:rank_names_en[_loc2_];
            }
            _loc2_++;
         }
         return "";
      }
      
      public static function makeRank34FromExp(param1:int) : String
      {
         var _loc2_:int = 0;
         while(_loc2_ < rank_thresholds34.length)
         {
            if(param1 >= rank_thresholds34[_loc2_])
            {
               return rank_names34[_loc2_];
            }
            _loc2_++;
         }
         return "";
      }
      
      public static function makeColorFromRating(param1:int) : uint
      {
         if(param1 >= rank_thresholds[1])
         {
            return 0;
         }
         if(param1 >= rank_thresholds[3])
         {
            return 16711680;
         }
         if(param1 >= rank_thresholds[5])
         {
            return 15632384;
         }
         if(param1 >= rank_thresholds[7])
         {
            return 37632;
         }
         if(param1 >= rank_thresholds[10])
         {
            return 1140479;
         }
         if(param1 >= rank_thresholds[13])
         {
            return 11163135;
         }
         return 7829367;
      }
      
      public static function makeColorFromRating34(param1:int) : uint
      {
         if(param1 >= rank_thresholds34[1])
         {
            return 0;
         }
         if(param1 >= rank_thresholds34[3])
         {
            return 16711680;
         }
         if(param1 >= rank_thresholds34[5])
         {
            return 15632384;
         }
         if(param1 >= rank_thresholds34[7])
         {
            return 37632;
         }
         if(param1 >= rank_thresholds34[10])
         {
            return 1140479;
         }
         if(param1 >= rank_thresholds34[13])
         {
            return 11163135;
         }
         return 7829367;
      }
      
      public static function beforeUpgrade(param1:int) : Boolean
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 20)
         {
            if(rank_thresholds[_loc2_] - 1 == param1)
            {
               return true;
            }
            if(rank_thresholds[_loc2_] < param1)
            {
               return false;
            }
            _loc2_++;
         }
         return false;
      }
      
      public static function beforeDowngrade(param1:int) : Boolean
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 20)
         {
            if(rank_thresholds[_loc2_] < param1)
            {
               return false;
            }
            if(rank_thresholds[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public static function gameType(param1:String) : String
      {
         var _loc2_:* = handicaps_ja[param1];
         if(_loc2_ == null)
         {
            _loc2_ = "特殊手合";
         }
         if(param1 == "r")
         {
            _loc2_ = _loc2_ + " (レート対局)";
         }
         else
         {
            _loc2_ = _loc2_ + " (非レート対局)";
         }
         return _loc2_;
      }
      
      public static function gameTypeShort(param1:String) : String
      {
         var _loc2_:String = null;
         if(param1 == "r" || param1 == "nr")
         {
            return "-";
         }
         _loc2_ = handicaps_ja[param1];
         if(_loc2_ == null)
         {
            _loc2_ = "特殊手合";
         }
         return _loc2_;
      }
      
      public static function gameTypeEn(param1:String) : String
      {
         var _loc2_:* = handicaps_en[param1];
         if(_loc2_ == null)
         {
            _loc2_ = "Special Rule";
         }
         if(param1 == "r")
         {
            _loc2_ = _loc2_ + " (Rated)";
         }
         else
         {
            _loc2_ = _loc2_ + " (Non-rated)";
         }
         return _loc2_;
      }
      
      public static function gameTypeShortEn(param1:String) : String
      {
         var _loc2_:String = handicaps_en_short[param1];
         if(_loc2_ == null)
         {
            _loc2_ = "Special";
         }
         return _loc2_;
      }
      
      public static function gameTypeJp(param1:String) : String
      {
         switch(param1)
         {
            case "hcrooklance":
               return "一丁半";
            case "hctombonl":
               return "トンボ桂";
            case "hctombol":
               return "トンボ香";
            case "va5656":
               return "ゴロゴロ";
            case "vajudkins":
               return "六々将棋";
            case "vazoo":
               return "どうぶつ";
            case "va33":
               return "９マス";
            default:
               return gameTypeShort(param1);
         }
      }
      
      public static function getSystemTournamentNameShort(param1:int) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in system_tournaments)
         {
            if(parseInt(_loc3_.id) == param1)
            {
               _loc2_ = LanguageSelector.EJ(_loc3_.name_en_short,_loc3_.name_ja_short);
               break;
            }
         }
         return _loc2_ == ""?LanguageSelector.EJ("Tourney","大会"):_loc2_;
      }
      
      public static function getSystemTournamentName(param1:int) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in system_tournaments)
         {
            if(parseInt(_loc2_.id) == param1)
            {
               return LanguageSelector.EJ(_loc2_.name_en && _loc2_.name_en != ""?_loc2_.name_en:_loc2_.name_ja,_loc2_.name_ja && _loc2_.name_ja != ""?_loc2_.name_ja:_loc2_.name_en);
            }
         }
         return "";
      }
      
      public static function systemTournamentJoined(param1:int) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in system_tournaments)
         {
            if(parseInt(_loc2_.id) == param1)
            {
               return _loc2_.joined;
            }
         }
         return false;
      }
      
      public static function gameTypeKIF(param1:String) : String
      {
         var _loc2_:* = "手合割：";
         switch(param1)
         {
            case "r":
            case "nr":
            case "hcfixed":
               _loc2_ = _loc2_ + "平手";
               break;
            case "hclance":
               _loc2_ = _loc2_ + "香落ち";
               break;
            case "hcbishop":
               _loc2_ = _loc2_ + "角落ち";
               break;
            case "hcrook":
               _loc2_ = _loc2_ + "飛車落ち";
               break;
            case "hcrooklance":
               _loc2_ = _loc2_ + "飛香落ち";
               break;
            case "hcrooksilver":
               _loc2_ = _loc2_ + "その他\r\n";
               _loc2_ = _loc2_ + "上手の持駒：なし\r\n";
               _loc2_ = _loc2_ + "９ ８ ７ ６ ５ ４ ３ ２ １\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "|v香v桂v銀v金v玉v金 ・v桂v香|一\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・v角 ・|二\r\n";
               _loc2_ = _loc2_ + "|v歩v歩v歩v歩v歩v歩v歩v歩v歩|三\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|四\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|五\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|六\r\n";
               _loc2_ = _loc2_ + "| 歩 歩 歩 歩 歩 歩 歩 歩 歩|七\r\n";
               _loc2_ = _loc2_ + "| ・ 角 ・ ・ ・ ・ ・ 飛 ・|八\r\n";
               _loc2_ = _loc2_ + "| 香 桂 銀 金 玉 金 銀 桂 香|九\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "上手番";
               break;
            case "hc2p":
               _loc2_ = _loc2_ + "二枚落ち";
               break;
            case "hc4p":
               _loc2_ = _loc2_ + "四枚落ち";
               break;
            case "hc6p":
               _loc2_ = _loc2_ + "六枚落ち";
               break;
            case "hc8p":
               _loc2_ = _loc2_ + "八枚落ち";
               break;
            case "hctombo":
               _loc2_ = _loc2_ + "その他\r\n";
               _loc2_ = _loc2_ + "上手の持駒：なし\r\n";
               _loc2_ = _loc2_ + "９ ８ ７ ６ ５ ４ ３ ２ １\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・v玉 ・ ・ ・ ・|一\r\n";
               _loc2_ = _loc2_ + "| ・v飛 ・ ・ ・ ・ ・v角 ・|二\r\n";
               _loc2_ = _loc2_ + "|v歩v歩v歩v歩v歩v歩v歩v歩v歩|三\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|四\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|五\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|六\r\n";
               _loc2_ = _loc2_ + "| 歩 歩 歩 歩 歩 歩 歩 歩 歩|七\r\n";
               _loc2_ = _loc2_ + "| ・ 角 ・ ・ ・ ・ ・ 飛 ・|八\r\n";
               _loc2_ = _loc2_ + "| 香 桂 銀 金 玉 金 銀 桂 香|九\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "上手番";
               break;
            case "hc10p":
               _loc2_ = _loc2_ + "十枚落ち";
               break;
            case "hcfu3":
               _loc2_ = _loc2_ + "その他\r\n";
               _loc2_ = _loc2_ + "上手の持駒：歩三\r\n";
               _loc2_ = _loc2_ + "９ ８ ７ ６ ５ ４ ３ ２ １\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・v玉 ・ ・ ・ ・|一\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|二\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|三\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|四\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|五\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|六\r\n";
               _loc2_ = _loc2_ + "| 歩 歩 歩 歩 歩 歩 歩 歩 歩|七\r\n";
               _loc2_ = _loc2_ + "| ・ 角 ・ ・ ・ ・ ・ 飛 ・|八\r\n";
               _loc2_ = _loc2_ + "| 香 桂 銀 金 玉 金 銀 桂 香|九\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "上手番";
               break;
            case "hcnaked":
               _loc2_ = _loc2_ + "その他\r\n";
               _loc2_ = _loc2_ + "上手の持駒：なし\r\n";
               _loc2_ = _loc2_ + "９ ８ ７ ６ ５ ４ ３ ２ １\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・v玉 ・ ・ ・ ・|一\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|二\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|三\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|四\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|五\r\n";
               _loc2_ = _loc2_ + "| ・ ・ ・ ・ ・ ・ ・ ・ ・|六\r\n";
               _loc2_ = _loc2_ + "| 歩 歩 歩 歩 歩 歩 歩 歩 歩|七\r\n";
               _loc2_ = _loc2_ + "| ・ 角 ・ ・ ・ ・ ・ 飛 ・|八\r\n";
               _loc2_ = _loc2_ + "| 香 桂 銀 金 玉 金 銀 桂 香|九\r\n";
               _loc2_ = _loc2_ + "+---------------------------+\r\n";
               _loc2_ = _loc2_ + "上手番";
         }
         return _loc2_;
      }
      
      public static function openingNameJp(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc4_:String = null;
         var _loc3_:String = "☗";
         if(_loc2_ = param1.match(/opposition_(black|white)(\d)/))
         {
            if(_loc2_[1] == "white")
            {
               _loc3_ = "☖";
            }
            switch(parseInt(_loc2_[2]))
            {
               case 2:
                  _loc4_ = "向";
                  break;
               case 3:
                  _loc4_ = "三";
                  break;
               case 4:
                  _loc4_ = "四";
                  break;
               case 5:
                  _loc4_ = "中";
                  break;
               default:
                  return "";
            }
            return "対抗" + _loc3_ + _loc4_;
         }
         switch(param1)
         {
            case "*":
               return "";
            case "unknown":
               return "力戦";
            case "side_pawn":
               return "横歩取り";
            case "double_wing":
               return "相掛かり";
            case "bishop_exchange":
               return "角換り";
            case "yagura":
               return "矢倉";
            case "double_ranging":
               return "相振り";
            case "opposition_static":
               return "居飛車 対抗";
            case "central_rook":
               return "中飛車";
            case "4th_file_rook":
               return "四間飛車";
            case "3rd_file_rook":
               return "三間飛車";
            case "opposing_rook":
               return "向かい飛車";
            default:
               return "";
         }
      }
      
      public static function openingNameJpTip(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc4_:String = null;
         var _loc3_:String = "☗";
         if(_loc2_ = param1.match(/opposition_(black|white)(\d)/))
         {
            if(_loc2_[1] == "white")
            {
               _loc3_ = "☖";
            }
            switch(parseInt(_loc2_[2]))
            {
               case 2:
                  _loc4_ = "向かい飛車";
                  break;
               case 3:
                  _loc4_ = "三間飛車";
                  break;
               case 4:
                  _loc4_ = "四間飛車";
                  break;
               case 5:
                  _loc4_ = "中飛車";
                  break;
               default:
                  return "";
            }
            return "対抗形 " + _loc3_ + _loc4_;
         }
         switch(param1)
         {
            case "*":
               return "";
            case "unknown":
               return "力戦";
            case "side_pawn":
               return "横歩取り";
            case "double_wing":
               return "相掛かり";
            case "bishop_exchange":
               return "角換り";
            case "yagura":
               return "矢倉";
            case "double_ranging":
               return "相振り飛車";
            default:
               return "";
         }
      }
      
      public static function openingNameEn(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc4_:String = null;
         var _loc3_:String = "Black\'s";
         if(_loc2_ = param1.match(/opposition_(black|white)(\d)/))
         {
            if(_loc2_[1] == "white")
            {
               _loc3_ = "White\'s";
            }
            switch(parseInt(_loc2_[2]))
            {
               case 2:
                  _loc4_ = "Opposing";
                  break;
               case 3:
                  _loc4_ = "3rd-file";
                  break;
               case 4:
                  _loc4_ = "4th-file";
                  break;
               case 5:
                  _loc4_ = "Central";
                  break;
               default:
                  return "";
            }
            return "Opposition, " + _loc3_ + " " + _loc4_ + " Rook";
         }
         switch(param1)
         {
            case "*":
               return "";
            case "unknown":
               return "Free-style";
            case "side_pawn":
               return "Side Pawn Picker";
            case "double_wing":
               return "Double Wing Attack";
            case "bishop_exchange":
               return "Bishop Exchange";
            case "yagura":
               return "Yagura";
            case "double_ranging":
               return "Double Swinging Rook";
            case "opposition_static":
               return "Static Rook, Opposition";
            case "central_rook":
               return "Central Rook";
            case "4th_file_rook":
               return "4th-file Rook";
            case "3rd_file_rook":
               return "3rd-file Rook";
            case "opposing_rook":
               return "Opposing Rook";
            default:
               return "";
         }
      }
      
      public static function infoOpeningColor(param1:String) : uint
      {
         switch(param1)
         {
            case "opposition_static":
               return 16711680;
            case "yagura":
               return 16737792;
            case "bishop_exchange":
               return 10027008;
            case "double_wing":
               return 16738047;
            case "side_pawn":
               return 10027212;
            case "unknown":
               return 16776960;
            case "double_ranging":
               return 6723891;
            case "opposing_rook":
               return 102;
            case "3rd_file_rook":
               return 65484;
            case "4th_file_rook":
               return 255;
            case "central_rook":
               return 3381708;
            default:
               return 0;
         }
      }
      
      public static function medalCanvas(param1:Object) : Canvas
      {
         var _loc4_:Image = null;
         var _loc2_:Canvas = new Canvas();
         _loc2_.x = 2;
         _loc2_.y = 96;
         var _loc3_:int = 1;
         if(param1.titleName != "" && !param1.titleName != "!!!")
         {
            _loc4_ = new Image();
            _loc4_.smooth = true;
            _loc4_.source = silver_medal;
            _loc4_.toolTip = LanguageSelector.EJ("Non-major Title Holder","サブタイトル保持者");
            _loc4_.x = 24 * (_loc3_ - 1);
            _loc3_ = _loc3_ + 1;
            if(["八一王","宇宙王","永聖","二冠"].indexOf(param1.titleName) >= 0)
            {
               _loc4_.source = gold_medal;
               _loc4_.toolTip = LanguageSelector.EJ("Major Title Holder","７大タイトル保持者");
            }
            else if(param1.titleName == "admin" || param1.titleName.match(/bot|AI/) || param1.rating > 2900)
            {
               _loc4_.source = bronze_medal;
               _loc4_.toolTip = LanguageSelector.EJ("admin status","オフィシャルアカウント");
            }
            _loc2_.addChild(_loc4_);
         }
         if(param1.total >= 30 && param1.rating >= rank_thresholds[7])
         {
            _loc4_ = new Image();
            _loc4_.smooth = true;
            _loc4_.source = bronze_medal;
            _loc4_.toolTip = LanguageSelector.EJ("Low-Dan Holder","有段者(低段)");
            _loc4_.x = 24 * (_loc3_ - 1);
            _loc3_ = _loc3_ + 1;
            if(param1.rating >= rank_thresholds[3])
            {
               _loc4_.source = gold_medal;
               _loc4_.toolTip = LanguageSelector.EJ("High-Dan Holder","有段者(高段)");
            }
            else if(param1.rating >= rank_thresholds[5])
            {
               _loc4_.source = silver_medal;
               _loc4_.toolTip = LanguageSelector.EJ("Mid-Dan Holder","有段者(中段)");
            }
            _loc2_.addChild(_loc4_);
         }
         if(param1.wins >= 200)
         {
            _loc4_ = new Image();
            _loc4_.smooth = true;
            _loc4_.source = bronze_medal;
            _loc4_.toolTip = LanguageSelector.EJ("200 wins","通算200勝");
            _loc4_.x = 24 * (_loc3_ - 1);
            _loc3_ = _loc3_ + 1;
            if(param1.wins >= 1000)
            {
               _loc4_.source = gold_medal;
               _loc4_.toolTip = LanguageSelector.EJ("1000 wins","通算1000勝");
            }
            else if(param1.wins >= 500)
            {
               _loc4_.source = silver_medal;
               _loc4_.toolTip = LanguageSelector.EJ("500 wins","通算500勝");
            }
            _loc2_.addChild(_loc4_);
         }
         if(param1.streak_best >= 5)
         {
            _loc4_ = new Image();
            _loc4_.smooth = true;
            _loc4_.source = bronze_medal;
            _loc4_.toolTip = LanguageSelector.EJ("5 winning streak","5連勝達成");
            _loc4_.x = 24 * (_loc3_ - 1);
            _loc3_ = _loc3_ + 1;
            if(param1.streak_best >= 15)
            {
               _loc4_.source = gold_medal;
               _loc4_.toolTip = LanguageSelector.EJ("15 winning streak","15連勝達成");
            }
            else if(param1.streak_best >= 10)
            {
               _loc4_.source = silver_medal;
               _loc4_.toolTip = LanguageSelector.EJ("10 winning streak","10連勝達成");
            }
            _loc2_.addChild(_loc4_);
         }
         if(param1.total >= 10 && param1.percentage >= 60)
         {
            _loc4_ = new Image();
            _loc4_.smooth = true;
            _loc4_.source = bronze_medal;
            _loc4_.toolTip = LanguageSelector.EJ("60% winning percentage","勝率60%以上");
            _loc4_.x = 24 * (_loc3_ - 1);
            _loc3_ = _loc3_ + 1;
            if(param1.percentage >= 80)
            {
               _loc4_.source = gold_medal;
               _loc4_.toolTip = LanguageSelector.EJ("80% winning percentage","勝率80%以上");
            }
            else if(param1.percentage >= 70)
            {
               _loc4_.source = silver_medal;
               _loc4_.toolTip = LanguageSelector.EJ("70% winning percentage","勝率70%以上");
            }
            _loc2_.addChild(_loc4_);
         }
         return _loc2_;
      }
      
      public static function ratingDif(param1:int, param2:int, param3:Number, param4:int) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(param4 > 0)
         {
            _loc5_ = param1;
            _loc6_ = param2;
         }
         else if(param4 < 0)
         {
            _loc5_ = param2;
            _loc6_ = param1;
         }
         else
         {
            return 0;
         }
         var _loc7_:Number = _loc5_ - _loc6_;
         return Math.round(param3 * Math.min(31,Math.max(1,32 * (0.5 - 0.0014217 * _loc7_ + 2.4336e-7 * _loc7_ * Math.abs(_loc7_) + 2.514e-9 * _loc7_ * _loc7_ * _loc7_ - 1.991e-12 * _loc7_ * _loc7_ * _loc7_ * Math.abs(_loc7_)))));
      }
      
      public static function textBar(param1:int) : String
      {
         var _loc2_:int = param1 / 10;
         if(_loc2_ > 8)
         {
            _loc2_ = 8;
         }
         return verticalTextBars[_loc2_];
      }
      
      public static function fetchTournamentEn(param1:String) : String
      {
         var _loc2_:int = 0;
         while(_loc2_ < tournament_codes.length)
         {
            if(tournament_codes[_loc2_] == param1)
            {
               return tournament_name_en[_loc2_];
            }
            _loc2_++;
         }
         return "";
      }
      
      public static function fetchTournamentJp(param1:String) : String
      {
         var _loc2_:int = 0;
         while(_loc2_ < tournament_codes.length)
         {
            if(tournament_codes[_loc2_] == param1)
            {
               return tournament_name_jp[_loc2_];
            }
            _loc2_++;
         }
         return "";
      }
      
      public static function isAdminLv1(param1:String) : Boolean
      {
         return adminsLv1.indexOf(param1.toLowerCase()) >= 0;
      }
      
      public static function isAdminLv2(param1:String) : Boolean
      {
         return adminsLv2.indexOf(param1.toLowerCase()) >= 0;
      }
      
      public static function isBroadcasterLv1(param1:String) : Boolean
      {
         return broadcasterLv1.indexOf(param1.toLowerCase()) >= 0;
      }
      
      public static function isBroadcasterLv2(param1:String) : Boolean
      {
         return broadcasterLv2.indexOf(param1.toLowerCase()) >= 0;
      }
      
      public static function registerKifuIS3(param1:int, param2:Object, param3:Object, param4:Array, param5:int) : void
      {
         var _loc7_:Object = null;
         var _loc8_:URLRequest = null;
         var _loc9_:URLVariables = null;
         var _loc10_:Date = null;
         var _loc11_:String = null;
         if(param4.length <= 40)
         {
            return;
         }
         if(param2.isProvisional)
         {
            return;
         }
         if(param3.isProvisional)
         {
            return;
         }
         if(param2.rating < InfoFetcher.rank_thresholds[4])
         {
            return;
         }
         if(param3.rating < InfoFetcher.rank_thresholds[4])
         {
            return;
         }
         if(param2.name.match(/^(gpsshogi|ponanza|com_.*)$/i))
         {
            return;
         }
         if(param3.name.match(/^(gpsshogi|ponanza|com_.*)$/i))
         {
            return;
         }
         if(param2.titleName.match(/bot$/i))
         {
            return;
         }
         if(param3.titleName.match(/bot$/i))
         {
            return;
         }
         var _loc6_:Array = [];
         for each(_loc7_ in param4)
         {
            _loc11_ = _loc7_.toCSA();
            if(_loc11_ != null)
            {
               _loc6_.push(_loc11_);
            }
         }
         _loc8_ = new URLRequest();
         _loc8_.url = "http://kyokumen.jp/api/kifu_post";
         _loc8_.method = URLRequestMethod.POST;
         _loc9_ = new URLVariables();
         _loc10_ = new Date();
         _loc9_.black_name = param2.name;
         _loc9_.white_name = param3.name;
         _loc9_.black_rate = param2.rating;
         _loc9_.white_rate = param3.rating;
         _loc9_.date = _loc10_.getFullYear() + "-" + _loc10_.getMonth() + "-" + _loc10_.getDate();
         _loc9_.handicap_id = 1;
         _loc9_.result = param5;
         _loc9_.native_kid = param1;
         _loc9_.csa = _loc6_.join("");
         _loc9_.game_source_pass = Config.ISCUBE_POST_PASS;
         _loc8_.data = _loc9_;
         sendToURL(_loc8_);
      }
      
      public function refresh() : void
      {
         this.initMessage = "";
         titleUser = [];
         titleAvatar = [];
         titleName = [];
         titleSubName = [];
         avatarHolders = [];
         specialRoomPass = [];
         country_codes = [];
         country_names = [];
         country_names_en = [];
         country_names3 = [];
         country_list_names = new Array("== 全体 ==");
         country_list_names_en = new Array("== ALL ==");
         country_maps = [];
         system_tournaments = [];
         this.nochat = [];
         this.banned = [];
         broadcasterLv1 = [];
         broadcasterLv2 = [];
         eventPlayers = [];
         clock_differences = [];
         var _loc1_:Date = new Date();
         this._urlLoaderCode.load(new URLRequest(this.SOURCE + "infoCode.txt?" + _loc1_.getTime().toString()));
         this._urlLoaderLogins.load(new URLRequest(this.SOURCE + "script/data/daily_count.txt?" + _loc1_.getTime().toString()));
         this._urlLoaderStaticSwinging.load(new URLRequest(this.SOURCE + "script/data/static_swinging.txt?" + _loc1_.getTime().toString()));
      }
      
      private function _codeReceived(param1:Event) : void
      {
         this._urlLoader.load(new URLRequest(this.SOURCE + "infoData.txt?" + param1.target.data));
      }
      
      private function _parseInfo(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:String = this._urlLoader.data;
         for each(_loc4_ in _loc2_.split("\n"))
         {
            if(_loc4_.match(/^###/))
            {
               _loc3_ = _loc4_.substr(3);
               continue;
            }
            switch(_loc3_)
            {
               case "NEWEST_VERSION":
                  this.newestVer = _loc4_;
                  continue;
               case "INITIAL_MESSAGE":
                  this.initMessage = this.initMessage + (_loc4_ + "\n");
                  continue;
               case "INITIAL_MESSAGE_JP":
                  this.initMessageJp = this.initMessageJp + (_loc4_ + "\n");
                  continue;
               case "GAME_MESSAGE":
                  this.gameMessage = this.gameMessage + (_loc4_ + "\n");
                  continue;
               case "GAME_MESSAGE_JP":
                  this.gameMessageJp = this.gameMessageJp + (_loc4_ + "\n");
                  continue;
               case "SPECIAL_ROOM_PASS":
                  specialRoomPass.push(_loc4_);
                  continue;
               case "NEED_HANDSHAKE":
                  if(parseInt(_loc4_) > 0)
                  {
                     socketNeedsHandshake = true;
                  }
                  continue;
               case "TITLE_HOLDERS":
                  titleUser.push(_loc4_.split("\t")[0]);
                  titleName.push(_loc4_.split("\t")[1]);
                  titleSubName.push(_loc4_.split("\t")[2]);
                  titleAvatar.push(_loc4_.split("\t")[3]);
                  continue;
               case "AVATAR_HOLDERS":
                  avatarHolders.push(_loc4_);
                  continue;
               case "NOCHAT":
                  this.nochat.push(_loc4_);
                  continue;
               case "BANNED":
                  this.banned.push(_loc4_);
                  continue;
               case "BROADCASTER_LV1":
                  broadcasterLv1.push(_loc4_);
                  continue;
               case "BROADCASTER_LV2":
                  broadcasterLv2.push(_loc4_);
                  continue;
               case "EVENT_PLAYER":
                  eventPlayers.push(_loc4_);
               case "MAINTENANCE":
                  if(_loc4_ != "*")
                  {
                     this.serverMaintenanceTime = new Date();
                     this.serverMaintenanceTime.setTime(Date.parse(_loc4_));
                  }
                  continue;
               case "CLOCK_DIFFERENCE":
                  for each(_loc6_ in _loc4_.split(","))
                  {
                     clock_differences.push(parseInt(_loc6_));
                  }
                  continue;
               default:
                  continue;
            }
         }
         _loc5_ = new CountryText();
         for each(_loc4_ in _loc5_.split("\r\n"))
         {
            country_codes.push(parseInt(_loc4_.split("\t")[0]));
            country_names[parseInt(_loc4_.split("\t")[0])] = _loc4_.split("\t")[4];
            country_names_en[parseInt(_loc4_.split("\t")[0])] = _loc4_.split("\t")[1];
            country_names3[parseInt(_loc4_.split("\t")[0])] = _loc4_.split("\t")[2];
            country_list_names.push(_loc4_.split("\t")[4]);
            country_list_names_en.push(_loc4_.split("\t")[1]);
            country_maps.push(_loc4_.split("\t")[3]);
         }
      }
      
      private function _readData(param1:Event) : void
      {
         if(param1.target == this._urlLoaderLogins)
         {
            total_logins = param1.target.data.split(",")[0];
            total_games = param1.target.data.split(",")[1];
         }
         else if(param1.target == this._urlLoaderStaticSwinging)
         {
            wins_static = param1.target.data.split(",")[0];
            wins_swinging = param1.target.data.split(",")[1];
         }
      }
   }
}
