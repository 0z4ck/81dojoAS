package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.controls.ComboBox;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class LanguageSelector extends ComboBox implements IBindingClient
   {
      
      private static var _lanName:String = "";
      
      private static const _words:Object = {
         "LANGUAGE":"English",
         "loginname":"Login Name",
         "password":"Password",
         "language":"Language",
         "registered":"Member",
         "guest":"Guest",
         "server":"Server",
         "description":"Description",
         "players":"Player",
         "alive":"Alive",
         "save_login_info":"Save login info",
         "login":"Login",
         "relogin":"Re-login",
         "lobby":"Main Lobby",
         "refresh":"Refresh Lists",
         "wait":"Wait for Game",
         "stop":"Stop Waiting",
         "reject_invitation":"No Invitation",
         "challenge":"Challenge",
         "options":"Options",
         "search":"Search",
         "mute":"Mute",
         "leave":"Leave PC",
         "logout":"Log Out",
         "back_to_game":"Back to Game",
         "status_short":"Stat",
         "stat_m":"Monitoring",
         "stat_w":"Waiting",
         "stat_p":"Postgame",
         "stat_g":"Game",
         "stat_g1":"started",
         "stat_g2":"opening",
         "stat_g3":"middlegame",
         "stat_g4":"middle/end",
         "stat_g5":"endgame",
         "stat_d":"Disconnected",
         "title":"Title",
         "rank":"Rank",
         "name":"Name",
         "country":"Country",
         "rate":"Rate",
         "waiter":"Waiting Player",
         "country_short":"Ctry",
         "thinking_time":"Time",
         "handicap":"Handicap",
         "black":"Black",
         "white":"White",
         "rule":"Rule",
         "game_status":"Status",
         "monitor":"Mon",
         "opening_short":"Opng",
         "watch":"Watch Game",
         "view_as":"View as:",
         "chat":"Chat",
         "auto_scroll":"Auto-scroll",
         "resign":"Resign",
         "impasse":"Impasse?",
         "flip":"Flip Board",
         "close_game":"Exit Game",
         "rematch":"Rematch",
         "voice":"Voice-chat",
         "voice_direct":"Post-game analysis (Direct)",
         "voice_shared":"Post-game analysis (Public)",
         "voice_broadcast":"Join broadcasting",
         "voice_listen":"Listen",
         "voice_off":"Close connection",
         "status_tip_mobile":"Using mobile app",
         "status_tip_html5":"Using HTML5 beta app",
         "status_tip_self":"Myself",
         "status_tip_direct":"Using DIRECT post-game voice-chat",
         "status_tip_shared":"Using PUBLIC post-game voice-chat",
         "status_tip_broadcast":"Broadcasting",
         "status_tip_listen":"Listening to your public voice-chat",
         "status_tip_host":"Host of the study-mode",
         "position_query":"Look up the position",
         "query_kyokumenpedia":"Jump to Kyokumenpedia",
         "query_material":"Material balance calculation",
         "query_precedent":"Precedent games search",
         "query_eval":"Analyze with engine",
         "query_mate":"Search for mate",
         "clear_arrows":"Clear Arrows",
         "arrow":"Arrow",
         "clear":"Clear",
         "greet":"Greet",
         "chat_template":"Auto-translated templates",
         "check_lobby":"See Lobby",
         "check_lobby_tip":"This button is only to see the lobby temporarily while NOT leaving this game. \'Back to Game\' button appears at the top right corner in the Lobby.",
         "watchers":"Watchers",
         "allow_chat":"Receive watcher\'s chat",
         "kifu":"Kifu",
         "copy":"Copy to clipboard as KIF",
         "save":"Save to KIF file",
         "load":"Load KIF/BOD file",
         "load_disabled":"This button is only for the host player in STUDY Room.",
         "replay":"Replay/analyze locally",
         "listen":"Follow latest position",
         "replay_tip":"Replay/analyze only on own PC. The board is not shared unless you are the host of post-game discussion.",
         "listen_tip":"Latest position is shown when watching; and host\'s board is shown in post-game. Arrows will be also shared.",
         "search_panel":"Search Panel",
         "kifu_search":"Kifu Search",
         "share":"Share Kifu",
         "close":"Close",
         "result":"Result",
         "opening":"Opening",
         "moves":"Moves",
         "game_date":"Date",
         "player_search":"Player Search",
         "win":"Win",
         "loss":"Loss",
         "draw":"Draw",
         "total":"Total",
         "percentage_short":"%-win",
         "streak_short":"Streak",
         "signed_up":"Joined",
         "last_updated":"Updated",
         "view_rankings":"View Rankings",
         "streak":"Best Streak",
         "percentage":"Winning %",
         "wins":"Wins",
         "total_games":"Total Games",
         "accept":"Accept",
         "reject":"Reject",
         "reject_reason":"with reason",
         "auto_reject":"Auto-reject",
         "decline":"Decline",
         "decline_reason":"with reason",
         "invitation":"Invitation",
         "set_autoreply":"Set auto-reply message",
         "will_be_back_in":"Will be back in",
         "hours":"hours",
         "minutes":"minutes",
         "message":"message",
         "cancel":"Cancel",
         "sound":"Sound",
         "sound_piece":"Piece sound",
         "sound_end":"Game start/end sound",
         "sound_chat":"Incoming chat sound",
         "sound_byoyomi":"Byoyomi sound",
         "sound_button":"Button sound",
         "byoyomi_chime":"Chime",
         "byoyomi_jp":"Japanese",
         "game_room":"Game Room",
         "pm":"Private Message",
         "communication":"Communication",
         "notation":"Notation Style",
         "notation_uni":"Universal",
         "notation_jp":"Japanese",
         "notation_west":"Western",
         "notation_kk":"K-K Method",
         "pm_auto":"Auto-open window on reception",
         "arrow_accept":"Accept arrows from others",
         "arrow_color":"Your color",
         "remove":"Remove",
         "board_size":"Board Size",
         "board_size_tip":"You can also change the whole app size freely by the zoom function of web browsers with Ctrl-key + mouse wheel.",
         "blind_piece":"Blind Piece",
         "op_blind_notify":"Notify blind piece usage",
         "op_grab":"Grab piece when moving",
         "op_highlight":"Highlight movable squares",
         "past_games":"Number of past games to be analyzed",
         "study_fitness":"Self-statement regarding online post-game analysis",
         "study_level":"interest in p. g. analysis",
         "english_level":"English skills",
         "not_defined":"undefined",
         "study_level_tip":"[Level 0]　I never do it online.\n[Level 1]　I don\'t do it very often, but I\'d basically do it if the opponent wants to.\n[Level 2]　I like post-game analysis. I always want to do it as far as the opponent agrees to.",
         "english_level_tip":"[Level 0]　No English!\n[Level 1]　My English is bad, but I could try and do it a little bit.\n[Level 2]　I can basically communicate in English without big problem. (Or higher)",
         "others":"Others",
         "for_premium":"Only for premium members",
         "save_settings":"Save settings to server",
         "win_small":"win",
         "loss_small":"loss",
         "current":"Current",
         "invite":"Invite",
         "detail":"Detail",
         "web_system":"See in WebSystem",
         "favorite":"Favorite",
         "ignore":"Block",
         "allow":"Give Study-mode rights",
         "give_host":"Hand over Host status",
         "give_subhost":"Allow Sub-host status",
         "set_rate":"Set Rate",
         "rated":"Rated",
         "nonrated":"Non-rated",
         "min":"min",
         "sec":"sec",
         "hc_even":"Even Game",
         "hc_fixed":"Fixed-black",
         "hc_lance":"Lance Down",
         "hc_bishop":"Bishop Down",
         "hc_rook":"Rook Down",
         "hc_rooklance":"Rook-Lance Down",
         "hc_rooksilver":"Rook-Silver Down",
         "hc_2p":"2-piece Down",
         "hc_4p":"4-piece Down",
         "hc_6p":"6-piece Down",
         "hc_8p":"8-piece Down",
         "hc_tombonl":"Dragonfly + NL",
         "hc_tombol":"Dragonfly + L",
         "hc_tombo":"Dragonfly",
         "hc_10p":"10-piece Down",
         "hc_3pawns":"Three Pawns",
         "hc_naked":"Naked King",
         "hc_openair":"Open-air Shogi",
         "hc_mini":"Mini Shogi",
         "hc_56":"GoroGoro Shogi",
         "hc_judkins":"Judkins Shogi",
         "hc_kyoto":"Kyoto-shogi",
         "hc_zoo":"Catch the Lion",
         "hc_33":"3x3 Shogi",
         "tournament":"Tournament Room",
         "study_room":"Study Room",
         "comment":"Comment",
         "opponent":"Opponent",
         "time_rule":"Time",
         "game_type":"Game type",
         "conditions":"Game conditions",
         "private_room":"Private game room",
         "enter_pass":"Enter password.",
         "pass_invalid":"Wrong password. Cannot enter the room.",
         "declare":"Declare Win",
         "entered_impasse":"Entered",
         "pieces_impasse":"Pieces",
         "points_impasse":"Points",
         "error":"Error",
         "tendency":"Tendencies",
         "rate_history":"Rate History",
         "data_table":"Data Table",
         "apply_dan":"JSA Certificate",
         "status":"Status",
         "msg_newlogin":"\n- Double click names to see Player Info. (Also [***] in chat window)\n- Double click games to watch.\n- Play 5 rated games against someone whose rating is already fixed, and your rating will be determined!\n- If the registered rating was much lower than your actual strength, you must reset properly.\n- You can register only your home country or residing country.",
         "msg_guestlogin":"- The orange ◆ mark on the Player List on the left indicates your guest account.\n- To watch a game and view a player\'s info, please double-click on the lists.\n- Guests can only use limited functions of 81Dojo. Please see the comparison table between a guest and a registered player. --> https://81dojo.com/documents/Guest_Login_System",
         "msg_host":"You are the host of Study Mode. Your board is shared.",
         "msg_subhost":"You are a sub-host of study mode. You can move the host\'s pieces.",
         "msg_subhost_given":"You are given Study sub-host status. You can move the host\'s pieces.",
         "msg_study_notify":"Study-position is changed. Back to [Follow latest position] mode to update.",
         "msg_rated":"This game is Rated.\nPlayers CANNOT see watcher\'s chat until the game ends.\nWatcher can PM to players, but it will be notified to others.",
         "msg_nonrated":"This game is Non-rated.\nPlayers CAN see watcher\'s chat even during game.",
         "msg_disconnect":"Opponent disconnected.",
         "msg_disconnect_self":"You are disconnected from the server. The applet is no longer active. Please reload the applet to login again and continue.　Do you want to reload immidately?",
         "msg_illegal":"Illegal move.",
         "msg_perpetual":"Perpetual Check.",
         "msg_repetition":"Sennichite. (Repetition)",
         "msg_lag":"Your timer is lagging by more than 5 sec due to CPU load. Time-up loss can occur earlier than your timer hits zero.",
         "msg_disconnect_alert1":"You can declare win after 60 seconds, or keep waiting.",
         "msg_disconnect_alert2":"Declaration is automatically made after 300 seconds.",
         "msg_addlist":"Added to the list temporarily. Go to Option Window to set it permanent or cancel.",
         "msg_addlist_favorite":"Added to the favorite list temporarily. Go to Option Window to set it permanent or cancel.",
         "msg_addlist_block":"Blocked all communication from the user. This setting will be canceled on your next login.",
         "msg_auto_reject":"Further challenges from this user will be automatically rejected. This setting will be canceled on your next login.",
         "msg_before_upgrade":"You have a chance of rank promotion now. Win against someone who has a fixed rating higher than (yours - 200), and you will be promoted.",
         "msg_before_downgrade":"Your rating is at the bottom of the rank now. You may be demoted if you lose the next game.",
         "msg_guest_expire":"The number of games played per day has reached the limit. Please register an account (free of charge) to continue playing.",
         "msg_reconnect_only":"You can only recconect to the game you disconnected from.\nIf your game had already ended, re-login to clear your \'D\' status.",
         "msg_suggest_invitation":"Opponent is not waiting for a game. Invite to your game?",
         "msg_mobile":"This function is invalid for this user testing the mobile app.",
         "E010":"The user is not logged in. The message was saved for his/her next login.",
         "E018":"Database update failed. (Please contact the support.)",
         "C000":"The opponent is in challenge/invite process with someone else.",
         "C001":"Cannot start games. Server maintenance will be held soon.",
         "C002":"The opponent is already starting a game.",
         "C003":"The opponent did not respond within time limit.",
         "C004":"The opponent rejected your challenge.",
         "C005":"Challenge accepted!",
         "C006":"You cannot challenge until you exit the current game.",
         "C007":"Opponent disconnected.",
         "C008":"Opponent has already started game with another player.",
         "C010":" is not accepting invitation now.",
         "C011":" is already playing a game.",
         "C012":" is in challenge/invite process with someone else.",
         "C013":" did not respond within time limit.",
         "C014":" declined the invitation.",
         "C015":" declined the invitation. (Busy)",
         "C016":" declined the invitation. (Preferring other rules)",
         "C017":" declined the invitation. (Preferring shorter game)",
         "C018":" declined the invitation. (Preferring longer game)",
         "C019":" declined the invitation. (Preferring rated game)",
         "C020":" declined the invitation. (Waiting for someone else)",
         "C021":"The opponent rejected your challenge. (Temporarily busy)",
         "C022":"The opponent rejected your challenge. (Rating is out of preferred range)",
         "C023":"The opponent rejected your challenge. (Waiting for someone else)",
         "C030":"The selected rule has been canceled.",
         "G000":": Leaving Host\'s position.",
         "G001":": Back to Host\'s position.",
         "G002":"",
         "G003":": Erased branch moves.",
         "G004":": Loading a new position...",
         "G010":": Pieces set back to normal.",
         "G011":": Pieces set to Blind, Middle.",
         "G012":": Pieces set to Blind, Hard.",
         "G013":": Pieces set to Blind, Extreme.",
         "G014":" is playing with blind pieces, Middle.",
         "G015":" is Playing with blind pieces, Hard.",
         "G016":" is Playing with blind pieces, Extreme.",
         "G020":" will be promoted if he wins this game.",
         "G021":" will be demoted if he loses this game.",
         "G030":" entered.",
         "G031":" left.",
         "G050":": Standing-by for rematch.",
         "G100":": Blocked watchers\' chat.",
         "G101":": Receiving watchers\' chat.",
         "G102":" is currently blocking watchers\' chat.",
         "P000":" has sent a PM to the opponent.",
         "L000":"Name or password is wrong.",
         "L001":"Cannot login.",
         "L002":"Override login failed.",
         "L003":"Login failed.",
         "L004":"Account not activated yet.",
         "L005":"Connection to the server failed.",
         "T000":"Which position could\'ve been the key point?",
         "T001":"Excuse me, but I will leave now.",
         "T002":"Thank you for the game. Have a nice day.",
         "T003":"Could we analyze from the beginning?",
         "T004":"Could we analyze a little bit?",
         "T005":"What could\'ve been the right move here?",
         "T006":"How about this move?",
         "T007":"This position seems better for me.",
         "T008":"This position seems equal.",
         "T009":"This is another equal game.",
         "T010":"This position seems not easy for me.",
         "T011":"This position seems bad for me.",
         "T012":"Excuse me for interrupting the analysis, but I have to leave now.",
         "T013":"It\'s about time I\'ll be leaving.",
         "T014":"Could we play another game?",
         "V000":"Direct voice-chat connected!",
         "V001":"\'s public voice-chat received!",
         "V002":"Quit listening.",
         "V003":"Requesting to connect to public voice-chat...",
         "V004":"Sent request to players to access their post-game voice-chat.",
         "E007":"You cannot start another game until you exit the current game room."
      };
      
      private static const _words_ja:Object = {
         "LANGUAGE":"日本語",
         "loginname":"ハンドルネーム",
         "password":"パスワード",
         "language":"言語",
         "registered":"登録ユーザ",
         "guest":"ゲスト",
         "server":"サーバ",
         "description":"説明",
         "players":"入場者",
         "alive":"稼働",
         "save_login_info":"次回ログイン時まで保存",
         "login":"ログイン",
         "relogin":"再ログイン",
         "lobby":"メインロビー",
         "refresh":"リスト更新",
         "wait":"対局待",
         "stop":"待中止",
         "reject_invitation":"招待お断り",
         "challenge":"挑戦",
         "options":"オプション",
         "search":"検索",
         "mute":"ミュート",
         "leave":"離席",
         "logout":"ログアウト",
         "back_to_game":"対局室へ戻る",
         "status_short":"状態",
         "stat_m":"観戦",
         "stat_w":"対局待",
         "stat_p":"感想戦",
         "stat_g":"対局",
         "stat_g1":"開始",
         "stat_g2":"序盤",
         "stat_g3":"序中盤",
         "stat_g4":"中終盤",
         "stat_g5":"終盤",
         "stat_d":"接続切れ",
         "title":"タイトル",
         "rank":"段級位",
         "rank_exp":"レベル",
         "name":"ハンドルネーム",
         "country":"国名",
         "rate":"レート",
         "waiter":"対局待プレーヤ",
         "country_short":"国名",
         "thinking_time":"持時間",
         "handicap":"手合割",
         "black":"先手",
         "white":"後手",
         "rule":"ルール",
         "game_status":"進行",
         "monitor":"観戦",
         "opening_short":"戦型",
         "watch":"観戦",
         "view_as":"手番選択",
         "chat":"チャット",
         "auto_scroll":"自動スクロール",
         "resign":"投了",
         "impasse":"持将棋計算",
         "flip":"盤面反転",
         "close_game":"対局室を出る",
         "rematch":"再戦",
         "voice":"音声通信",
         "voice_direct":"感想戦(直通)",
         "voice_shared":"感想戦(公開可)",
         "voice_broadcast":"放送参加",
         "voice_listen":"視聴",
         "voice_off":"通信切断",
         "status_tip_mobile":"モバイルアプリ使用中",
         "status_tip_html5":"HTML版βアプリ使用中",
         "status_tip_self":"自分",
         "status_tip_direct":"直通ボイスチャット感想戦中",
         "status_tip_shared":"公開可ボイスチャット感想戦中",
         "status_tip_broadcast":"放送中",
         "status_tip_listen":"あなたの公開ボイスチャットを視聴中",
         "status_tip_host":"感想戦ホスト",
         "position_query":"局面問い合わせ",
         "query_kyokumenpedia":"局面ペディアへ",
         "query_material":"駒割計算",
         "query_precedent":"前例検索",
         "query_eval":"ソフト解析",
         "query_mate":"詰みチェック",
         "clear_arrows":"矢印消去",
         "arrow":"矢印",
         "clear":"消去",
         "greet":"挨拶",
         "chat_template":"自動翻訳定型文",
         "check_lobby":"ロビーを一時確認",
         "check_lobby_tip":"対局室を出ずに一時的にロビーの状況を確認します。ロビー右上に「対局室へ戻る」のボタンが出現します。",
         "watchers":"観戦者",
         "allow_chat":"観戦者のチャットを受信",
         "kifu":"棋譜",
         "copy":"クリップボードにKIF形式でコピー",
         "save":"KIFファイルに保存",
         "load":"KIF(棋譜)/BOD(局面)ファイル読込",
         "load_disabled":"この機能は検討室のホストユーザ専用です。",
         "replay":"ローカル再生・検討",
         "listen":"現在の局面を受信",
         "replay_tip":"自分のPC上でのみ局面を動かします。感想戦ホストである場合を除き、他者との情報共有は行いません。",
         "listen_tip":"観戦中は最新局面、感想戦中はホストの検討局面を表示します。描いた矢印も他者と共有されます。",
         "search_panel":"情報検索",
         "kifu_search":"棋譜検索",
         "share":"棋譜共有",
         "close":"閉じる",
         "result":"勝敗",
         "opening":"戦型",
         "moves":"手数",
         "game_date":"対局日",
         "player_search":"プレイヤー検索",
         "win":"勝数",
         "loss":"負数",
         "draw":"引分",
         "total":"合計",
         "percentage_short":"勝率",
         "streak_short":"連勝数",
         "signed_up":"登録日",
         "last_updated":"更新日",
         "view_rankings":"ランキング閲覧",
         "streak":"最多連勝数",
         "percentage":"勝率",
         "wins":"勝局数",
         "total_games":"総対局数",
         "accept":"承諾",
         "reject":"拒否",
         "reject_reason":"理由付拒否",
         "auto_reject":"自動拒否",
         "invitation":"招待",
         "decline":"辞退",
         "decline_reason":"理由付辞退",
         "set_autoreply":"自動返信の設定",
         "will_be_back_in":"離席予定時間",
         "hours":"時間",
         "minutes":"分",
         "message":"メッセージ",
         "cancel":"キャンセル",
         "pieces":"駒",
         "board_size":"盤の大きさ",
         "board_size_tip":"ブラウザのズーム機能(Ctrlキー + マウスホイール)でアプリ全体の表示サイズを連続的に変えることも可能です。",
         "blind_piece":"目隠し対局",
         "op_blind_notify":"目隠し対局の切り替えを他者に通知",
         "op_grab":"駒を掴んだ時にホールドする",
         "op_highlight":"動けるマスを表示",
         "sound":"音声",
         "sound_piece":"駒音",
         "sound_end":"対局開始・終局音",
         "sound_chat":"チャット受信",
         "sound_byoyomi":"秒読み",
         "sound_button":"ボタン操作音",
         "byoyomi_chime":"チャイム",
         "byoyomi_jp":"日本語音声",
         "game_room":"対局室",
         "pm":"プライベートメッセージ",
         "communication":"通信",
         "notation":"棋譜法",
         "notation_uni":"ユニバーサル",
         "notation_jp":"日本表記",
         "notation_west":"西洋表記",
         "notation_kk":"K-K方式",
         "pm_auto":"受信時にウインドウを自動表示",
         "arrow_accept":"他人の描いた矢印を表示する",
         "arrow_color":"自分の色",
         "remove":"削除",
         "past_games":"対局結果統計分析 対象局数",
         "study_fitness":"オンライン感想戦適応度の申告",
         "study_level":"感想戦志向度",
         "english_level":"英語への対応",
         "not_defined":"未設定",
         "study_level_tip":"[レベル0]　オンラインで感想戦はしません。\n[レベル1]　あまり頻繁にはしませんが、求められたら基本的には応じます。\n[レベル2]　感想戦が好きです。出来るだけ感想戦をしたいと思っています。",
         "english_level_tip":"[レベル0]　全く出来ません。\n[レベル1]　頑張れば少しだけなら出来ます。\n[レベル2]　基本的には、大きな支障なく出来ると思います。(またはそれ以上)",
         "others":"その他",
         "for_premium":"プレミアムクラス専用",
         "save_settings":"サーバに設定を保存",
         "win_small":"勝",
         "loss_small":"敗",
         "current":"現在",
         "invite":"招待",
         "detail":"詳細",
         "web_system":"Webシステムへ",
         "favorite":"お気に入り",
         "ignore":"ブロック",
         "allow":"感想戦の権限を付与",
         "give_host":"ホスト権限を移譲",
         "give_subhost":"サブ・ホスト権限を付与",
         "set_rate":"レート申告",
         "rated":"レート対局",
         "nonrated":"非レート対局",
         "min":"分",
         "sec":"秒",
         "hc_even":"平手",
         "hc_fixed":"定先",
         "hc_lance":"香落ち",
         "hc_bishop":"角落ち",
         "hc_rook":"飛車落ち",
         "hc_rooklance":"飛香落ち",
         "hc_rooksilver":"飛銀落ち",
         "hc_2p":"二枚落ち",
         "hc_4p":"四枚落ち",
         "hc_6p":"六枚落ち",
         "hc_8p":"八枚落ち",
         "hc_tombonl":"トンボ＋桂香",
         "hc_tombol":"トンボ＋香",
         "hc_tombo":"トンボ",
         "hc_10p":"十枚落ち",
         "hc_3pawns":"歩三兵",
         "hc_naked":"裸玉",
         "hc_openair":"青空将棋",
         "hc_mini":"五々将棋",
         "hc_56":"ゴロゴロ将棋",
         "hc_judkins":"ジャドケンス将棋",
         "hc_kyoto":"京都将棋",
         "hc_zoo":"どうぶつしょうぎ(3x4)",
         "hc_33":"3x3将棋",
         "tournament":"特別対局室",
         "study_room":"検討室",
         "load_kifu":"読込",
         "comment":"コメント",
         "opponent":"相手",
         "time_rule":"持ち時間",
         "game_type":"手合い",
         "conditions":"対局条件",
         "private_room":"プライベート対局室",
         "enter_pass":"入室パスワードを入力して下さい",
         "pass_invalid":"パスワードが一致しないため入室できません。",
         "declare":"勝ち宣言",
         "entered_impasse":"入玉",
         "pieces_impasse":"駒数",
         "points_impasse":"点数",
         "error":"エラー",
         "tendency":"戦型採用率",
         "rate_history":"レーティング推移",
         "data_table":"勝敗表",
         "apply_dan":"段級位申請",
         "status":"状態",
         "msg_newlogin":"\n- 名前をダブルクリックするとプレイヤーの詳細情報を確認出来ます。\n- 対局をダブルクリックすると観戦が出来ます。\n- 新鋭棋士以外とのレーティング対局5局でレート調整が完了し、全機能を使うことが出来ます。\n- 実力より明らかに低いレートでの登録は禁止します。レート確定までに必ず適正値に再設定をして下さい。\n- 国名は出身国または居住国のみ設定可です。虚偽の登録は禁止します。",
         "msg_guestlogin":"- 左側のプレイヤーリスト上でオレンジ色の◆マークが付いているのが自分自身です。\n- 対局を観戦したり、プレイヤーの成績を見るには、リストからダブルクリックして下さい。\n- ゲストの方は機能が制限されております。登録ユーザとの比較表をご確認下さい。\n    → https://81dojo.com/documents/Guest_Login_System#.E6.97.A5.E6.9C.AC.E8.AA.9E\n- 万が一、当道場のユーザから迷惑行為などを受けた際は、スクリーンショット等の情報と共にサポートまでご相談下さい。",
         "msg_host":"あなたが感想戦ホストです。ローカルの盤面が検討のために共有されます。",
         "msg_subhost":"感想戦のサブ・ホストになりました。ホストの検討局面上で一緒に駒を動かすことのみ可能です。",
         "msg_subhost_given":"感想戦のサブ・ホスト権限が与えられました。ホストの検討局面上で駒を動かすことが出来ます。",
         "msg_study_notify":"感想戦の局面が変化しました。「現在の局面を受信」モードに戻すと更新されます。",
         "msg_rated":"この対局はレーティング戦です。\n観戦者のチャットは対局者には見えません。\n対局者にPMは送信できますが、対局相手にも送信事実が通知されます。",
         "msg_nonrated":"この対局は非レーティング対局です。\n観戦者のチャットは対局者も見ることができます。",
         "msg_disconnect":"相手の通信が切断されました。",
         "msg_disconnect_self":"サーバとの接続が切れました。アプリをリロードして再ログインして下さい。いますぐリロードしますか?",
         "msg_illegal":"反則手です",
         "msg_perpetual":"連続王手の千日手",
         "msg_repetition":"千日手です",
         "msg_lag":"お使いのPCの負荷によりタイマーが5秒以上遅れています。時間切れにご注意下さい。",
         "msg_disconnect_alert1":"相手が再接続するまで待つか、60秒経過後に勝ち宣言をすることが出来ます。",
         "msg_disconnect_alert2":"ただし、5分経過すると自動的に勝ちとなります。",
         "msg_addlist":"リストに一時的に追加しました。オプション画面から、保存またはキャンセルが出来ます。",
         "msg_addlist_favorite":"お気に入りリストに一時的に追加しました。オプション画面から、保存またはキャンセルが出来ます。",
         "msg_addlist_block":"このユーザからの全ての通信を一時的にシャットアウトしました。この設定はログアウトするまで解除されません。",
         "msg_auto_reject":"このユーザからの今後の挑戦は自動拒否します。この設定はログアウトするまで解除されません。",
         "msg_before_upgrade":"現在、昇級圏内です。自分のRマイナス200点よりも高い相手(新鋭棋士を除く)との対局に勝つと昇級します。",
         "msg_before_downgrade":"現在、降級圏内です。",
         "msg_guest_expire":"ゲスト対局の回数が上限に達しました。無料ユーザ登録の後、引き続き対局をお楽しみ下さい。",
         "msg_reconnect_only":"接続切れした対局が続行中です。中断した対局以外の対局室に戻ることは出来ません。\n対局が終了している場合は、再ログインしてステータス欄の「中断」マークを消して下さい。",
         "msg_suggest_invitation":"相手は対局待ちではありません。あなたの対局への招待メッセージを送りますか?",
         "msg_mobile":"対象ユーザがモバイル端末によるアプリテスト中のため本機能は無効です。",
         "E010":"相手がログインしていません。メッセージはサーバに保存され、相手の次回ログイン時に送信されます。",
         "E018":"データベースの更新に失敗しました。(サポートへお問い合わせ下さい)",
         "C000":"挑戦した相手は、他者との対局交渉の最中です。",
         "C001":"サーバメンテナンス準備時間に入ったため、対局を始められません。",
         "C002":"相手が既に対局を開始しています。",
         "C003":"制限時間内に応答がありませんでした。",
         "C004":"相手が挑戦に応じませんでした。",
         "C005":"挑戦が承諾されました!",
         "C006":"現在の対局を終了するまで挑戦できません。",
         "C007":"相手の接続が切れました。",
         "C008":"相手が他との対局を開始済です。",
         "C010":"さんは現在招待を受け付けていません。",
         "C011":"さんは現在対局中です。",
         "C012":"さんは他者との対局交渉の最中です。",
         "C013":"さんから制限時間内に応答がありませんでした。",
         "C014":"さんは招待に応じませんでした。",
         "C015":"さんは招待に応じませんでした。(取り込み中)",
         "C016":"さんは招待に応じませんでした。(別ルール希望)",
         "C017":"さんは招待に応じませんでした。(時間の短い将棋を希望)",
         "C018":"さんは招待に応じませんでした。(時間の長い将棋を希望)",
         "C019":"さんは招待に応じませんでした。(レート対局を希望)",
         "C020":"さんは招待に応じませんでした。(待ち合わせ中)",
         "C021":"相手が挑戦に応じませんでした。(一時的に取り込み中)",
         "C022":"相手が挑戦に応じませんでした。(レーティングが希望範囲外)",
         "C023":"相手が挑戦に応じませんでした。(先約あり)",
         "C030":"挑戦した対局ルールが既に解除されています。",
         "G000":": ホストの盤面を離脱",
         "G001":": ホストの盤面に復帰",
         "G002":": 分岐手順を生成",
         "G003":": 分岐手順クリア",
         "G004":": 新しい局面を読み込み中...",
         "G010":": 目隠し将棋を解除",
         "G011":": 目隠し将棋(中級)に設定",
         "G012":": 目隠し将棋(上級)に設定",
         "G013":": 目隠し将棋(超級)に設定",
         "G014":": 目隠し将棋(中級)でプレイ中",
         "G015":": 目隠し将棋(上級)でプレイ中",
         "G016":": 目隠し将棋(超級)でプレイ中",
         "G020":": ◇この対局に勝つと昇級◇",
         "G021":": ◆この対局に負けると降級◆",
         "G030":"さんが入室しました。",
         "G031":"さんが退室しました。",
         "G050":": 再戦スタンバイ",
         "G100":": 観戦者のチャットをミュートしました。",
         "G101":": 観戦者のチャットを受信します。",
         "G102":": 観戦者のチャットをミュート中。",
         "P000":"さんが対局相手にPMを送信しました。",
         "L000":"ログイン名またはパスワードが違います",
         "L001":"ログイン出来ません",
         "L002":"ゴーストのオーバーライドに失敗",
         "L003":"ログインに失敗しました",
         "L004":"アクティベートされていないアカウントです",
         "L005":"サーバとの通信に失敗しました",
         "T000":"ポイントはどのあたりだったでしょう。",
         "T001":"すみませんがこれで失礼させて頂きます。",
         "T002":"どうも有難うございました。では失礼します。",
         "T003":"初手から感想戦をお願いできませんでしょうか。",
         "T004":"手短で良いので感想戦をお願いできますでしょうか。",
         "T005":"この局面ではどうすれば良いでしょうか。",
         "T006":"この手ならどうでしょうか。",
         "T007":"この局面はこちらが良さそうに思います。",
         "T008":"この局面は互角だと思います。",
         "T009":"これは一局ですね。",
         "T010":"この局面はあまり自信ありません。",
         "T011":"この局面はこちらが悪いと思います。",
         "T012":"感想戦中すみませんが、そろそろ失礼させて頂きます。",
         "T013":"では、そろそろ失礼させて頂きます。",
         "T014":"もう一局お願いできますでしょうか。",
         "V000":"直通ボイスチャット接続!",
         "V001":"さんの公開ボイスチャット受信!",
         "V002":"視聴を中止しました。",
         "V003":"公開ボイスチャットに接続リクエスト中...",
         "V004":"対局者にボイスチャット視聴許可を申請しました。",
         "E007":"対局中のため次の対局を開始できません。"
      };
      
      public static var _106905lan:ObjectProxy;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private const LANGUAGE_DIRECTORY:String = "https://81dojo.com/dojo/languages/";
      
      private var _1474671935_items:ArrayCollection;
      
      private var _urlLoader:URLLoader;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LanguageSelector()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1474671935_items = new ArrayCollection([{
            "label":"日本語",
            "image":"392",
            "fileName":"japanese"
         },{
            "label":"English",
            "image":"826",
            "fileName":"english"
         },{
            "label":"简体中文",
            "image":"156",
            "fileName":"chinese_s"
         },{
            "label":"繁體中文",
            "image":"hongkong",
            "fileName":"chinese_t"
         },{
            "label":"Español",
            "image":"724",
            "fileName":"spanish"
         },{
            "label":"Français",
            "image":"250",
            "fileName":"french"
         },{
            "label":"Deutsch",
            "image":"276",
            "fileName":"german"
         },{
            "label":"Polski",
            "image":"616",
            "fileName":"polish"
         },{
            "label":"Svenska",
            "image":"752",
            "fileName":"swedish"
         },{
            "label":"Ελληνικά",
            "image":"300",
            "fileName":"greek"
         },{
            "label":"Português",
            "image":"620",
            "fileName":"portugese"
         },{
            "label":"Italiano",
            "image":"380",
            "fileName":"italian"
         },{
            "label":"Беларуская",
            "image":"112",
            "fileName":"belorussian"
         },{
            "label":"Русский",
            "image":"643",
            "fileName":"russian"
         },{
            "label":"ไทย",
            "image":"764",
            "fileName":"thai"
         },{
            "label":"Українська",
            "image":"804",
            "fileName":"ukranian"
         },{
            "label":"Česky",
            "image":"203",
            "fileName":"czech"
         },{
            "label":"한국어",
            "image":"410",
            "fileName":"korean"
         },{
            "label":"Nederlands",
            "image":"528",
            "fileName":"dutch"
         },{
            "label":"עברית",
            "image":"376",
            "fileName":"hebrew"
         },{
            "label":"Srpski",
            "image":"688",
            "fileName":"serbian"
         }]);
         this._urlLoader = new URLLoader();
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._LanguageSelector_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_LanguageSelectorWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LanguageSelector[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 130;
         this.rowCount = 21;
         this.height = 27;
         this.itemRenderer = this._LanguageSelector_ClassFactory1_c();
         this.addEventListener("change",this.___LanguageSelector_ComboBox1_change);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function readDefault(param1:Boolean = false) : void
      {
         lan = new ObjectProxy(!!param1?_words_ja:_words);
         _lanName = !!param1?"japanese":"english";
      }
      
      public static function isJapanese() : Boolean
      {
         return _lanName == "japanese";
      }
      
      public static function EJ(param1:String, param2:String) : String
      {
         return _lanName == "japanese"?param2:param1;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         LanguageSelector._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public static function get lan() : ObjectProxy
      {
         return LanguageSelector._106905lan;
      }
      
      public static function set lan(param1:ObjectProxy) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = LanguageSelector._106905lan;
         if(_loc2_ !== param1)
         {
            LanguageSelector._106905lan = param1;
            _loc3_ = LanguageSelector.staticEventDispatcher;
            if(_loc3_ !== null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(LanguageSelector,"lan",_loc2_,param1));
            }
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _readLanguage(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc2_:Object = new Object();
         _lanName = this.selectedItem.fileName;
         _loc2_ = _lanName == "japanese"?_words_ja:_words;
         for each(_loc3_ in param1.target.data.split("\n"))
         {
            if(_loc4_ = _loc3_.match(/^(.+),(.+)$/))
            {
               _loc2_[_loc4_[1]] = _loc4_[2];
            }
         }
         lan = new ObjectProxy(_loc2_);
         this._urlLoader.removeEventListener(Event.COMPLETE,this._readLanguage);
      }
      
      public function loadLanguage() : void
      {
         this._urlLoader.addEventListener(Event.COMPLETE,this._readLanguage);
         var _loc1_:Date = new Date();
         parentApplication.VERSION;
         this._urlLoader.load(new URLRequest(this.LANGUAGE_DIRECTORY + this.selectedItem.fileName + ".txt?" + Config.LANGUAGE_VERSION));
         parentApplication.loginMessage.text = "";
      }
      
      private function _LanguageSelector_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = LanguageSelectorInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function ___LanguageSelector_ComboBox1_change(param1:ListEvent) : void
      {
         this.loadLanguage();
      }
      
      private function _LanguageSelector_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return _items;
         },null,"this.dataProvider");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get _items() : ArrayCollection
      {
         return this._1474671935_items;
      }
      
      private function set _items(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1474671935_items;
         if(_loc2_ !== param1)
         {
            this._1474671935_items = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_items",_loc2_,param1));
            }
         }
      }
   }
}
