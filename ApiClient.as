package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.Security;
   import mx.collections.ArrayCollection;
   import mx.controls.Alert;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.http.HTTPService;
   
   public final class ApiClient extends EventDispatcher
   {
      
      public static var KIFU_SEARCH:String = "kifu_search";
      
      public static var KIFU_DETAIL:String = "kifu_detail";
      
      public static var PLAYER_SEARCH:String = "player_search";
      
      public static var PLAYER_DETAIL:String = "player_detail";
      
      public static var RANKING_SEARCH:String = "ranking_search";
      
      public static var READ_SERVER:String = "read_server";
      
      public static var LOAD_HISTORY:String = "load_history";
      
      public static var LOAD_OPTIONS:String = "load_options";
      
      public static var NOT_FOUND:String = "not_found";
      
      public static var ADMIN_MONITOR:String = "admin_monitor";
      
      public static var FOLLOW:String = "follow";
      
      public static var GAME_CHECK:String = "game_check";
      
      public static var EVALUATED:String = "evaluated";
      
      public static var GET_EVALUATION:String = "get_evaluation";
      
      private static var _host:String = Config.RAILS_HOST;
      
      private static var _port:int = Config.RAILS_PORT;
       
      
      private var _isAdmin:Boolean = false;
      
      public var bufferData:ArrayCollection;
      
      public var kifuContents:String;
      
      public var bufferXML:XML;
      
      private var _kifuSearchService:HTTPService;
      
      private var _kifuDetailService:HTTPService;
      
      private var _playerSearchService:HTTPService;
      
      private var _playerDetailService:HTTPService;
      
      private var _rankingService:HTTPService;
      
      private var _readServerService:HTTPService;
      
      private var _loadHistoryService:HTTPService;
      
      private var _loadOptionsService:HTTPService;
      
      private var _writeOptionService:HTTPService;
      
      private var _loadTournamentService:HTTPService;
      
      private var _setPlayingStyleService:HTTPService;
      
      private var _followService:HTTPService;
      
      private var _tournamentGameCheckService:HTTPService;
      
      private var _evaluateService:HTTPService;
      
      private var _getEvaluationService:HTTPService;
      
      private var _incrementMedalService:HTTPService;
      
      public function ApiClient()
      {
         this._kifuSearchService = new HTTPService();
         this._kifuDetailService = new HTTPService();
         this._playerSearchService = new HTTPService();
         this._playerDetailService = new HTTPService();
         this._rankingService = new HTTPService();
         this._readServerService = new HTTPService();
         this._loadHistoryService = new HTTPService();
         this._loadOptionsService = new HTTPService();
         this._writeOptionService = new HTTPService();
         this._loadTournamentService = new HTTPService();
         this._setPlayingStyleService = new HTTPService();
         this._followService = new HTTPService();
         this._tournamentGameCheckService = new HTTPService();
         this._evaluateService = new HTTPService();
         this._getEvaluationService = new HTTPService();
         this._incrementMedalService = new HTTPService();
         super();
         Security.loadPolicyFile("https://81dojo.com/crossdomain.xml");
         this._kifuSearchService.addEventListener(ResultEvent.RESULT,this._handleKifuSearch);
         this._kifuDetailService.addEventListener(ResultEvent.RESULT,this._handleKifuDetail);
         this._playerSearchService.addEventListener(ResultEvent.RESULT,this._handlePlayerSearch);
         this._playerDetailService.addEventListener(ResultEvent.RESULT,this._handlePlayerDetail);
         this._rankingService.addEventListener(ResultEvent.RESULT,this._handleRanking);
         this._readServerService.addEventListener(ResultEvent.RESULT,this._handleReadServer);
         this._loadHistoryService.addEventListener(ResultEvent.RESULT,this._handleLoadHistory);
         this._loadOptionsService.addEventListener(ResultEvent.RESULT,this._handleLoadOptions);
         this._loadTournamentService.addEventListener(ResultEvent.RESULT,this._handleLoadTournament);
         this._followService.addEventListener(ResultEvent.RESULT,this._handleFollow);
         this._tournamentGameCheckService.addEventListener(ResultEvent.RESULT,this._handleTournamentGameCheck);
         this._evaluateService.addEventListener(ResultEvent.RESULT,this._handleEvaluate);
         this._getEvaluationService.addEventListener(ResultEvent.RESULT,this._handleGetEvaluation);
         this._writeOptionService.method = "post";
         this._followService.method = "post";
         this._evaluateService.method = "post";
         this._incrementMedalService.method = "post";
      }
      
      public static function setHostToLocal() : void
      {
         setServer("192.168.220.131",3000);
      }
      
      public static function setServer(param1:String, param2:int) : void
      {
         _host = param1;
         _port = param2;
      }
      
      public function readServer() : void
      {
         this._readServerService.url = this._urlTrunk() + "servers.xml";
         this._readServerService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._readServerService.url + "\n"));
         }
      }
      
      private function _handleReadServer(param1:ResultEvent) : void
      {
         this.bufferData = new ArrayCollection();
         this.bufferData = param1.result.servers.server as ArrayCollection;
         dispatchEvent(new Event(READ_SERVER));
      }
      
      public function loadOptions(param1:String) : void
      {
         this._loadOptionsService.url = this._urlTrunk() + "options?name=" + param1;
         this._loadOptionsService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._loadOptionsService.url + "\n"));
         }
      }
      
      private function _handleLoadOptions(param1:ResultEvent) : void
      {
         var _loc2_:Array = null;
         this.bufferData = new ArrayCollection();
         if(param1.result.options)
         {
            this.bufferData = param1.result.options.option as ArrayCollection;
            if(!this.bufferData)
            {
               _loc2_ = [];
               _loc2_.push(param1.result.options.option);
               this.bufferData = new ArrayCollection(_loc2_);
            }
            dispatchEvent(new Event(LOAD_OPTIONS));
         }
      }
      
      public function writeOption(param1:Object) : void
      {
         this._writeOptionService.url = this._urlTrunk() + "options";
         this._writeOptionService.send(param1);
      }
      
      public function follow(param1:Object) : void
      {
         this._followService.url = this._urlTrunk() + "players/follow";
         this._followService.send(param1);
      }
      
      private function _handleFollow(param1:ResultEvent) : void
      {
         dispatchEvent(new ServerMessageEvent(FOLLOW,param1.result.follow));
      }
      
      public function loadTournament(param1:String) : void
      {
         if(param1.match(/^guest_\w{6}$/))
         {
            param1 = "guest";
         }
         this._loadTournamentService.url = this._urlTrunk() + "tournaments.xml?player_name=" + param1;
         this._loadTournamentService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._loadTournamentService.url + "\n"));
         }
      }
      
      private function _handleLoadTournament(param1:ResultEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         this.bufferData = new ArrayCollection();
         if(!param1.result.tournaments)
         {
            return;
         }
         this.bufferData = param1.result.tournaments.tournament as ArrayCollection;
         if(!this.bufferData)
         {
            _loc3_ = [];
            _loc3_.push(param1.result.tournaments.tournament);
            this.bufferData = new ArrayCollection(_loc3_);
         }
         InfoFetcher.system_tournaments = [];
         for each(_loc2_ in this.bufferData)
         {
            InfoFetcher.system_tournaments.push(_loc2_);
         }
      }
      
      public function checkTournamentGame(param1:int, param2:String, param3:String) : void
      {
         if(param2.match(/^guest_\w{6}$/))
         {
            param2 = "guest";
         }
         this._tournamentGameCheckService.url = this._urlTrunk() + "tournaments/" + param1 + "/check_game.xml?name=" + param2 + "&opponent=" + param3;
         this._tournamentGameCheckService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._tournamentGameCheckService.url + "\n"));
         }
      }
      
      private function _handleTournamentGameCheck(param1:ResultEvent) : void
      {
         dispatchEvent(new ServerMessageEvent(GAME_CHECK,param1.result.check_game));
      }
      
      public function evaluate(param1:Object) : void
      {
         this._evaluateService.url = this._urlTrunk() + "players/evaluate.xml";
         this._evaluateService.send(param1);
      }
      
      private function _handleEvaluate(param1:ResultEvent) : void
      {
         if(param1.result.evaluate == true)
         {
            dispatchEvent(new Event(EVALUATED));
         }
      }
      
      public function getEvaluation(param1:String) : void
      {
         this._getEvaluationService.url = this._urlTrunk() + "players/get_evaluation.xml?name=" + param1;
         this._getEvaluationService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._getEvaluationService.url + "\n"));
         }
      }
      
      private function _handleGetEvaluation(param1:ResultEvent) : void
      {
         var _loc2_:int = parseInt(param1.result.evaluation.good) - parseInt(param1.result.evaluation.bad);
         dispatchEvent(new ServerMessageEvent(GET_EVALUATION,_loc2_.toString()));
      }
      
      public function incrementMedal(param1:Object) : void
      {
         this._incrementMedalService.url = this._urlTrunk() + "players/increment_medal";
         this._incrementMedalService.send(param1);
      }
      
      public function kifuSearch(param1:String, param2:String, param3:Date, param4:Date) : void
      {
         if(param2 == "")
         {
            param2 = "*";
         }
         var _loc5_:String = param3.getFullYear() + "-" + String(param3.getMonth() + 101).substring(1) + "-" + String(param3.getDate() + 100).substring(1);
         var _loc6_:String = param4.getFullYear() + "-" + String(param4.getMonth() + 101).substring(1) + "-" + String(param4.getDate() + 100).substring(1);
         this._kifuSearchService.url = this._urlTrunk() + "kifus/search/" + param1 + "/" + param2 + "/" + _loc5_ + "/" + _loc6_;
         this._kifuSearchService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._kifuSearchService.url + "\n"));
         }
      }
      
      private function _handleKifuSearch(param1:ResultEvent) : void
      {
         var _loc2_:Array = null;
         this.bufferData = new ArrayCollection();
         if(param1.result == " ")
         {
            Alert.show(LanguageSelector.EJ("Authentication failed.","認証に失敗しました。"));
            dispatchEvent(new Event(NOT_FOUND));
            return;
         }
         if(!param1.result.kifus)
         {
            Alert.show(LanguageSelector.EJ("Data not found.","データが見つかりません。"));
            dispatchEvent(new Event(NOT_FOUND));
            return;
         }
         this.bufferData = param1.result.kifus.kifu as ArrayCollection;
         if(!this.bufferData)
         {
            _loc2_ = [];
            _loc2_.push(param1.result.kifus.kifu);
            this.bufferData = new ArrayCollection(_loc2_);
         }
         dispatchEvent(new Event(KIFU_SEARCH));
      }
      
      public function kifuDetail(param1:int) : void
      {
         this._kifuDetailService.url = this._urlTrunk() + "kifus/" + param1 + ".xml";
         this._kifuDetailService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._kifuDetailService.url + "\n"));
         }
      }
      
      private function _handleKifuDetail(param1:ResultEvent) : void
      {
         this.bufferData = new ArrayCollection();
         if(!param1.result.kifu)
         {
            Alert.show(LanguageSelector.EJ("Data not found.","データが見つかりません。"));
            dispatchEvent(new Event(NOT_FOUND));
            return;
         }
         this.kifuContents = param1.result.kifu.contents;
         dispatchEvent(new Event(KIFU_DETAIL));
      }
      
      public function playerSearch(param1:String) : void
      {
         this._playerSearchService.url = this._urlTrunk() + "players/search/" + param1;
         this._playerSearchService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._playerSearchService.url + "\n"));
         }
      }
      
      private function _handlePlayerSearch(param1:ResultEvent) : void
      {
         var _loc2_:Array = null;
         this.bufferData = new ArrayCollection();
         if(!param1.result.players)
         {
            Alert.show(LanguageSelector.EJ("Data not found.","データが見つかりません。"));
            dispatchEvent(new Event(NOT_FOUND));
            return;
         }
         this.bufferData = param1.result.players.player as ArrayCollection;
         if(!this.bufferData)
         {
            _loc2_ = [];
            _loc2_.push(param1.result.players.player);
            this.bufferData = new ArrayCollection(_loc2_);
         }
         dispatchEvent(new Event(PLAYER_SEARCH));
      }
      
      public function playerDetail(param1:String) : void
      {
         this._playerDetailService.url = this._urlTrunk() + "players/detail/" + param1;
         this._playerDetailService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._playerDetailService.url + "\n"));
         }
      }
      
      private function _handlePlayerDetail(param1:ResultEvent) : void
      {
         var _loc2_:Array = null;
         if(!param1.result.player)
         {
            Alert.show(LanguageSelector.EJ("Data not found.","データが見つかりません。"));
            dispatchEvent(new Event(NOT_FOUND));
            return;
         }
         _loc2_ = [];
         _loc2_.push(param1.result.player);
         this.bufferData = new ArrayCollection(_loc2_);
         dispatchEvent(new Event(PLAYER_DETAIL));
      }
      
      public function rankingSearch(param1:String, param2:String) : void
      {
         this._rankingService.url = this._urlTrunk() + "players/ranking/" + param1 + "/" + param2;
         this._rankingService.resultFormat = "e4x";
         this._rankingService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._rankingService.url + "\n"));
         }
      }
      
      private function _handleRanking(param1:ResultEvent) : void
      {
         this.bufferData = new ArrayCollection();
         if(!param1.result.ranking)
         {
            Alert.show(LanguageSelector.EJ("Data not found.","データが見つかりません。"));
            dispatchEvent(new Event(NOT_FOUND));
            return;
         }
         this.bufferXML = new XML(param1.result);
         dispatchEvent(new Event(RANKING_SEARCH));
      }
      
      public function loadHistory(param1:String, param2:int) : void
      {
         this._loadHistoryService.url = this._urlTrunk() + "rate_change_histories/search/" + param1 + "/" + param2;
         this._loadHistoryService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._loadHistoryService.url + "\n"));
         }
      }
      
      private function _handleLoadHistory(param1:ResultEvent) : void
      {
         var _loc2_:Array = null;
         this.bufferData = new ArrayCollection();
         if(!param1.result.rate_change_histories)
         {
            return;
         }
         this.bufferData = param1.result.rate_change_histories.rate_change_history as ArrayCollection;
         if(!this.bufferData)
         {
            _loc2_ = [];
            _loc2_.push(param1.result.rate_change_histories.rate_change_history);
            this.bufferData = new ArrayCollection(_loc2_);
         }
         dispatchEvent(new Event(LOAD_HISTORY));
      }
      
      public function setPlayingStyle(param1:String, param2:int) : void
      {
         this._setPlayingStyleService.url = this._urlTrunk() + "players/setstyleid/" + param1.toLowerCase() + "/" + param2;
         this._setPlayingStyleService.send();
         if(this._isAdmin)
         {
            dispatchEvent(new ServerMessageEvent(ADMIN_MONITOR,"SENT>>> " + this._setPlayingStyleService.url + "\n"));
         }
      }
      
      private function _urlTrunk() : String
      {
         return "https://" + _host + (_port == 80?"":":" + _port) + "/api/v2/";
      }
      
      public function adminOn() : void
      {
         this._isAdmin = true;
      }
   }
}
