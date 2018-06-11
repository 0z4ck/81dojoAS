package
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.system.System;
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.containers.Accordion;
   import mx.containers.Box;
   import mx.containers.Canvas;
   import mx.containers.Form;
   import mx.containers.FormItem;
   import mx.containers.HBox;
   import mx.containers.Panel;
   import mx.containers.TabNavigator;
   import mx.containers.VBox;
   import mx.containers.VDividedBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.DateChooser;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.controls.Menu;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.controls.SWFLoader;
   import mx.controls.Spacer;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.CloseEvent;
   import mx.events.DividerEvent;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.IndexChangedEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ScrollEvent;
   import mx.managers.PopUpManager;
   import mx.managers.ToolTipManager;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import mx.utils.ObjectProxy;
   import mx.utils.StringUtil;
   import spark.components.Application;
   import spark.filters.DropShadowFilter;
   import spark.layouts.BasicLayout;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class EightyOneShogi extends Application implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _691834831RadioGroupKifu:RadioButtonGroup;
      
      public var _EightyOneShogi_DataGridColumn1:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn100:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn101:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn104:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn106:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn107:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn108:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn109:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn110:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn111:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn12:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn13:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn14:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn16:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn18:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn19:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn2:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn20:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn21:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn22:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn23:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn24:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn25:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn26:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn27:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn28:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn29:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn3:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn30:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn31:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn33:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn35:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn36:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn37:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn38:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn39:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn4:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn40:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn41:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn43:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn44:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn45:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn46:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn47:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn48:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn49:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn5:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn50:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn51:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn53:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn54:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn56:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn57:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn58:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn59:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn6:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn60:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn61:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn63:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn64:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn66:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn67:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn68:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn69:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn7:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn70:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn71:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn73:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn74:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn76:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn77:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn78:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn79:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn8:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn80:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn81:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn83:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn84:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn86:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn87:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn88:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn89:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn9:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn90:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn91:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn93:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn94:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn96:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn97:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn98:DataGridColumn;
      
      public var _EightyOneShogi_DataGridColumn99:DataGridColumn;
      
      public var _EightyOneShogi_FormItem2:FormItem;
      
      public var _EightyOneShogi_FormItem3:FormItem;
      
      public var _EightyOneShogi_Label1:Label;
      
      public var _EightyOneShogi_Label10:Label;
      
      public var _EightyOneShogi_Label11:Label;
      
      public var _EightyOneShogi_Label12:Label;
      
      public var _EightyOneShogi_Label13:Label;
      
      public var _EightyOneShogi_Label15:Label;
      
      public var _EightyOneShogi_Label8:Label;
      
      public var _EightyOneShogi_Label9:Label;
      
      public var _EightyOneShogi_MyButton3:MyButton;
      
      public var _EightyOneShogi_MyButton6:MyButton;
      
      public var _EightyOneShogi_MyButton8:MyButton;
      
      public var _EightyOneShogi_MyMenuButton11:MyMenuButton;
      
      public var _EightyOneShogi_RadioButton5:RadioButton;
      
      public var _EightyOneShogi_RadioButton6:RadioButton;
      
      public var _EightyOneShogi_RadioButton7:RadioButton;
      
      public var _EightyOneShogi_RadioButton8:RadioButton;
      
      public var _EightyOneShogi_RadioButton9:RadioButton;
      
      public var _EightyOneShogi_VBox1:VBox;
      
      public var _EightyOneShogi_VBox18:VBox;
      
      public var _EightyOneShogi_VBox19:VBox;
      
      public var _EightyOneShogi_VBox20:VBox;
      
      public var _EightyOneShogi_VBox21:VBox;
      
      public var _EightyOneShogi_VBox22:VBox;
      
      private var _972349599adminButton:MyMenuButton;
      
      private var _1203377422allowWatcherChatCheckbox:CheckBox;
      
      private var _71279910backToGameButton:Button;
      
      private var _1212225533backgroundBitmap:BitmapImage;
      
      private var _777356546blackMouseOutColumn:DataGridColumn;
      
      private var _93908710board:Board;
      
      private var _1610736901boardBox:VBox;
      
      private var _1575234173boardMenuBar1:HBox;
      
      private var _1575234172boardMenuBar2:HBox;
      
      private var _1818899535boardPane_B:HBox;
      
      private var _1818899525boardPane_L:VBox;
      
      private var _1818899519boardPane_R:VDividedBox;
      
      private var _1841282765boardWrapper:Box;
      
      private var _499196034chatMessage1:TextInput;
      
      private var _499196035chatMessage2:TextInput;
      
      private var _1798571136checkLobbyButton:MyMenuButton;
      
      private var _94755854clock:WorldClockGadget;
      
      private var _312699062closeButton:MyMenuButton;
      
      private var _1203236063errorMessage:Label;
      
      private var _489642559expRankingGrid:DataGrid;
      
      private var _2000943450expRankingGroup:RadioButtonGroup;
      
      private var _797698798forwardAllButton:Button;
      
      private var _1463765005forwardOneButton:Button;
      
      private var _1593390062gameListBlackRenderer:ClassFactory;
      
      private var _1500499734gameListGrid:DataGrid;
      
      private var _38526299gameListStatusRenderer:ClassFactory;
      
      private var _741861354gameListWatchersRenderer:ClassFactory;
      
      private var _2037071420gameListWhiteRenderer:ClassFactory;
      
      private var _371953899giveHostButton:MyMenuButton;
      
      private var _1691830373greetButton:GreetButton;
      
      private var _835984199hideLogin:Fade;
      
      private var _1766104866impasseButton:MyMenuButton;
      
      private var _218376129kifuButton:MyMenuButton;
      
      private var _804344867kifuDataGrid:DataGrid;
      
      private var _1364012333kifuSearchBlackRenderer:ClassFactory;
      
      private var _988841924kifuSearchFromChooser:DateChooser;
      
      private var _1523469413kifuSearchGrid:DataGrid;
      
      private var _1523485544kifuSearchHBox:HBox;
      
      private var _406149249kifuSearchOpponentText:TextInput;
      
      private var _652267587kifuSearchPlayerText:TextInput;
      
      private var _265131253kifuSearchToChooser:DateChooser;
      
      private var _699506519kifuSearchWhiteRenderer:ClassFactory;
      
      private var _1005982551languageSelector:LanguageSelector;
      
      private var _1873449493lobbyBox:VBox;
      
      private var _422097181lobbyChatVBox:VBox;
      
      private var _200110673lobbyChatVBox2:VBox;
      
      private var _2052472519lobbyHBox:HBox;
      
      private var _910762626lobbyMenuBar:HBox;
      
      private var _778484565lobbyPane_L:VDividedBox;
      
      private var _778484559lobbyPane_R:VDividedBox;
      
      private var _2022732194loginBox:VBox;
      
      private var _829165563loginButton:MyButton;
      
      private var _647901278loginMessage:Label;
      
      private var _1800036860loginTypeGroup:RadioButtonGroup;
      
      private var _1800116565loginTypeGuest:RadioButton;
      
      private var _1868932827loginTypeRegistered:RadioButton;
      
      private var _1718514316loginname:TextInput;
      
      private var _1255627100logoutButton:MyMenuButton;
      
      private var _1572734407lossesColumn:DataGridColumn;
      
      private var _1703153366mainViewStack:ViewStack;
      
      private var _1747762009noMusicCheckBox:CheckBox;
      
      private var _799977206optionButton1:MyMenuButton;
      
      private var _799977205optionButton2:MyMenuButton;
      
      private var _1216985755password:TextInput;
      
      private var _1636807074percentageRankingGrid:DataGrid;
      
      private var _366892378playerListCountryRenderer:ClassFactory;
      
      private var _616206650playerListFlagAndNameRenderer:ClassFactory;
      
      private var _634153261playerListNameRenderer:ClassFactory;
      
      private var _1933942065playerSearchGrid:DataGrid;
      
      private var _1933958196playerSearchHBox:VBox;
      
      private var _1795547489playerSearchNameText:TextInput;
      
      private var _1746766310queryButton:MyMenuButton;
      
      private var _181915345radioKifuListen:RadioButton;
      
      private var _13931697radioKifuReplay:RadioButton;
      
      private var _1371011825rankRenderer:ClassFactory;
      
      private var _656933058rankingCountryList:List;
      
      private var _136497291rankingFlagLoader:SWFLoader;
      
      private var _1100058911rankingSearchHBox:HBox;
      
      private var _92356200rankingTabNavigator:TabNavigator;
      
      private var _1967173732rateRankingGrid:DataGrid;
      
      private var _2033767917refreshButton:MyMenuButton;
      
      private var _2071402172rematchButton:MyMenuButton;
      
      private var _1238165054resignButton:MyMenuButton;
      
      private var _1217410228reverseButton:MyMenuButton;
      
      private var _826874440rewindAllButton:Button;
      
      private var _1206629053rewindOneButton:Button;
      
      private var _195990540savelogin:CheckBox;
      
      private var _594959488searchAccordion:Accordion;
      
      private var _1944266759searchKifuButton:MyButton;
      
      private var _1435296390searchKifuCountLabel:Label;
      
      private var _553648836searchPanel:Panel;
      
      private var _1202274501searchPlayerButton:MyButton;
      
      private var _240687680searchRankingButton:MyButton;
      
      private var _779117608serverImage:Image;
      
      private var _776703631serverLabel:Label;
      
      private var _1515573607serverListGrid:DataGrid;
      
      private var _2120519268serverListRenderer:ClassFactory;
      
      private var _2047555189shareKifuButton3:MyButton;
      
      private var _339360727showBots:CheckBox;
      
      private var _1921025428showLogin:Fade;
      
      private var _1862862099sidePanel:VBox;
      
      private var _1943111220startButton:MyMenuButton;
      
      private var _15851970streakRankingGrid:DataGrid;
      
      private var _12676004titleBanner:Image;
      
      private var _119694664totalRankingGrid:DataGrid;
      
      private var _577340911userListGrid:DataGrid;
      
      private var _1230023179userMessage1:TextArea;
      
      private var _1230023178userMessage2:TextArea;
      
      private var _120604420versionLabel:Label;
      
      private var _1972552319voiceBar:Canvas;
      
      private var _544946428voiceButton:VoiceButton;
      
      private var _1195857914waiterListGrid:DataGrid;
      
      private var _2120433362waiterListNameRenderer:ClassFactory;
      
      private var _1619070240watcherListGrid:DataGrid;
      
      private var _209868875webSystemButton:MyMenuButton;
      
      private var _53945768whiteMouseOutColumn:DataGridColumn;
      
      private var _172565728winRankingGrid:DataGrid;
      
      private var _1023853133winsColumn:DataGridColumn;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public const VERSION:String = Config.VERSION;
      
      private const IMAGE_DIRECTORY:String = "https://81dojo.com/dojo/images/";
      
      private var _today:Date;
      
      private const THIS_MONTH:String = String(this._today.month + 1);
      
      private const ratingChangeDate:Date = new Date("2013/06/04");
      
      private var _servers:Array;
      
      public var serverName:String;
      
      private var _so:SharedObject;
      
      private var _client:CsaShogiClient;
      
      private var _engineRelay:EngineRelayClient;
      
      private var _api:ApiClient;
      
      private var _viewerAlone:Boolean;
      
      private var _487945927_game_name:String;
      
      private var _user_list:Array;
      
      private var _users:Object;
      
      private var _waiter_list:Array;
      
      private var _game_list:Array;
      
      private var _games:Object;
      
      private var _watcher_list:Array;
      
      private var _1648523227_watcherTitle:String;
      
      private var _kifu_search_list:Array;
      
      private var _player_search_list:Array;
      
      private var _ranking_rate_list:Array;
      
      private var _ranking_wins_list:Array;
      
      private var _ranking_total_list:Array;
      
      private var _ranking_percentage_list:Array;
      
      private var _ranking_streak_list:Array;
      
      private var _ranking_exp_list:Array;
      
      private var _gameHistories:Array;
      
      private var _declined_list:Array;
      
      private var _auto_decline_list:Array;
      
      private var _1747812959login_name:String;
      
      private var _isGuest:Boolean;
      
      private var _watch_game:Object;
      
      private var _challengeUser:Object;
      
      private var _monitoring:Boolean;
      
      private var _waiting:Boolean = false;
      
      private var _challenging:Boolean = false;
      
      private var _myMoveSent:Boolean = false;
      
      private var _shareKifuEnabled:Boolean = false;
      
      private var _gameAccepted:Boolean = false;
      
      private var _rematching:Boolean = false;
      
      private var _leaving:Boolean = false;
      
      private var _panelReplayColor:uint = 14505216;
      
      private var _winnerInfoBoxColor:uint = 16746496;
      
      private var _study_notified:Boolean = false;
      
      private var _status_disconnected:Boolean = false;
      
      private var _nOpponentDisconnect:int = 0;
      
      private var _wins_session:int = 0;
      
      private var _losses_session:int = 0;
      
      private var _games_session:Array;
      
      private var _1648367051_myRate:int;
      
      private var _874182773_mileage:int;
      
      private var _premium:int = 0;
      
      private var _mileForFix:int = 0;
      
      private var _1480455047_class:String = "";
      
      private var _webSystemMenu:Menu;
      
      private var _optionMenu:Menu;
      
      private var _kifuMenu:Menu;
      
      private var _positionQueryMenu:Menu;
      
      private var _music_opening:Sound;
      
      private var _openingMusicChannel:SoundChannel;
      
      private var _openingMusicTrans:SoundTransform;
      
      private var _openingMusicFadeMode:int;
      
      private var Sound_login:Class;
      
      private var _sound_login:Sound;
      
      private var Sound_start:Class;
      
      private var _sound_start:Sound;
      
      private var Sound_win:Class;
      
      private var _sound_win:Sound;
      
      private var Sound_lose:Class;
      
      private var _sound_lose:Sound;
      
      private var Sound_chat1:Class;
      
      private var _sound_chat1:Sound;
      
      private var Sound_chat2:Class;
      
      private var _sound_chat2:Sound;
      
      private var Sound_chat3:Class;
      
      private var _sound_chat3:Sound;
      
      private var Sound_chat4:Class;
      
      private var _sound_chat4:Sound;
      
      private var Sound_door_open:Class;
      
      private var _sound_door_open:Sound;
      
      private var Sound_door_close:Class;
      
      private var _sound_door_close:Sound;
      
      private var Sound_challenger:Class;
      
      private var Sound_invitation:Class;
      
      private var _back_tile:Class;
      
      private var _icon_earth:Class;
      
      private var _icon_moon:Class;
      
      private var _icon_mars:Class;
      
      private var _icon_venus:Class;
      
      private var _icon_mercury:Class;
      
      private var _icon_saturn:Class;
      
      private var _icon_jupiter:Class;
      
      private var _icon_copy:Class;
      
      private var _icon_save:Class;
      
      private var _icon_kyokumenpedia:Class;
      
      private var _icon_twitter:Class;
      
      private var _icon_facebook:Class;
      
      private var _icon_load:Class;
      
      private var _sound_challenger:Sound;
      
      private var _sound_invitation:Sound;
      
      private var _end_sound_play:Boolean = true;
      
      private var _chat_sound1_play:Boolean = true;
      
      private var _chat_sound2_play:Boolean = true;
      
      private var _prev_piece_type:int;
      
      private var _pmAutoOpen:Boolean = false;
      
      private var _accept_arrows:Boolean = true;
      
      private var _arrow_color:uint = 52224;
      
      private var _notify_blind:Boolean = false;
      
      private var _nGamesAnalysis:int = 50;
      
      private var _levelEnglish:int = 0;
      
      private var _levelStudy:int = 0;
      
      private var _receive_kifu_comment:Boolean = false;
      
      private var _board_size_type:int = 0;
      
      private var _ignore_list:Array;
      
      private var _favorite_list:Array;
      
      private var _colleague_list:Array;
      
      private var _tournament_opponent_list:Array;
      
      private var _chat_auto_scroll1:Boolean = true;
      
      private var _chat_auto_scroll2:Boolean = true;
      
      private var _userMessageScrollPos1:int;
      
      private var _userMessageScrollPos2:int;
      
      private var _initPositionStr:String;
      
      private var _idleTimer:Timer;
      
      private var _pmRingTimer:Timer;
      
      private var _keepAliveTimer:Timer;
      
      private var _hourMileTimer:Timer;
      
      private var _twitterButtonTimer:Timer;
      
      private var _facebookButtonTimer:Timer;
      
      private var _losersCloseButtonTimer:Timer;
      
      private var _challengeCancelTimer:Timer;
      
      private var _acceptedCancelTimer:Timer;
      
      private var _myMoveSentTimer:Timer;
      
      private var _sendStudyTimer:Timer;
      
      private var _sendTypingTimer:Timer;
      
      private var _soundFadeTimer:Timer;
      
      private var _sendStudyText:String;
      
      private var _selfProvisional:Boolean = false;
      
      private var _infoFetcher:InfoFetcher;
      
      private var _pmLog:Object;
      
      private var _pmRingBuffer:Array;
      
      private var _pmGameLog:String = "";
      
      private var _allowWatcherChat:Boolean = false;
      
      private var _adminLog:String = "";
      
      private var _chatHistory:Array;
      
      private var _nHistory:int = 0;
      
      private var _queryPosition:Kyokumen;
      
      private var _mouseX:Number;
      
      private var _mouseY:Number;
      
      private var _kifuRef:FileReference;
      
      private var _debug:Boolean = false;
      
      private var _nDebugClick:int = 0;
      
      private var _notifyOnCloseGame:Boolean = false;
      
      private var _optionWindow:OptionDialog;
      
      private var _newGameWindow:NewGameForm;
      
      private var _playerInfoWindows:Object;
      
      private var _playerDetailWindow:PlayerDetailWindow;
      
      private var _challengerAlertWindow:ChallengerAlertWindow;
      
      private var _invitationAlertWindow:InvitationAlertWindow;
      
      private var _gameResultWindow:GameResultWindow;
      
      private var _kifuShareWindow:KifuShareWindow;
      
      private var _impasseStatusWindow:ImpasseStatusWindow;
      
      private var _disconnectAlertWindow:DisconnectAlertWindow;
      
      private var _adminPanelWindow:AdminPanelWindow;
      
      mx_internal var _EightyOneShogi_StylesInit_done:Boolean = false;
      
      private var _embed_mxml_images_back_tile4_png_1668398100:Class;
      
      private var _embed_mxml_images_icon_hat2_grey_png_2066373442:Class;
      
      private var _embed_mxml_images_icon_web2_png_107132642:Class;
      
      private var _embed_mxml_images_icon_mute_png_2038353292:Class;
      
      private var _embed_mxml_images_icon_door_grey_png_1173725868:Class;
      
      private var _embed_mxml_images_icon_left_png_1055100592:Class;
      
      private var _embed_mxml_images_icon_hat2_png_22818128:Class;
      
      private var _embed_mxml_images_icon_one_png_1166098304:Class;
      
      private var _embed_mxml_images_icon_eraser_png_1471600754:Class;
      
      private var _embed_mxml_images_icon_flip_png_1048654732:Class;
      
      private var _embed_mxml_images_icon_greet_png_2025193794:Class;
      
      private var _embed_mxml_images_icon_refresh_png_463066594:Class;
      
      private var _embed_mxml_images_icon_right_png_1728675412:Class;
      
      private var _embed_mxml_images_icon_one_grey_png_2024128242:Class;
      
      private var _embed_mxml_images_icon_voice_png_411714000:Class;
      
      private var _embed_mxml_images_icon_share_png_2073149102:Class;
      
      private var _embed_mxml_images_icon_search_png_1106458674:Class;
      
      private var _embed_mxml_images_icon_gear_png_520012672:Class;
      
      private var _embed_mxml_images_favicon_gif_644301900:Class;
      
      private var _embed_mxml_images_icon_door_png_24956542:Class;
      
      private var _embed_mxml_images_icon_flip_grey_png_2047763666:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EightyOneShogi()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._today = new Date();
         this._servers = [];
         this._so = SharedObject.getLocal("81dojo","/");
         this._user_list = [];
         this._users = new Object();
         this._waiter_list = [];
         this._game_list = [];
         this._games = new Object();
         this._watcher_list = [];
         this._games_session = [];
         this._music_opening = new Sound(new URLRequest("https://81dojo.com/dojo/opening.mp3"));
         this.Sound_login = EightyOneShogi_Sound_login;
         this._sound_login = new this.Sound_login();
         this.Sound_start = EightyOneShogi_Sound_start;
         this._sound_start = new this.Sound_start();
         this.Sound_win = EightyOneShogi_Sound_win;
         this._sound_win = new this.Sound_win();
         this.Sound_lose = EightyOneShogi_Sound_lose;
         this._sound_lose = new this.Sound_lose();
         this.Sound_chat1 = EightyOneShogi_Sound_chat1;
         this._sound_chat1 = new this.Sound_chat1();
         this.Sound_chat2 = EightyOneShogi_Sound_chat2;
         this._sound_chat2 = new this.Sound_chat2();
         this.Sound_chat3 = EightyOneShogi_Sound_chat3;
         this._sound_chat3 = new this.Sound_chat3();
         this.Sound_chat4 = EightyOneShogi_Sound_chat4;
         this._sound_chat4 = new this.Sound_chat4();
         this.Sound_door_open = EightyOneShogi_Sound_door_open;
         this._sound_door_open = new this.Sound_door_open();
         this.Sound_door_close = EightyOneShogi_Sound_door_close;
         this._sound_door_close = new this.Sound_door_close();
         this.Sound_challenger = EightyOneShogi_Sound_challenger;
         this.Sound_invitation = EightyOneShogi_Sound_invitation;
         this._back_tile = EightyOneShogi__back_tile;
         this._icon_earth = EightyOneShogi__icon_earth;
         this._icon_moon = EightyOneShogi__icon_moon;
         this._icon_mars = EightyOneShogi__icon_mars;
         this._icon_venus = EightyOneShogi__icon_venus;
         this._icon_mercury = EightyOneShogi__icon_mercury;
         this._icon_saturn = EightyOneShogi__icon_saturn;
         this._icon_jupiter = EightyOneShogi__icon_jupiter;
         this._icon_copy = EightyOneShogi__icon_copy;
         this._icon_save = EightyOneShogi__icon_save;
         this._icon_kyokumenpedia = EightyOneShogi__icon_kyokumenpedia;
         this._icon_twitter = EightyOneShogi__icon_twitter;
         this._icon_facebook = EightyOneShogi__icon_facebook;
         this._icon_load = EightyOneShogi__icon_load;
         this._sound_challenger = new this.Sound_challenger();
         this._sound_invitation = new this.Sound_invitation();
         this._ignore_list = [];
         this._favorite_list = [];
         this._colleague_list = [];
         this._tournament_opponent_list = [];
         this._twitterButtonTimer = new Timer(600000,1);
         this._facebookButtonTimer = new Timer(600000,1);
         this._soundFadeTimer = new Timer(150,19);
         this._pmLog = new Object();
         this._pmRingBuffer = [];
         this._chatHistory = [];
         this._queryPosition = new Kyokumen();
         this._playerInfoWindows = new Object();
         this._embed_mxml_images_back_tile4_png_1668398100 = EightyOneShogi__embed_mxml_images_back_tile4_png_1668398100;
         this._embed_mxml_images_icon_hat2_grey_png_2066373442 = EightyOneShogi__embed_mxml_images_icon_hat2_grey_png_2066373442;
         this._embed_mxml_images_icon_web2_png_107132642 = EightyOneShogi__embed_mxml_images_icon_web2_png_107132642;
         this._embed_mxml_images_icon_mute_png_2038353292 = EightyOneShogi__embed_mxml_images_icon_mute_png_2038353292;
         this._embed_mxml_images_icon_door_grey_png_1173725868 = EightyOneShogi__embed_mxml_images_icon_door_grey_png_1173725868;
         this._embed_mxml_images_icon_left_png_1055100592 = EightyOneShogi__embed_mxml_images_icon_left_png_1055100592;
         this._embed_mxml_images_icon_hat2_png_22818128 = EightyOneShogi__embed_mxml_images_icon_hat2_png_22818128;
         this._embed_mxml_images_icon_one_png_1166098304 = EightyOneShogi__embed_mxml_images_icon_one_png_1166098304;
         this._embed_mxml_images_icon_eraser_png_1471600754 = EightyOneShogi__embed_mxml_images_icon_eraser_png_1471600754;
         this._embed_mxml_images_icon_flip_png_1048654732 = EightyOneShogi__embed_mxml_images_icon_flip_png_1048654732;
         this._embed_mxml_images_icon_greet_png_2025193794 = EightyOneShogi__embed_mxml_images_icon_greet_png_2025193794;
         this._embed_mxml_images_icon_refresh_png_463066594 = EightyOneShogi__embed_mxml_images_icon_refresh_png_463066594;
         this._embed_mxml_images_icon_right_png_1728675412 = EightyOneShogi__embed_mxml_images_icon_right_png_1728675412;
         this._embed_mxml_images_icon_one_grey_png_2024128242 = EightyOneShogi__embed_mxml_images_icon_one_grey_png_2024128242;
         this._embed_mxml_images_icon_voice_png_411714000 = EightyOneShogi__embed_mxml_images_icon_voice_png_411714000;
         this._embed_mxml_images_icon_share_png_2073149102 = EightyOneShogi__embed_mxml_images_icon_share_png_2073149102;
         this._embed_mxml_images_icon_search_png_1106458674 = EightyOneShogi__embed_mxml_images_icon_search_png_1106458674;
         this._embed_mxml_images_icon_gear_png_520012672 = EightyOneShogi__embed_mxml_images_icon_gear_png_520012672;
         this._embed_mxml_images_favicon_gif_644301900 = EightyOneShogi__embed_mxml_images_favicon_gif_644301900;
         this._embed_mxml_images_icon_door_png_24956542 = EightyOneShogi__embed_mxml_images_icon_door_png_24956542;
         this._embed_mxml_images_icon_flip_grey_png_2047763666 = EightyOneShogi__embed_mxml_images_icon_flip_grey_png_2047763666;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._EightyOneShogi_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_EightyOneShogiWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EightyOneShogi[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._EightyOneShogi_BasicLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EightyOneShogi_Array1_c);
         this._EightyOneShogi_RadioButtonGroup2_i();
         this._EightyOneShogi_RadioButtonGroup3_i();
         this._EightyOneShogi_ClassFactory2_i();
         this._EightyOneShogi_ClassFactory4_i();
         this._EightyOneShogi_ClassFactory5_i();
         this._EightyOneShogi_ClassFactory3_i();
         this._EightyOneShogi_Fade2_i();
         this._EightyOneShogi_ClassFactory11_i();
         this._EightyOneShogi_ClassFactory12_i();
         this._EightyOneShogi_RadioButtonGroup1_i();
         this._EightyOneShogi_ClassFactory7_i();
         this._EightyOneShogi_ClassFactory8_i();
         this._EightyOneShogi_ClassFactory6_i();
         this._EightyOneShogi_ClassFactory10_i();
         this._EightyOneShogi_ClassFactory1_i();
         this._EightyOneShogi_Fade1_i();
         this._EightyOneShogi_ClassFactory9_i();
         this.addEventListener("preinitialize",this.___EightyOneShogi_Application1_preinitialize);
         this.addEventListener("creationComplete",this.___EightyOneShogi_Application1_creationComplete);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EightyOneShogi._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 15267258;
         };
         mx_internal::_EightyOneShogi_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function preInitApp() : void
      {
         LanguageSelector.readDefault(this.parameters["lan"] && this.parameters["lan"] == "ja");
         this.systemManager.stage.quality = "medium";
      }
      
      private function initApp() : void
      {
         Security.loadPolicyFile("https://81dojo.com/crossdomain.xml");
         Security.allowDomain("*");
         if(this.parameters["lan"])
         {
            if(this.parameters["lan"] == "ja")
            {
               this.languageSelector.selectedIndex = 0;
            }
            else if(this.parameters["lan"] == "zh")
            {
               this.languageSelector.selectedIndex = 2;
            }
            else
            {
               this.languageSelector.selectedIndex = 1;
            }
         }
         else
         {
            this.languageSelector.selectedIndex = 1;
         }
         this._infoFetcher = new InfoFetcher();
         ToolTipManager.showDelay = 200;
         Alert.buttonHeight = 30;
         Alert.yesLabel = LanguageSelector.EJ("Yes","はい");
         Alert.noLabel = LanguageSelector.EJ("No","いいえ");
         Alert.cancelLabel = LanguageSelector.EJ("Cancel","キャンセル");
         this.board.setMoveCallback(this._playerMove);
         this.board.setTimeoutCallback(this._checkTimeout);
         this.board.setTimerLagCallback(this._checkTimerLag);
         this.board.setAddMyArrowCallback(this._addMyArrow);
         this.board.setHoverPieceCallback(this._hoverPiece);
         this.board.setGrabPieceCallback(this._grabPiece);
         this._api = new ApiClient();
         if(this.parameters["kid"])
         {
            this.login_name = "guest";
            this.mainViewStack.selectedIndex = 2;
            this._viewerAlone = true;
            this._api.addEventListener(ApiClient.KIFU_DETAIL,this._handleKifuDetail);
            this._api.kifuDetail(this.parameters["kid"]);
            this.board.kid = this.parameters["kid"];
            if(this.parameters["notation"])
            {
               Movement.listType = this.parameters["notation"];
            }
         }
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback("close_browser",this.closeBrowser);
            ExternalInterface.addCallback("resize_browser",this.resizeBrowser);
            ExternalInterface.addCallback("replay_jump",this.replayJump);
         }
         if(this._viewerAlone)
         {
            return;
         }
         this._client = new CsaShogiClient();
         this._engineRelay = new EngineRelayClient();
         this.serverListGrid.dataProvider = {"name":LanguageSelector.EJ("Loading...","読み込み中...")};
         if(this._so.data.savelogin)
         {
            this.savelogin.selected = true;
            if(this._so.data.login)
            {
               this.loginname.text = this._so.data.login;
            }
            if(this._so.data.pass)
            {
               this.password.text = this._so.data.pass;
            }
            if(this._so.data.language)
            {
               this.languageSelector.selectedIndex = this._so.data.language;
            }
         }
         if(this._so.data.noMusic)
         {
            this.noMusicCheckBox.selected = this._so.data.noMusic;
         }
         this.languageSelector.loadLanguage();
         this.voiceButton.loadMenu();
         this._api.addEventListener(ApiClient.READ_SERVER,this._handleReadServer);
         this._api.readServer();
         this._soundFadeTimer.addEventListener(TimerEvent.TIMER,this._handleSoundFadeTimer);
         this._playOpeningMusic(true);
         this.showLogin.play();
         var _loc1_:Date = new Date();
         this.kifuSearchToChooser.selectedDate = _loc1_;
         _loc1_.setTime(_loc1_.getTime() - 1000 * 60 * 60 * 24 * 7);
         this.kifuSearchFromChooser.selectedDate = _loc1_;
         this.addEventListener(Event.ACTIVATE,this._handleActivate);
         this.addEventListener(Event.DEACTIVATE,this._handleDeactivate);
         this._client.addEventListener(CsaShogiClient.CONNECTED,this._handleConnected);
         this._client.addEventListener(CsaShogiClient.SERVER_DISCONNECT,this._handleServerDisconnect);
         this._client.addEventListener(CsaShogiClient.LOGIN,this._handleLoggedIn);
         this._client.addEventListener(CsaShogiClient.LOGIN_FAILED,this._handleLoginFailed);
         this._client.addEventListener(CsaShogiClient.LOGOUT_COMPLETED,this._handleLogout);
         this._client.addEventListener(CsaShogiClient.GAME_STARTED,this._handleGameStarted);
         this._client.addEventListener(CsaShogiClient.REJECT,this._handleGameRejected);
         this._client.addEventListener(CsaShogiClient.GAME_END,this._handleGameEnd);
         this._client.addEventListener(CsaShogiClient.CHAT,this._handleChat);
         this._client.addEventListener(CsaShogiClient.GAMECHAT,this._handleGameChat);
         this._client.addEventListener(CsaShogiClient.PRIVATECHAT,this._handlePrivateChat);
         this._client.addEventListener(CsaShogiClient.OFFLINE_PM,this._handleOfflinePM);
         this._client.addEventListener(CsaShogiClient.MOVE,this._handleMove);
         this._client.addEventListener(CsaShogiClient.WHO,this._handleWho);
         this._client.addEventListener(CsaShogiClient.MONITOR,this._handleMonitor);
         this._client.addEventListener(CsaShogiClient.RECONNECT,this._handleReconnect);
         this._client.addEventListener(CsaShogiClient.LIST,this._handleList);
         this._client.addEventListener(CsaShogiClient.GAME_SUMMARY,this._handleGameSummary);
         this._client.addEventListener(CsaShogiClient.WATCHERS,this._handleWatchers);
         this._client.addEventListener(CsaShogiClient.ENTER,this._handleEnter);
         this._client.addEventListener(CsaShogiClient.LEAVE,this._handleLeave);
         this._client.addEventListener(CsaShogiClient.DISCONNECT,this._handleDisconnect);
         this._client.addEventListener(CsaShogiClient.CHALLENGE,this._handleChallenger);
         this._client.addEventListener(CsaShogiClient.ACCEPT,this._handleAccept);
         this._client.addEventListener(CsaShogiClient.DECLINE,this._handleDecline);
         this._client.addEventListener(CsaShogiClient.LOBBY_IN,this._handleLobbyIn);
         this._client.addEventListener(CsaShogiClient.LOBBY_OUT,this._handleLobbyOut);
         this._client.addEventListener(CsaShogiClient.START,this._handleStart);
         this._client.addEventListener(CsaShogiClient.GAME,this._handleGame);
         this._client.addEventListener(CsaShogiClient.RESULT,this._handleResult);
         this._client.addEventListener(CsaShogiClient.SETRATE,this._handleSetRate);
         this._client.addEventListener(CsaShogiClient.MILE,this._handleMile);
         this._client.addEventListener(CsaShogiClient.EXP,this._handleExp);
         this._client.addEventListener(CsaShogiClient.ADMIN_MONITOR,this._handleAdminMonitor);
         this._client.addEventListener(CsaShogiClient.ERROR,this._handleError);
         this._engineRelay.addEventListener("engine",this._handleEngineResponse);
         this._api.addEventListener(ApiClient.KIFU_SEARCH,this._handleKifuSearch);
         this._api.addEventListener(ApiClient.KIFU_DETAIL,this._handleKifuDetail);
         this._api.addEventListener(ApiClient.PLAYER_SEARCH,this._handlePlayerSearch);
         this._api.addEventListener(ApiClient.PLAYER_DETAIL,this._handlePlayerDetail);
         this._api.addEventListener(ApiClient.RANKING_SEARCH,this._handleRankingSearch);
         this._api.addEventListener(ApiClient.LOAD_HISTORY,this._handleLoadHistory);
         this._api.addEventListener(ApiClient.NOT_FOUND,this._handleSearchNotFound);
         this._api.addEventListener(ApiClient.ADMIN_MONITOR,this._handleAdminMonitor);
         this._api.addEventListener(ApiClient.FOLLOW,this._handleFollow);
         this._api.addEventListener(ApiClient.EVALUATED,this._handleEvaluated);
         this.chatMessage1.addEventListener(FlexEvent.ENTER,this._handleSendChat1);
         this.chatMessage1.addEventListener(KeyboardEvent.KEY_DOWN,this._handleKeyDown);
         this.chatMessage2.addEventListener(FlexEvent.ENTER,this._handleSendChat2);
         this.chatMessage2.addEventListener(KeyboardEvent.KEY_DOWN,this._handleKeyDown);
         this.loginname.addEventListener(FlexEvent.ENTER,this._handleLogin);
         this.password.addEventListener(FlexEvent.ENTER,this._handleLogin);
         this.loginButton.addEventListener(MouseEvent.CLICK,this._handleLogin);
         this.userMessage1.addEventListener(TextEvent.LINK,this._handleTextClick);
         this.userMessage2.addEventListener(TextEvent.LINK,this._handleTextClick);
         this.playerSearchNameText.addEventListener(FlexEvent.ENTER,this._handlePlayerSearchEnter);
         this.board.name_labels[0].addEventListener(MouseEvent.DOUBLE_CLICK,this._gamePlayerInfo);
         this.board.name_labels[1].addEventListener(MouseEvent.DOUBLE_CLICK,this._gamePlayerInfo);
         this.greetButton.addEventListener(GreetButton.GREET,this._sendGreet);
         this.voiceButton.addEventListener(VoiceButton.VOICE_EVENT,this._handleVoiceEvent);
         this.voiceButton.addEventListener(VoiceButton.VOLUME_EVENT,this._handleVolumeEvent);
         this._user_list = [];
         this.userListGrid.dataProvider = this._user_list;
         this.addEventListener(Event.RESIZE,this._handleResize);
         this.dispatchEvent(new Event(Event.RESIZE));
      }
      
      private function _handleResize(param1:Event) : void
      {
         var _loc2_:MyMenuButton = null;
         if(this.width > 1550)
         {
            this.lobbyHBox.addChildAt(this.lobbyChatVBox,1);
         }
         else
         {
            this.lobbyPane_R.addChild(this.lobbyChatVBox);
         }
         this._resizeBoardView();
         for each(_loc2_ in this.lobbyMenuBar.getChildren())
         {
            _loc2_.minWidth = this.width / 12;
         }
         for each(_loc2_ in this.boardMenuBar1.getChildren())
         {
            _loc2_.minWidth = this.width / 15;
         }
         for each(_loc2_ in this.boardMenuBar2.getChildren())
         {
            _loc2_.minWidth = this.width / 15;
         }
      }
      
      private function _resizeBoardView() : void
      {
         if(this.width >= this.board.width * this.board.scaleX + 400 && this.height < this.board.height * this.board.scaleY + 230)
         {
            this.boardPane_B.addChildAt(this.sidePanel,0);
            this.boardPane_R.addChild(this.lobbyChatVBox2);
            this.boardPane_R.addChild(this.boardPane_B);
         }
         else
         {
            this.boardPane_L.addChild(this.boardPane_B);
            this.boardPane_B.addChild(this.lobbyChatVBox2);
            this.boardPane_R.addChild(this.sidePanel);
         }
      }
      
      private function _resetApp() : void
      {
         this._playOpeningMusic(true);
         this.showLogin.play();
         this._infoFetcher = new InfoFetcher();
         this.titleBanner.source = this.IMAGE_DIRECTORY + "81Dojo.jpg?" + this.VERSION;
         this.serverListGrid.dataProvider = {"name":LanguageSelector.EJ("Loading...","読み込み中...")};
         this._api.readServer();
         this.languageSelector.enabled = true;
      }
      
      private function _playOpeningMusic(param1:Boolean) : void
      {
         if(param1 && !this.noMusicCheckBox.selected)
         {
            this._openingMusicTrans = new SoundTransform(0.05,0);
            this._openingMusicChannel = this._music_opening.play(0,99999,this._openingMusicTrans);
            this._openingMusicFadeMode = 1;
            this._soundFadeTimer.reset();
            this._soundFadeTimer.start();
         }
         else if(this._openingMusicChannel)
         {
            this._openingMusicFadeMode = -1;
            this._soundFadeTimer.reset();
            this._soundFadeTimer.start();
         }
      }
      
      private function _handleSoundFadeTimer(param1:TimerEvent) : void
      {
         if(this._openingMusicFadeMode > 0)
         {
            this._openingMusicTrans.volume = this._openingMusicTrans.volume + 0.05;
         }
         else if(this._openingMusicFadeMode < 0)
         {
            this._openingMusicTrans.volume = this._openingMusicTrans.volume - 0.05;
            if(this._openingMusicTrans.volume <= 0 || this._soundFadeTimer.currentCount == this._soundFadeTimer.repeatCount)
            {
               this._openingMusicChannel.stop();
               return;
            }
         }
         this._openingMusicChannel.soundTransform = this._openingMusicTrans;
      }
      
      private function _toggleLoginMusic() : void
      {
         if(this.noMusicCheckBox.selected)
         {
            this._openingMusicChannel.stop();
            this._soundFadeTimer.stop();
         }
         this._so.data.noMusic = this.noMusicCheckBox.selected;
      }
      
      private function _handleConnected(param1:Event) : void
      {
         this.loginMessage.text = LanguageSelector.EJ("Logging in...","ログインしています...");
         this.login_name = !!this.loginTypeGuest.selected?"guest":this.loginname.text.replace(/\s/g,"");
         this._client.login(this.login_name,!!this.loginTypeGuest.selected?Config.GUEST_PASS:this.password.text);
      }
      
      private function _handleServerDisconnect(param1:Event) : void
      {
         this.closeButton.enabled = false;
         this.checkLobbyButton.enabled = false;
         this.refreshButton.enabled = false;
         this.logoutButton.enabled = false;
         this.chatMessage1.enabled = false;
         this.chatMessage2.enabled = false;
         this.startButton.enabled = false;
         this.optionButton1.enabled = false;
         this.optionButton2.enabled = false;
         this.resignButton.enabled = false;
         this.rematchButton.enabled = false;
         this.giveHostButton.enabled = false;
         this.queryButton.enabled = false;
         this.voiceButton.close();
         this.voiceButton.visible = false;
         this._writeUserMessage(LanguageSelector.lan.msg_disconnect_self,1,"#FF0000");
         this._writeUserMessage(LanguageSelector.lan.msg_disconnect_self,2,"#FF0000");
         Alert.show(LanguageSelector.lan.msg_disconnect_self,LanguageSelector.lan.stat_d,Alert.YES | Alert.NO,null,this._reloadYesNoHandler);
         this._hourMileTimer.stop();
      }
      
      private function _reloadYesNoHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES && ExternalInterface.available)
         {
            ExternalInterface.call("appletReload");
         }
      }
      
      private function _handleLoggedIn(param1:ServerMessageEvent) : void
      {
         var mileage_anual:int = 0;
         var premium_class:String = null;
         var class_names:Array = null;
         var analysis_games:Array = null;
         var e:ServerMessageEvent = param1;
         if(this.savelogin.selected)
         {
            this._so.data.savelogin = true;
            this._so.data.login = this.loginname.text;
            this._so.data.pass = this.password.text;
            this._so.data.language = this.languageSelector.selectedIndex;
            this._so.data.server = this.serverListGrid.selectedIndex;
         }
         if(!this._so.data.login_history)
         {
            this._so.data.login_history = new Array(this.loginname.text.toLowerCase());
         }
         else if(this._so.data.login_history.indexOf(this.loginname.text.toLowerCase()) < 0)
         {
            this._so.data.login_history.push(this.loginname.text.toLowerCase());
         }
         this._so.flush();
         var trans:SoundTransform = new SoundTransform(0.3,0);
         this.loginMessage.text = LanguageSelector.EJ("Logged in successfully","ログイン成功");
         this.hideLogin.play();
         this._playOpeningMusic(false);
         this.clock.start();
         this.addEventListener(MouseEvent.MOUSE_MOVE,this._idleClear(true));
         this.addEventListener(KeyboardEvent.KEY_DOWN,this._idleClear(false));
         if(InfoFetcher.isAdminLv1(this.login_name) || InfoFetcher.isAdminLv2(this.login_name))
         {
            this.adminButton.visible = true;
            this.adminButton.includeInLayout = true;
            this._client.adminOn();
            this._api.adminOn();
         }
         if(InfoFetcher.isAdminLv1(this.login_name))
         {
            this.winsColumn.visible = true;
            this.lossesColumn.visible = true;
            this.blackMouseOutColumn.visible = true;
            this.whiteMouseOutColumn.visible = true;
         }
         this.rankingCountryList.dataProvider = !!LanguageSelector.isJapanese()?InfoFetcher.country_list_names:InfoFetcher.country_list_names_en;
         this.rankingCountryList.selectedIndex = 0;
         this._leaving = false;
         if(!this._isGuest)
         {
            this._api.addEventListener(ApiClient.LOAD_OPTIONS,this._handleLoadOptions);
            this._api.loadOptions(this.login_name.toLowerCase());
         }
         this._api.loadTournament(this.login_name.toLowerCase());
         this._keepAliveTimer = new Timer(350,1);
         this._keepAliveTimer.addEventListener(TimerEvent.TIMER,this._handleKeepAlive);
         this._keepAliveTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleKeepAliveComplete);
         this._keepAliveTimer.start();
         this._pmRingTimer = new Timer(81000,1);
         this._pmRingTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handlePmRingTimer);
         this._idleTimer = new Timer(1800000,1);
         this._idleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleIdleTimer);
         this._hourMileTimer = new Timer(3600000,8);
         this._hourMileTimer.addEventListener(TimerEvent.TIMER,this._handleHourMileTimer);
         this._losersCloseButtonTimer = new Timer(5000,1);
         this._losersCloseButtonTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleLosersTimer);
         this._challengeCancelTimer = new Timer(30000,1);
         this._challengeCancelTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleChallengeCancelTimer);
         this._acceptedCancelTimer = new Timer(15000,1);
         this._acceptedCancelTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleAcceptedCancelTimer);
         this._myMoveSentTimer = new Timer(10000,2);
         this._myMoveSentTimer.addEventListener(TimerEvent.TIMER,this._handleMyMoveSentTimer);
         this._sendStudyTimer = new Timer(280,1);
         this._sendStudyTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleSendStudyTimer);
         this._sendTypingTimer = new Timer(2500,1);
         this._sendTypingTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this._handleSendTypingTimer);
         if(this.serverName == "EARTH" || this.serverName == "MOON")
         {
            this._hourMileTimer.start();
         }
         if(this._infoFetcher.initMessage != "")
         {
            this._writeUserMessage(LanguageSelector.EJ(this._infoFetcher.initMessage,this._infoFetcher.initMessageJp) + "\n",1,"#008800");
            if(this.VERSION != this._infoFetcher.newestVer)
            {
               this._writeUserMessage(LanguageSelector.EJ("CAUTION: This version is old! The newest is " + this._infoFetcher.newestVer + ". Please reload!\n","CAUTION: このアプリは最新バージョンではありません。最新は、" + this._infoFetcher.newestVer + "です。アプリの更新をお願いします。\n"),1,"#FF0000");
            }
         }
         this._isGuest = false;
         if(e.message.split(":")[0] != this.login_name)
         {
            this.login_name = e.message.split(":")[0];
            this._client.login_name = this.login_name;
            this._isGuest = true;
         }
         this._client.isGuest = this._isGuest;
         var rank:String = "a " + InfoFetcher.makeRankFromRating(e.message.split(":")[1]);
         if(parseInt(e.message.split(":")[3]) + parseInt(e.message.split(":")[4]) < 5)
         {
            rank = "a new player";
         }
         var i:int = 0;
         while(i < InfoFetcher.titleUser.length)
         {
            if(InfoFetcher.titleUser[i] == this.login_name.toLowerCase())
            {
               rank = "the " + InfoFetcher.titleName[i];
               break;
            }
            i++;
         }
         if(InfoFetcher.total_logins != 0 && InfoFetcher.total_games != 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("Total visitors on EARTH yesterday: ","昨日のEARTHサーバ来場者数: ") + InfoFetcher.total_logins + LanguageSelector.EJ(", total games played: ","名、　総対局数: ") + InfoFetcher.total_games + LanguageSelector.EJ("\n","局でした。 いつもご利用有難うございます。\n"),1,"#0000FF");
         }
         if(InfoFetcher.wins_static != 0 && InfoFetcher.wins_swinging != 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("Power map on EARTH yesterday　--　Static Rook vs Swinging Rook:　","昨日のEARTH勢力図　・・・　対抗形:　居飛車 ") + InfoFetcher.wins_static + LanguageSelector.EJ("wins - ","勝、　振り飛車 ") + InfoFetcher.wins_swinging + LanguageSelector.EJ("wins\n","勝\n"),1,"#0000FF");
         }
         this._myRate = parseInt(e.message.split(":")[1]);
         this._mileage = parseInt(e.message.split(":")[12]);
         if(this._isGuest)
         {
            this._writeUserMessage(LanguageSelector.EJ("Thank you for guest login. Your Guest-ID is \" ","ゲストログイン有難うございます。あなたのゲストIDは、「") + this.login_name + LanguageSelector.EJ(" \".\n","」です。\n"),1,"#FF0088",true);
            this._class = LanguageSelector.EJ("Guest","ゲスト");
            this._writeUserMessage(LanguageSelector.lan.msg_guestlogin + "\n\n",1,"#008800");
            this.chatMessage1.enabled = false;
            this.voiceButton.isGuest = true;
         }
         else
         {
            this._writeUserMessage(LanguageSelector.EJ("Your current status: R","現在のあなたの成績: R") + e.message.split(":")[1] + LanguageSelector.EJ(" (max:"," (最高:") + e.message.split(":")[11] + "), " + e.message.split(":")[3] + LanguageSelector.EJ(" win - ","勝 ") + e.message.split(":")[4] + LanguageSelector.EJ(" loss, ","敗, ") + Math.max(0,e.message.split(":")[5]) + LanguageSelector.EJ(" streak (best: ","連勝中 (最高: ") + e.message.split(":")[6] + LanguageSelector.EJ(")\n","連勝)\n"),1,"#008800",true);
            mileage_anual = parseInt(e.message.split(":")[13]);
            premium_class = e.message.split(":")[14];
            class_names = new Array(LanguageSelector.EJ("Regular","一般"),LanguageSelector.EJ("Bronze","ブロンズ"),LanguageSelector.EJ("Silver","シルバー"),LanguageSelector.EJ("Gold","ゴールド"),LanguageSelector.EJ("Diamond","ダイヤモンド"));
            analysis_games = new Array(50,100,200,300,500);
            if(premium_class.match(/[D4]/))
            {
               this._premium = 4;
            }
            else if(premium_class.match(/[G3]/))
            {
               this._premium = 3;
            }
            else if(premium_class.match(/[S2]/))
            {
               this._premium = 2;
            }
            else if(premium_class.match(/[B1]/))
            {
               this._premium = 1;
            }
            if(mileage_anual >= 15000)
            {
               this._premium = Math.max(this._premium,3);
            }
            else if(mileage_anual >= 7500)
            {
               this._premium = Math.max(this._premium,2);
            }
            else if(mileage_anual >= 1500)
            {
               this._premium = Math.max(this._premium,1);
            }
            this._class = class_names[this._premium] + LanguageSelector.EJ(" class","会員");
            if(this._premium > 0)
            {
               this._writeUserMessage(LanguageSelector.EJ("You have " + this._class + " status. Thank you for choosing 81Dojo.\n",this._class + " " + this.login_name + "様、いつもご利用有難うございます。＜(_ _)＞\n"),1,"#FFBB00",true);
            }
            this._nGamesAnalysis = analysis_games[this._premium];
            if(this._premium == 3)
            {
               InfoFetcher.broadcasterLv2.push(this.login_name.toLowerCase());
            }
            if(this._premium == 4)
            {
               InfoFetcher.broadcasterLv1.push(this.login_name.toLowerCase());
            }
            if(this._premium >= 1)
            {
               this.board.circleEnabled = true;
            }
            this._writeUserMessage(LanguageSelector.EJ("◆ <a href=\"event:mile\">81Dojo Mileage:　" + this._mileage + " D-Miles ◆</a>\n","☗<a href=\"event:mile\">81道場マイレージ☗　" + this._mileage + " Dマイル</a>\n"),1,"#FF3388");
            if(parseInt(e.message.split(":")[2]) <= 4)
            {
               this._writeUserMessage(LanguageSelector.EJ("Please register your country\n","国名を登録して下さい。\n"),1,"#FF0000");
            }
            if(parseInt(e.message.split(":")[3]) + parseInt(e.message.split(":")[4]) < 3)
            {
               this._writeUserMessage(LanguageSelector.lan.msg_newlogin + "\n\n",1,"#008800");
            }
         }
         this._watcherTitle = LanguageSelector.lan.watchers + " (0)";
         this.voiceButton.myName = this.login_name;
         this.voiceButton.loadMenu();
         this._declined_list = [];
         this._auto_decline_list = [];
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.EJ("Ranking","ランキング"),
            "selectHandler":function(param1:MenuEvent):void
            {
               _jumpToWebSystem("ranking");
            }
         },{
            "label":LanguageSelector.EJ("Kifu search","棋譜検索"),
            "selectHandler":function(param1:MenuEvent):void
            {
               _jumpToWebSystem("kifus/search/form");
            }
         },{
            "label":LanguageSelector.EJ("World Forum","国際掲示板"),
            "selectHandler":function(param1:MenuEvent):void
            {
               _jumpToWebSystem("forums");
            }
         },{
            "label":LanguageSelector.EJ("Tournaments","大会"),
            "selectHandler":function(param1:MenuEvent):void
            {
               _jumpToWebSystem("tournaments");
            }
         },{
            "label":LanguageSelector.EJ("Clubs","サークル"),
            "selectHandler":function(param1:MenuEvent):void
            {
               _jumpToWebSystem("circles");
            }
         },{
            "label":LanguageSelector.EJ("Player search","ユーザ検索"),
            "selectHandler":function(param1:MenuEvent):void
            {
               _jumpToWebSystem("players/search/form");
            }
         }]);
         this._webSystemMenu = Menu.createMenu(null,collectionMenuData);
         this._webSystemMenu.addEventListener(MenuEvent.ITEM_CLICK,this._handleMenuClick);
         collectionMenuData = new ArrayCollection([{
            "label":LanguageSelector.EJ("Personal Settings...","個人設定..."),
            "selectHandler":function(param1:MenuEvent):void
            {
               _showOptions();
            }
         },{
            "label":LanguageSelector.lan.mute,
            "type":"check",
            "selectHandler":function(param1:MenuEvent):void
            {
               _mute(param1.item.toggled);
            }
         },{
            "label":LanguageSelector.lan.reject_invitation,
            "type":"check",
            "toggled":this._so.data.reject_invitation,
            "enabled":!this._isGuest,
            "selectHandler":function(param1:MenuEvent):void
            {
               _rejectInvitation(param1.item.toggled);
            }
         }]);
         this._optionMenu = Menu.createMenu(null,collectionMenuData);
         this._optionMenu.addEventListener(MenuEvent.ITEM_CLICK,this._handleMenuClick);
         if(this._so.data.reject_invitation)
         {
            this._rejectInvitation(true);
         }
      }
      
      private function _handleLoginFailed(param1:ServerMessageEvent) : void
      {
         this.loginMessage.text = "";
         this.errorMessage.text = LanguageSelector.lan[param1.message];
         MyButton.playCancel();
         this.loginButton.enabled = true;
      }
      
      private function _handleLogout(param1:ServerMessageEvent) : void
      {
         this._keepAliveTimer.stop();
         this._idleTimer.stop();
         this._hourMileTimer.stop();
         this._keepAliveTimer.removeEventListener(TimerEvent.TIMER,this._handleKeepAlive);
         this._keepAliveTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._handleKeepAliveComplete);
         this._pmRingTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._handlePmRingTimer);
         this._idleTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._handleIdleTimer);
         this._hourMileTimer.removeEventListener(TimerEvent.TIMER,this._handleHourMileTimer);
         this._challengeCancelTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._handleChallengeCancelTimer);
         this._acceptedCancelTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._handleAcceptedCancelTimer);
         this._sendStudyTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._handleSendStudyTimer);
         this.removeEventListener(MouseEvent.MOUSE_MOVE,this._idleClear(true));
         this.removeEventListener(KeyboardEvent.KEY_DOWN,this._idleClear(false));
         this.loginMessage.text = LanguageSelector.EJ("Logged out successfully","ログアウトしました");
         this.titleBanner.source = this.IMAGE_DIRECTORY + "81Dojo_bye.jpg?" + this.VERSION;
         this.serverListGrid.dataProvider = {"name":""};
         this.mainViewStack.selectedIndex = 0;
         this.showLogin.play();
         this.loginButton.label = LanguageSelector.lan.relogin;
         this.loginButton.enabled = true;
         this.languageSelector.enabled = false;
         this._status_disconnected = false;
         this._challenging = false;
         this._gameAccepted = false;
         this._premium = 0;
         this.chatMessage1.enabled = true;
         this.voiceButton.isGuest = false;
         this._selfProvisional = false;
      }
      
      private function _handleError(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = null;
         if(_loc2_ = param1.message.match(/^([A-Z]\d{3})/))
         {
            if(LanguageSelector.lan[_loc2_[1]] != null)
            {
               Alert.show(LanguageSelector.lan[_loc2_[1]],LanguageSelector.lan.error,4);
            }
         }
         if(InfoFetcher.isAdminLv1(this.login_name) || InfoFetcher.isAdminLv2(this.login_name))
         {
            this._writeUserMessage(param1.message,1,"#FF0000");
         }
      }
      
      private function _handleWho(param1:ServerMessageEvent) : void
      {
         var _loc3_:User = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:Date = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc2_:Array = param1.message.split("\n");
         for each(_loc3_ in this._users)
         {
            _loc3_.exist = false;
         }
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.match("##[WHO] +OK") != null)
            {
               break;
            }
            _loc5_ = _loc4_.match(/\#\#\[WHO\] (\w*) x\d(\S*) (.*)/);
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_[3].match(/^(.+?) (true|false) (.+)$/);
               if(_loc6_)
               {
                  _loc7_ = _loc6_[1].split(" ");
                  if(!this._users[_loc5_[1]])
                  {
                     this._users[_loc5_[1]] = new User(_loc5_[1]);
                  }
                  if(_loc5_[2] == "|81AR")
                  {
                     this._users[_loc5_[1]].isMobile = true;
                  }
                  else if(_loc5_[2] == "|81WS")
                  {
                     this._users[_loc5_[1]].isHTML = true;
                  }
                  this._users[_loc5_[1]].setFromWho(parseInt(_loc7_[3]),parseInt(_loc7_[4]),parseInt(_loc7_[8]),parseInt(_loc7_[9]),Math.max(0,parseInt(_loc7_[10])),parseInt(_loc7_[11]),StringUtil.trim(_loc7_[0]),_loc7_[5],_loc7_[1],_loc7_[2],_loc7_[6],parseInt(_loc7_[7]),_loc6_[2] == "true",_loc6_[3] == "*"?"":_loc6_[3]);
                  if(_loc5_[1] == this.login_name)
                  {
                     this._users[_loc5_[1]].markSelf();
                     this._users[_loc5_[1]].disconnected = this._status_disconnected;
                     this._myRate = this._users[_loc5_[1]].rating;
                  }
                  else if(this._favorite_list.indexOf(_loc5_[1]) >= 0)
                  {
                     this._users[_loc5_[1]].markFavorite();
                  }
                  else if(this._colleague_list.indexOf(_loc5_[1]) >= 0)
                  {
                     this._users[_loc5_[1]].markColleague();
                  }
                  else if(this._tournament_opponent_list.indexOf(_loc5_[1]) >= 0)
                  {
                     this._users[_loc5_[1]].markTournamentOpponent();
                  }
               }
            }
         }
         for each(_loc3_ in this._users)
         {
            if(!_loc3_.exist)
            {
               delete this._users[_loc3_.name];
            }
         }
         if(this._users[this.login_name] && this._users[this.login_name].isProvisional)
         {
            this._selfProvisional = true;
         }
         else if(this._selfProvisional)
         {
            this._client.mileage(100);
            this._selfProvisional = false;
         }
         if(this.serverName == "EARTH" && this._addLayer(_loc2_.length) > 0)
         {
            _loc8_ = 1;
            while(_loc8_ <= this._addLayer(_loc2_.length))
            {
               _loc9_ = new Date();
               _loc10_ = (987654321 * _loc9_.dateUTC + 123456789 * _loc8_).toString(16);
               _loc11_ = "GUEST_" + _loc10_.substr(_loc10_.length - 7,6);
               if(!this._users[_loc11_])
               {
                  this._users[_loc11_] = new User(_loc11_);
                  this._users[_loc11_].setFromWho(0,392,0,0,0,0,"connected","*","*","*","*",0,true,"*");
               }
               _loc8_++;
            }
         }
         this._refreshUserList();
         this._refreshWaiterList();
         this._updateStatusMarks();
      }
      
      private function _refreshUserList() : void
      {
         var _loc1_:User = null;
         var _loc2_:int = 0;
         var _loc3_:ObjectProxy = null;
         this._user_list = [];
         for each(_loc1_ in this._users)
         {
            _loc3_ = new ObjectProxy(_loc1_);
            this._user_list.push(_loc3_);
         }
         this._user_list.sortOn("rating",Array.NUMERIC | Array.DESCENDING);
         this.userListGrid.dataProvider = this._user_list;
         _loc2_ = 0;
         while(_loc2_ < this._user_list.length)
         {
            if(this._user_list[_loc2_].name == this.login_name)
            {
               this.userListGrid.selectedIndex = _loc2_;
               this.userListGrid.callLater(this._scrollDownUser);
               break;
            }
            _loc2_++;
         }
         this.serverLabel.text = this.serverName + LanguageSelector.EJ(" : ","サーバ : ") + LanguageSelector.lan.lobby + LanguageSelector.EJ(" ("," (ログイン数 ") + this._user_list.length + LanguageSelector.EJ(" players)","名)");
      }
      
      private function _refreshWaiterList() : void
      {
         var _loc2_:Object = null;
         this._waiter_list = [];
         var _loc1_:int = 0;
         while(_loc1_ < this._user_list.length)
         {
            if(this._user_list[_loc1_].status == User.STATE_GAME_WAITING)
            {
               if(this.showBots.selected || this._user_list[_loc1_].titleName != "AI-bot")
               {
                  this._waiter_list.push(this._user_list[_loc1_]);
               }
            }
            _loc1_++;
         }
         if(this.waiterListGrid.dataProvider)
         {
            _loc2_ = this.waiterListGrid.dataProvider.sort;
         }
         this.waiterListGrid.dataProvider = this._waiter_list;
         if(_loc2_ != null)
         {
            this.waiterListGrid.dataProvider.sort = _loc2_;
            this.waiterListGrid.dataProvider.refresh();
         }
      }
      
      private function _handleList(param1:ServerMessageEvent) : void
      {
         var _loc3_:Game = null;
         var _loc4_:Game = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:User = null;
         var _loc8_:User = null;
         var _loc9_:int = 0;
         var _loc10_:User = null;
         var _loc2_:Array = param1.message.split("\n");
         for each(_loc3_ in this._games)
         {
            _loc3_.exist = false;
         }
         _loc4_ = null;
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.match(/^##\[LIST\] \+OK$/))
            {
               break;
            }
            _loc6_ = _loc5_.split(" ");
            if(!this._games[_loc6_[1]])
            {
               _loc7_ = this._users[_loc6_[1].split("+")[2]];
               if(!_loc7_)
               {
                  _loc7_ = new User(_loc6_[1].split("+")[2]);
                  if(_loc6_[1].match(/^STUDY\+/))
                  {
                     _loc7_.setFromStudy(true);
                  }
                  else
                  {
                     _loc7_.setFromList(_loc6_[3],parseInt(_loc6_[5]));
                  }
               }
               _loc8_ = this._users[_loc6_[1].split("+")[3]];
               if(!_loc8_)
               {
                  _loc8_ = new User(_loc6_[1].split("+")[3]);
                  if(_loc6_[1].match(/^STUDY\+/))
                  {
                     _loc8_.setFromStudy(false);
                  }
                  else
                  {
                     _loc8_.setFromList(_loc6_[4],parseInt(_loc6_[6]));
                  }
               }
               this._games[_loc6_[1]] = new Game(_loc6_[1],_loc7_,_loc8_);
               if((_loc7_.name == this.login_name && _loc6_[8] != "true" && _loc8_.titleName != "AI-bot" || _loc8_.name == this.login_name && _loc6_[9] != "true" && _loc7_.titleName != "AI-bot") && _loc6_[7] == "game")
               {
                  this._status_disconnected = true;
                  if(this._game_name == null)
                  {
                     _loc4_ = this._games[_loc6_[1]];
                  }
               }
            }
            this._games[_loc6_[1]].setFromList(parseInt(_loc6_[2]),_loc6_[7],_loc6_[8] == "true",_loc6_[9] == "true",parseInt(_loc6_[10]),_loc6_[11]);
            if(this._games[_loc6_[1]].watchers > 0)
            {
               this._games[_loc6_[1]].watcher_names = "";
               _loc9_ = 0;
               for each(_loc10_ in this._users)
               {
                  if(this._games[_loc6_[1]].id == _loc10_.monitor_game)
                  {
                     this._games[_loc6_[1]].watcher_names = this._games[_loc6_[1]].watcher_names + (_loc10_.name + " (" + LanguageSelector.EJ(_loc10_.country3,_loc10_.country) + ")\n");
                     _loc9_ = _loc9_ + 1;
                     if(_loc9_ >= this._games[_loc6_[1]].watchers)
                     {
                        break;
                     }
                  }
               }
            }
         }
         for each(_loc3_ in this._games)
         {
            if(!_loc3_.exist)
            {
               delete this._games[_loc3_.id];
            }
         }
         this._refreshGameList();
         if(_loc4_ != null)
         {
            this.hideLogin.stop();
            this._watch_game = _loc4_;
            this._game_name = this._watch_game.id;
            this._client.reconnect(this._game_name);
         }
      }
      
      private function _refreshGameList() : void
      {
         var _loc1_:Game = null;
         var _loc2_:int = 0;
         var _loc3_:ObjectProxy = null;
         this._game_list = [];
         for each(_loc1_ in this._games)
         {
            _loc3_ = new ObjectProxy(_loc1_);
            this._game_list.push(_loc3_);
         }
         this._game_list.sortOn("maxRating",Array.NUMERIC | Array.DESCENDING);
         _loc2_ = 0;
         while(_loc2_ < this._game_list.length)
         {
            this._game_list[_loc2_].tag = String(_loc2_ + 1);
            _loc2_++;
         }
         this.gameListGrid.dataProvider = this._game_list;
      }
      
      private function _handleWatchers(param1:ServerMessageEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc2_:Array = param1.message.split("\n");
         this._watcher_list = [];
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.match(/^##\[WATCHERS\] \+OK$/))
            {
               break;
            }
            _loc4_ = _loc3_.match(/^##\[WATCHERS\] (.*)$/);
            if(_loc4_ && this._users[_loc4_[1]])
            {
               this._watcher_list.push(this._users[_loc4_[1]]);
            }
         }
         this._watcher_list.sortOn("rating",Array.NUMERIC | Array.DESCENDING);
         this.watcherListGrid.dataProvider = this._watcher_list;
         this._watcherTitle = LanguageSelector.lan.watchers + " (" + this._watcher_list.length + ")";
         if(this._game_name.match(/^STUDY/) && this._watcher_list.length == 1 && this._watcher_list[0].name == this.login_name && !this.board.isStudyHost)
         {
            this._toggleHostStatus(true);
         }
      }
      
      private function _handleLobbyIn(param1:ServerMessageEvent) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = param1.message.split(",");
         var _loc4_:Boolean = false;
         if(_loc2_[2] == "true" && parseInt(_loc2_[1]) < InfoFetcher.rank_thresholds[0])
         {
            _loc3_ = LanguageSelector.EJ("A new player","新鋭棋士");
         }
         else
         {
            _loc3_ = LanguageSelector.EJ("A ","") + InfoFetcher.makeRankFromRating(_loc2_[1]);
         }
         var _loc5_:int = 0;
         while(_loc5_ < InfoFetcher.titleUser.length)
         {
            if(InfoFetcher.titleUser[_loc5_] == _loc2_[0].toLowerCase())
            {
               if(InfoFetcher.titleName[_loc5_] != "*")
               {
                  _loc3_ = LanguageSelector.EJ("The ","") + InfoFetcher.titleName[_loc5_];
                  _loc4_ = true;
               }
               break;
            }
            _loc5_++;
         }
         var _loc6_:* = this._favorite_list.indexOf(_loc2_[0]) >= 0;
         var _loc7_:* = this._colleague_list.indexOf(_loc2_[0]) >= 0;
         var _loc8_:* = this._tournament_opponent_list.indexOf(_loc2_[0]) >= 0;
         var _loc9_:Boolean = _loc2_[12] != null && _loc2_[12].match(/81AR/);
         var _loc10_:Boolean = _loc2_[12] != null && _loc2_[12].match(/81WS/);
         if(_loc4_ || _loc6_ || _loc7_ || _loc8_ || parseInt(_loc2_[1]) >= InfoFetcher.rank_thresholds[3] || parseInt(_loc2_[6]) >= 7 || this._user_list.length < 40 && _loc2_[0] != this.login_name)
         {
            this._writeUserMessage("  -  " + this._name2link(_loc2_[0]) + LanguageSelector.EJ(" logged in" + (!!_loc9_?" via mobile":"") + ". " + _loc3_ + " from " + InfoFetcher.country_names_en[_loc2_[3]] + "." + (parseInt(_loc2_[6]) >= 3?"　Now on " + _loc2_[6] + "-win streak!":"")," さんが" + (!!_loc9_?"モバイルから":"") + "ログインしました。 (" + InfoFetcher.country_names[_loc2_[3]] + ", " + _loc3_ + ")" + (parseInt(_loc2_[6]) >= 3?"　現在" + _loc2_[6] + "連勝中!":"")) + "\n",1,"#008800",_loc6_ || _loc7_ || _loc8_);
            if(this.mainViewStack.selectedIndex == 1 && this._chat_sound1_play)
            {
               if(_loc6_)
               {
                  this._sound_door_open.play();
               }
               else
               {
                  this._sound_chat4.play();
               }
            }
         }
         var _loc11_:Boolean = false;
         if(_loc2_[0] == this.login_name)
         {
            return;
         }
         if(!this._users[_loc2_[0]])
         {
            this._users[_loc2_[0]] = new User(_loc2_[0]);
            _loc11_ = true;
         }
         else
         {
            this._users[_loc2_[0]].initialize();
         }
         this._users[_loc2_[0]].setFromLobbyIn(parseInt(_loc2_[1]),parseInt(_loc2_[3]),parseInt(_loc2_[4]),parseInt(_loc2_[5]),Math.max(0,parseInt(_loc2_[6])),parseInt(_loc2_[7]));
         if(_loc9_)
         {
            this._users[_loc2_[0]].isMobile = true;
         }
         if(_loc10_)
         {
            this._users[_loc2_[0]].isHTML = true;
         }
         if(_loc6_)
         {
            this._users[_loc2_[0]].markFavorite();
         }
         if(_loc7_)
         {
            this._users[_loc2_[0]].markColleague();
         }
         if(_loc8_)
         {
            this._users[_loc2_[0]].markTournamentOpponent();
         }
         if(_loc11_)
         {
            this._user_list.push(this._users[_loc2_[0]]);
            this.serverLabel.text = this.serverName + LanguageSelector.EJ(" : ","サーバ : ") + LanguageSelector.lan.lobby + LanguageSelector.EJ(" ("," (ログイン数 ") + this._user_list.length + LanguageSelector.EJ(" players)","名)");
         }
         this._user_list.sortOn("rating",Array.NUMERIC | Array.DESCENDING);
         this._updateList(this.userListGrid,this._user_list);
      }
      
      private function _handleLobbyOut(param1:ServerMessageEvent) : void
      {
         var _loc3_:* = false;
         if(this.mainViewStack.selectedIndex == 1)
         {
            _loc3_ = this._favorite_list.indexOf(param1.message) >= 0;
            if(_loc3_ || this._colleague_list.indexOf(param1.message) >= 0 || this._tournament_opponent_list.indexOf(param1.message) >= 0)
            {
               this._writeUserMessage("  -  " + param1.message + LanguageSelector.lan.G031,1,"#008800");
               if(_loc3_ && this._chat_sound1_play)
               {
                  this._sound_door_close.play();
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._user_list.length)
         {
            if(this._user_list[_loc2_].name == param1.message)
            {
               this._user_list.splice(_loc2_,1);
               this._updateList(this.userListGrid,this._user_list);
               break;
            }
            _loc2_++;
         }
         this.serverLabel.text = this.serverName + LanguageSelector.EJ(" : ","サーバ : ") + LanguageSelector.lan.lobby + LanguageSelector.EJ(" ("," (ログイン数 ") + this._user_list.length + LanguageSelector.EJ(" players)","名)");
         this._refreshWaiterList();
         delete this._users[param1.message];
      }
      
      private function _handleGame(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc2_ = param1.message.match(/^\[(.+)\]$/))
         {
            if(this._users[_loc2_[1]])
            {
               this._users[_loc2_[1]].setFromGame("*","*","");
               if(this._playerInfoWindows[_loc2_[1]])
               {
                  this._playerInfoWindows[_loc2_[1]].disableChallenge();
               }
            }
         }
         else
         {
            _loc2_ = param1.message.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*),/);
            if(_loc2_[2].match(/^@/))
            {
               return;
            }
            if(_loc2_[2].match(/\-\-/))
            {
               _loc3_ = _loc2_[2].split("--")[0];
            }
            else
            {
               _loc3_ = _loc2_[2].split(".")[0];
            }
            _loc2_ = param1.message.match(/(.+),(\+|\-|\*),(.+)$/);
            if(this._users[_loc3_])
            {
               this._users[_loc3_].setFromGame(_loc2_[1],_loc2_[2],_loc2_[3] == "*"?"":_loc2_[3]);
            }
         }
         this._updateList(this.userListGrid,this._user_list);
         this._refreshWaiterList();
      }
      
      private function _handleStart(param1:ServerMessageEvent) : void
      {
         var _loc5_:User = null;
         var _loc6_:User = null;
         var _loc7_:String = null;
         if(this.mainViewStack.selectedIndex != 1 && !this.rematchButton.enabled)
         {
            return;
         }
         var _loc2_:Array = param1.message.split("+");
         var _loc3_:Array = _loc2_[1].match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         var _loc4_:Boolean = false;
         if(_loc2_[0] == "STUDY")
         {
            this._writeUserMessage("<a href=\"event:game," + param1.message + "\">" + _loc3_[2].split(".")[0] + LanguageSelector.EJ(" CREATED STUDY ROOM.</a>\n"," さんが検討室を作成しました。</a>\n"),1,"#008800");
            if(this._chat_sound1_play && this.mainViewStack.selectedIndex == 1)
            {
               this._sound_chat1.play();
            }
            _loc5_ = new User(_loc2_[2]);
            _loc5_.setFromStudy(true);
            _loc6_ = new User(_loc2_[3]);
            _loc6_.setFromStudy(false);
            this._games[param1.message] = new Game(param1.message,_loc5_,_loc6_);
            if(_loc3_[2].split(".")[0] == this.login_name)
            {
               _loc4_ = true;
            }
         }
         else
         {
            if(_loc3_[2].match(/\-\-..$/))
            {
               _loc7_ = LanguageSelector.EJ(InfoFetcher.fetchTournamentJp(_loc3_[2].substr(_loc3_[2].length - 2,2)),InfoFetcher.fetchTournamentEn(_loc3_[2].substr(_loc3_[2].length - 2,2)));
            }
            else
            {
               _loc7_ = LanguageSelector.EJ(InfoFetcher.gameTypeEn(_loc3_[1]),InfoFetcher.gameType(_loc3_[1]));
            }
            this._writeUserMessage("<a href=\"event:game," + param1.message + LanguageSelector.EJ("\">GAME STARTED: ▲","\">新規対局: ☗") + _loc2_[2] + LanguageSelector.EJ(" vs △"," 対 ☖") + _loc2_[3] + " / " + _loc7_ + "</a>\n",1,"#008800");
            if(this._chat_sound1_play && this.mainViewStack.selectedIndex == 1)
            {
               if(this._favorite_list.indexOf(_loc2_[0]) >= 0 || this._favorite_list.indexOf(_loc2_[3]) >= 0)
               {
                  this._sound_chat1.play();
               }
               else if(this._colleague_list.indexOf(_loc2_[0]) >= 0 || this._colleague_list.indexOf(_loc2_[3]) >= 0)
               {
                  this._sound_chat1.play();
               }
            }
            if(this._users[_loc2_[2]])
            {
               this._users[_loc2_[2]].setFromStart(_loc2_[1],"+");
            }
            if(this._users[_loc2_[3]])
            {
               this._users[_loc2_[3]].setFromStart(_loc2_[1],"-");
            }
            this._updateList(this.userListGrid,this._user_list);
            this._refreshWaiterList();
            this._games[param1.message] = new Game(param1.message,this._users[_loc2_[2]],this._users[_loc2_[3]]);
         }
         this._game_list.unshift(new ObjectProxy(this._games[param1.message]));
         this._game_list.sortOn("maxRating",Array.NUMERIC | Array.DESCENDING);
         this._updateList(this.gameListGrid,this._game_list);
         if(_loc4_)
         {
            this._watch_game = this._games[param1.message];
            this._execute_watch();
         }
      }
      
      private function _handleAdminMonitor(param1:ServerMessageEvent) : void
      {
         this._adminLog = this._adminLog + param1.message;
         if(this._adminLog.length > 20000)
         {
            this._adminLog = this._adminLog.substr(1000);
         }
         if(this._adminPanelWindow)
         {
            this._adminPanelWindow.showLog(this._adminLog);
         }
      }
      
      private function _handleInvitation(param1:String, param2:int, param3:int, param4:String) : void
      {
         if(this._leaving || this._ignore_list.indexOf(param1.toLowerCase()) >= 0)
         {
            this._client.privateChat(param1,"[##REJECT]C010");
            return;
         }
         if(this.board.isPlayer)
         {
            this._client.privateChat(param1,"[##REJECT]C011");
            return;
         }
         if(this._invitationAlertWindow || this._challenging)
         {
            this._client.privateChat(param1,"[##REJECT]C012");
            return;
         }
         var _loc5_:User = this._users[param1];
         if(!_loc5_)
         {
            this._client.privateChat(param1,"[##REJECT]");
            return;
         }
         this._sound_invitation.play();
         this._invitationAlertWindow = InvitationAlertWindow(PopUpManager.createPopUp(this,InvitationAlertWindow,false));
         PopUpManager.centerPopUp(this._invitationAlertWindow);
         this._invitationAlertWindow.inviter = new ObjectProxy(_loc5_);
         this._invitationAlertWindow.total = param2 / 60;
         this._invitationAlertWindow.byoyomi = param3;
         this._invitationAlertWindow.gameType = LanguageSelector.EJ(InfoFetcher.gameTypeEn(param4),InfoFetcher.gameType(param4));
         this._invitationAlertWindow.addEventListener("accept",this._handleInvitationAcceptButton);
         this._invitationAlertWindow.addEventListener("decline",this._handleInvitationRejectButton);
         this._invitationAlertWindow.startTimer();
      }
      
      private function _handleInvitationAcceptButton(param1:Event) : void
      {
         if(this.mainViewStack.selectedIndex == 2)
         {
            this._closeGame();
         }
         this._invitationAlertWindow = null;
         this._challenging = true;
         this._challengeUser = param1.target.inviter;
         this._writeUserMessage(LanguageSelector.EJ("Challenging ","") + param1.target.inviter.name + LanguageSelector.EJ("..... (Must wait for 20 seconds max)\n","さんに挑戦中..... (待ち時間 最大で20秒)\n"),1,"#008800");
         this._client.challenge(this._challengeUser.name);
         this._challengeCancelTimer.reset();
         this._challengeCancelTimer.start();
      }
      
      private function _handleInvitationRejectButton(param1:Event) : void
      {
         this._client.privateChat(param1.target.inviter.name,"[##REJECT]" + param1.target.rejectComment);
         this._invitationAlertWindow = null;
         this._writeUserMessage(LanguageSelector.EJ("Rejected the invitation from " + param1.target.inviter.name + ".\n",param1.target.inviter.name + "さんからの招待をパスしました。\n"),1,"#008800",true);
      }
      
      private function _handleChallenger(param1:ServerMessageEvent) : void
      {
         var _loc4_:TournamentGameChecker = null;
         if(this._gameAccepted)
         {
            this._client.decline("C002");
            return;
         }
         var _loc2_:User = this._users[param1.message];
         if(!_loc2_ || this._ignore_list.indexOf(param1.message.toLowerCase()) >= 0 || this._auto_decline_list.indexOf(param1.message.toLowerCase()) >= 0)
         {
            this._client.decline("C000");
            return;
         }
         this._sound_challenger.play();
         this._challengerAlertWindow = ChallengerAlertWindow(PopUpManager.createPopUp(this,ChallengerAlertWindow,true));
         PopUpManager.centerPopUp(this._challengerAlertWindow);
         this._challengerAlertWindow.loadPremium(this._premium);
         this._challengerAlertWindow.challenger = new ObjectProxy(_loc2_);
         if(!this._isGuest && this._premium >= 2 && !_loc2_.name.match(/^GUEST_/))
         {
            this._challengerAlertWindow.nameBox.addChild(new EvaluationChecker(_loc2_.name,this._api));
         }
         if(_loc2_.isMobile)
         {
            this._challengerAlertWindow.mobileIcon.visible = true;
            this._challengerAlertWindow.mobileIcon.includeInLayout = true;
         }
         else if(_loc2_.isHTML)
         {
            this._challengerAlertWindow.html5Icon.visible = true;
            this._challengerAlertWindow.html5Icon.includeInLayout = true;
         }
         if(this._declined_list.indexOf(param1.message.toLowerCase()) >= 0)
         {
            this._challengerAlertWindow.autoReject.visible = true;
            this._challengerAlertWindow.autoReject.includeInLayout = true;
         }
         var _loc3_:int = this._users[this.login_name].waitingTournamentID();
         if(_loc3_ != 0)
         {
            _loc4_ = new TournamentGameChecker(_loc3_,this.login_name,_loc2_.name,this._api);
            _loc4_.width = this._challengerAlertWindow.width * 0.95;
            this._challengerAlertWindow.addChild(_loc4_);
         }
         this._challengerAlertWindow.addEventListener("accept",this._handleChallengerAcceptButton);
         this._challengerAlertWindow.addEventListener("decline",this._handleChallengerRejectButton);
         this._challengerAlertWindow.addEventListener("open_detail",this._handlePlayerDetailOpen(param1.message));
         this._challengerAlertWindow.startTimer();
      }
      
      private function _handleChallengerAcceptButton(param1:Event) : void
      {
         this._client.accept();
         this._gameAccepted = true;
         this._acceptedCancelTimer.reset();
         this._acceptedCancelTimer.start();
         this._challengerAlertWindow = null;
         if(this._mileForFix > 0)
         {
            this._client.mileage(-this._mileForFix);
            this._mileForFix = 0;
         }
      }
      
      private function _handleChallengerRejectButton(param1:Event) : void
      {
         this._client.decline(param1.target.declineComment);
         this._challengerAlertWindow = null;
         this._writeUserMessage(LanguageSelector.EJ("Rejected the challenge from " + param1.target.challenger.name + ".\n",param1.target.challenger.name + "さんからの挑戦をパスしました。\n"),1,"#008800",true);
         if(this._declined_list.indexOf(param1.target.challenger.name.toLowerCase()) < 0)
         {
            this._declined_list.push(param1.target.challenger.name.toLowerCase());
         }
         if(param1.target.autoReject.selected)
         {
            this._auto_decline_list.push(param1.target.challenger.name.toLowerCase());
            Alert.show(LanguageSelector.lan.msg_auto_reject,"",4);
         }
      }
      
      private function _handleDecline(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = null;
         this._challengeCancelTimer.stop();
         this._acceptedCancelTimer.stop();
         if(_loc2_ = param1.message.match(/^([A-Z]\d{3})/))
         {
            this._interpretCommunicationCode("",_loc2_[1],1,true,false);
         }
         else
         {
            this._writeUserMessage(param1.message + "\n",1,"#008800",true);
         }
         this._challenging = false;
         this._gameAccepted = false;
         if(this._challengerAlertWindow)
         {
            this._challengerAlertWindow.terminate();
            this._challengerAlertWindow = null;
         }
      }
      
      private function _handleAccept(param1:ServerMessageEvent) : void
      {
         this._challengeCancelTimer.stop();
         this._gameAccepted = true;
         this._acceptedCancelTimer.reset();
         this._acceptedCancelTimer.start();
         this._interpretCommunicationCode("","C005",1,true,false);
         if(this._challengeUser)
         {
            this._client.seek(this._challengeUser);
         }
      }
      
      private function _handleGameSummary(param1:ServerMessageEvent) : void
      {
         var _loc2_:String = null;
         this._gameAccepted = false;
         this._acceptedCancelTimer.stop();
         this._refresh();
         this._initPositionStr = "";
         for each(_loc2_ in param1.message.split("\n"))
         {
            if(_loc2_.match(/^P[0-9\+\-]/))
            {
               this._initPositionStr = this._initPositionStr + (_loc2_ + "\n");
            }
         }
      }
      
      private function _handleGameStarted(param1:ServerMessageEvent) : void
      {
         this._waiting = false;
         this._challenging = false;
         this._rematching = false;
         this.startButton.label = LanguageSelector.lan.wait;
         this.startButton.soundType = 1;
         if(this._game_name && this._monitoring)
         {
            this._client.monitorOff(this._game_name);
            this._monitoring = false;
            this.board.closeGame();
         }
         else if(this.board.viewing)
         {
            this.board.closeGame();
            this.chatMessage2.enabled = true;
            this.board.viewing = false;
         }
         var _loc2_:Array = param1.message.match(/^START:(.*)\+(.*)-([0-9]*)-([0-9]*)/);
         this._game_name = param1.message.split(":")[1];
         var _loc3_:Game = new Game(this._game_name,this._users[this._client.playerNames[0]],this._users[this._client.playerNames[1]]);
         this.board.kid = parseInt(param1.message.split(":")[2]);
         if(this._game_name.split("+")[1].match(/^r_/))
         {
            this.board.gameType = "r";
         }
         else if(this._game_name.split("+")[1].match(/^nr_/))
         {
            this.board.gameType = "nr";
         }
         else if(this._game_name.split("+")[1].match(/^hc/))
         {
            this.board.gameType = "hc";
         }
         else if(this._game_name.split("+")[1].match(/^(va.+?)_/))
         {
            this.board.gameType = this._game_name.split("+")[1].match(/^(va.+?)_/)[1];
         }
         if(this.board.gameType == "r")
         {
            this.allowWatcherChatCheckbox.enabled = false;
         }
         else
         {
            this._allowWatcherChat = true;
            this.allowWatcherChatCheckbox.selected = true;
            this.allowWatcherChatCheckbox.enabled = true;
         }
         this.board.layoutBoard();
         if(this._end_sound_play)
         {
            this._sound_start.play();
         }
         this.board.superior = _loc3_.superior;
         this.board.startGame(this._initPositionStr,this._client.myTurn,_loc3_);
         this._watcher_list = [];
         this.watcherListGrid.dataProvider = this._watcher_list;
         this.userMessage2.htmlText = "";
         this._writeUserMessage(LanguageSelector.EJ(this._infoFetcher.gameMessage,this._infoFetcher.gameMessageJp) + "\n",2,"#008800");
         if(this._client.myTurn == Kyokumen.SENTE)
         {
            this._writeUserMessage(LanguageSelector.EJ("You are Black " + (this.board.gameType == "hc"?"(Handicap taker).\n":"(Sente).\n"),"あなた" + (this.board.gameType == "hc"?"は下手(したて)":"が先手") + "です。\n"),2,"#008800");
         }
         else
         {
            this._writeUserMessage(LanguageSelector.EJ("You are White " + (this.board.gameType == "hc"?"(Handicap giver).\n":"(Gote).\n"),"あなた" + (this.board.gameType == "hc"?"が上手(うわて)":"は後手") + "です。\n"),2,"#008800");
         }
         if(_loc2_[2].match(/\-\-\d+$/))
         {
            if(this.board.gameType != "r")
            {
               this._writeUserMessage(LanguageSelector.EJ("To mute watcher\'s chat, switch off the checkbox above the watcher list.\n","観戦者のチャットをミュートするには観戦者リスト上部のチェックボックスをOFFにして下さい。\n"),2,"#FF3388");
            }
         }
         this.startButton.enabled = false;
         this.closeButton.enabled = false;
         this.resignButton.enabled = true;
         this.reverseButton.enabled = false;
         this.greetButton.state = GreetButton.STATE_BEFORE_GAME;
         this.rematchButton.enabled = false;
         this.voiceButton.isPlayer = true;
         this.voiceButton.game_name = this._game_name;
         this.giveHostButton.enabled = false;
         this._shareKifuEnabled = false;
         this.queryButton.visible = this._debug;
         this.rewindAllButton.enabled = false;
         this.rewindOneButton.enabled = false;
         this.forwardOneButton.enabled = false;
         this.forwardAllButton.enabled = false;
         this.kifuDataGrid.selectable = false;
         this.logoutButton.enabled = false;
         this.kifuDataGrid.dataProvider = this.board.kifu_list;
         this.mainViewStack.selectedIndex = 2;
         this.radioKifuListen.selected = true;
         this.radioKifuListen.enabled = false;
         this.radioKifuReplay.enabled = false;
         this.board.onListen = true;
         this._switchListenColor(true);
         this._nOpponentDisconnect = 0;
         this._study_notified = false;
         var _loc4_:Object = this.login_name == _loc3_.black.name?_loc3_.white:_loc3_.black;
         if(this.board.gameType == "r" && !this._users[this.login_name].isProvisional)
         {
            if(InfoFetcher.beforeUpgrade(this._myRate))
            {
               if(!_loc4_.isProvisional && _loc4_.rating > this._myRate - 200)
               {
                  this._sendAutoChat("#G020");
               }
            }
            else if(InfoFetcher.beforeDowngrade(this._myRate))
            {
               if(!_loc4_.isProvisional && _loc4_.rating < this._myRate + 200)
               {
                  this._sendAutoChat("#G021");
               }
            }
         }
         if(this._notify_blind && !this.board.is34())
         {
            if(this.board.piece_type == 100)
            {
               this._sendAutoChat("#G011");
            }
            else if(this.board.piece_type == 101)
            {
               this._sendAutoChat("#G012");
            }
            else if(this.board.piece_type == 102)
            {
               this._sendAutoChat("#G013");
            }
         }
         this._client.privateChat(_loc4_.name,"[##FITNESS]" + this._levelStudy + "," + this._levelEnglish);
         if(parseInt(_loc2_[4]) == 0)
         {
            this.greetButton.autoGreet(GreetButton.STATE_BEFORE_GAME);
         }
         this._declined_list = [];
      }
      
      private function _handleGameRejected(param1:ServerMessageEvent) : void
      {
         this._challenging = false;
         this._rematching = false;
         this._writeUserMessage(LanguageSelector.EJ("Game initialization failed.\n","データベースエラー: 対局の作成に失敗しました。\n"),1,"#008800",true);
      }
      
      private function _handleReconnect(param1:ServerMessageEvent) : void
      {
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc8_:Movement = null;
         this._waiting = false;
         this._challenging = false;
         this._rematching = false;
         if(this._game_name.split("+")[1].match(/^r_/))
         {
            this.board.gameType = "r";
         }
         else if(this._game_name.split("+")[1].match(/^nr_/))
         {
            this.board.gameType = "nr";
         }
         else if(this._game_name.split("+")[1].match(/^hc/))
         {
            this.board.gameType = "hc";
         }
         else if(this._game_name.split("+")[1].match(/^(va.+?)_/))
         {
            this.board.gameType = this._game_name.split("+")[1].match(/^(va.+?)_/)[1];
         }
         if(this.board.gameType == "r")
         {
            this.allowWatcherChatCheckbox.enabled = false;
            this.allowWatcherChatCheckbox.selected = false;
         }
         else
         {
            this._allowWatcherChat = true;
            this.allowWatcherChatCheckbox.selected = true;
            this.allowWatcherChatCheckbox.enabled = true;
         }
         this.board.layoutBoard();
         this.board.superior = this._watch_game.superior;
         _loc6_ = this._game_name.split("+")[1].match(/\-(\d+)\-(\d+)$/);
         var _loc2_:Boolean = false;
         var _loc3_:String = "";
         var _loc4_:Array = [];
         for each(_loc5_ in param1.message.split("\n"))
         {
            if(_loc6_ = _loc5_.match(/^##\[RECONNECT\]\[(.*)\]\sTo_Move\:(\+|\-)$/))
            {
               this.board.kid = parseInt(_loc6_[1]);
               this._initPositionStr = "P0" + _loc6_[2] + "\n";
            }
            else if(_loc6_ = _loc5_.match(/^##\[RECONNECT\]\[.*\]\s(P[0-9\+\-].*)$/))
            {
               this._initPositionStr = this._initPositionStr + (_loc6_[1] + "\n");
            }
            else if(_loc6_ = _loc5_.match(/^##\[RECONNECT\]\[.*\]\s([-+][0-9]{4}.{2}|%TORYO)$/))
            {
               _loc7_ = new Object();
               _loc7_.move = _loc6_[1];
               _loc4_.push(_loc7_);
            }
            else if(_loc6_ = _loc5_.match(/^##\[RECONNECT\]\[.*\]\s(T.*)$/))
            {
               Object(_loc4_[_loc4_.length - 1]).time = _loc6_[1];
            }
            else if(_loc5_.match(/#SENTE_WIN$/))
            {
               _loc2_ = true;
               _loc3_ = this._client.myTurn == Kyokumen.SENTE?"WIN":"LOSE";
            }
            else if(_loc5_.match(/#GOTE_WIN$/))
            {
               _loc2_ = true;
               _loc3_ = this._client.myTurn == Kyokumen.SENTE?"LOSE":"WIN";
            }
            else if(_loc5_.match(/#DRAW$/))
            {
               _loc2_ = true;
               _loc3_ = "DRAW";
            }
            else if(_loc6_ = _loc5_.match(/SINCE_LAST_MOVE:(\d+)/))
            {
               this.board.since_last_move = parseInt(_loc6_[1]);
            }
         }
         this.radioKifuListen.selected = true;
         this.radioKifuListen.enabled = false;
         this.radioKifuReplay.enabled = false;
         this.board.onListen = true;
         this._switchListenColor(true);
         this._study_notified = false;
         this.board.startGame(this._initPositionStr,this._client.myTurn,this._watch_game,_loc4_);
         this._client.watchers(this._game_name);
         this.userMessage2.htmlText = "";
         this._writeUserMessage(LanguageSelector.EJ(this._infoFetcher.gameMessage,this._infoFetcher.gameMessageJp) + "\n",2,"#008800");
         this._writeUserMessage(LanguageSelector.EJ("Reconnected to game.\n","対局に再接続しました。\n"),2,"#008800",true);
         this.startButton.enabled = false;
         this.closeButton.enabled = false;
         this.resignButton.enabled = true;
         this.reverseButton.enabled = false;
         this.greetButton.state = GreetButton.STATE_DURING_GAME;
         this.rematchButton.enabled = false;
         this.voiceButton.isPlayer = true;
         this.voiceButton.game_name = this._game_name;
         this.giveHostButton.enabled = false;
         this._shareKifuEnabled = false;
         this.queryButton.visible = this._debug;
         this.rewindAllButton.enabled = false;
         this.rewindOneButton.enabled = false;
         this.forwardOneButton.enabled = false;
         this.forwardAllButton.enabled = false;
         this.kifuDataGrid.selectable = false;
         this.logoutButton.enabled = false;
         this.kifuDataGrid.dataProvider = this.board.kifu_list;
         this.mainViewStack.selectedIndex = 2;
         if(this._notify_blind && !this.board.is34())
         {
            if(this.board.piece_type == 100)
            {
               this._sendAutoChat("#G011");
            }
            else if(this.board.piece_type == 101)
            {
               this._sendAutoChat("#G012");
            }
            else if(this.board.piece_type == 102)
            {
               this._sendAutoChat("#G013");
            }
         }
         if(_loc2_)
         {
            _loc8_ = new Movement(this.board.kifu_list.length);
            if(param1.message.indexOf("#TIME_UP") >= 0)
            {
               this.board.timeout();
               this._writeUserMessage((this.board.last_pos.turn == Kyokumen.SENTE?this.board.gameType == "hc"?"下手":"先手":this.board.gameType == "hc"?"上手":"後手") + " 時間切れ\n",2,"#DD0088");
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.TIMEUP);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#DISCONNECT") >= 0)
            {
               this._writeUserMessage(LanguageSelector.EJ("Player disconnected.\n","接続切れにて終局\n"),2,"#DD0088");
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.DISCONNECT);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#ILLEGAL_MOVE") >= 0)
            {
               this._writeUserMessage(LanguageSelector.lan.msg_illegal + "\n",2,"#DD0088");
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.ILLEGAL);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#RESIGN") >= 0)
            {
               this._writeUserMessage((this.board.last_pos.turn == Kyokumen.SENTE?LanguageSelector.EJ("Black",this.board.gameType == "hc"?"下手":"先手"):LanguageSelector.EJ("White",this.board.gameType == "hc"?"上手":"後手")) + LanguageSelector.EJ(" resigned.\n"," 投了\n"),2,"#DD0088");
            }
            else if(param1.message.indexOf("#OUTE_SENNICHITE") >= 0)
            {
               this._writeUserMessage(LanguageSelector.lan.msg_perpetual + "\n",2,"#DD0088");
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.OUTE_SENNICHITE);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#SENNICHITE") >= 0)
            {
               this._writeUserMessage(LanguageSelector.lan.msg_repetition + "\n",2,"#DD0088");
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.SENNICHITE);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#JISHOGI") >= 0)
            {
               this._writeUserMessage(LanguageSelector.EJ("Game end by 27-point rule\n","27点宣言法にて終局\n"),2,"#DD0088");
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.JISHOGI);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#CATCH") >= 0)
            {
               this._writeUserMessage(LanguageSelector.EJ("CATCH!\n","キャッチ!\n"),2,"#DD0088",true);
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.CATCH);
               this.board.kifu_list.push(_loc8_);
            }
            else if(param1.message.indexOf("#TRY") >= 0)
            {
               this._writeUserMessage(LanguageSelector.EJ("REACH!\n","トライ!\n"),2,"#DD0088",true);
               _loc8_.setGameEnd(this.board.last_pos.turn,Movement.TRY);
               this.board.kifu_list.push(_loc8_);
            }
            this.board.post_game = true;
            this.radioKifuReplay.enabled = true;
            this.radioKifuListen.enabled = true;
            if(_loc3_ == "LOSE")
            {
               this.board.infoBoxes[1].setStyle("borderThickness",2);
               this.board.infoBoxes[1].setStyle("borderColor",this._winnerInfoBoxColor);
               this._writeUserMessage(LanguageSelector.EJ("### You Lose ###\n","### あなたの負けです ###\n"),2,"#DD0088",true);
               if(this._end_sound_play)
               {
                  this._sound_lose.play();
               }
            }
            else if(_loc3_ == "WIN")
            {
               this.board.infoBoxes[0].setStyle("borderThickness",2);
               this.board.infoBoxes[0].setStyle("borderColor",this._winnerInfoBoxColor);
               this._writeUserMessage(LanguageSelector.EJ("### You Win ###\n","### あなたの勝ちです ###\n"),2,"#DD0088",true);
               if(this._end_sound_play)
               {
                  this._sound_win.play();
               }
            }
            else if(_loc3_ == "DRAW")
            {
               this._writeUserMessage(LanguageSelector.EJ("### Draw ###\n","### 引き分け ###\n"),2,"#DD0088",true);
               if(this._end_sound_play)
               {
                  this._sound_win.play();
               }
            }
            this.allowWatcherChatCheckbox.enabled = false;
            this.allowWatcherChatCheckbox.selected = true;
            this.closeButton.enabled = true;
            this.resignButton.enabled = false;
            this.rematchButton.enabled = true;
            this.greetButton.state = GreetButton.STATE_POSTGAME;
            this.voiceButton.postGame = true;
            if(InfoFetcher.isBroadcasterLv1(this.login_name))
            {
               this.voiceButton.broadcastAllowed = true;
            }
            else if(InfoFetcher.isBroadcasterLv2(this.login_name) && this._game_name.match(/\-\-..\-\d/))
            {
               this.voiceButton.broadcastAllowed = true;
            }
            this._shareKifuEnabled = true;
            this.queryButton.visible = true;
            this.rewindAllButton.enabled = true;
            this.rewindOneButton.enabled = true;
            this.forwardOneButton.enabled = true;
            this.forwardAllButton.enabled = true;
            this.startButton.enabled = true;
            this.kifuDataGrid.dataProvider = this.board.kifu_list;
            this.kifuDataGrid.scrollToIndex(this.board.kifu_list.length + 1);
            this.kifuDataGrid.selectable = true;
            this.kifuDataGrid.selectedIndex = this.board.kifu_list.length;
            this.board.endGame();
         }
         else
         {
            this.board.timers[this.board.my_turn == this.board.last_pos.turn?0:1].accumulateTime(this.board.since_last_move);
         }
      }
      
      private function _handleGameEnd(param1:ServerMessageEvent) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:Date = null;
         var _loc2_:Movement = new Movement(this.board.kifu_list.length);
         var _loc3_:Boolean = false;
         var _loc4_:int = -1;
         var _loc5_:Boolean = false;
         if(this._disconnectAlertWindow)
         {
            this._disconnectAlertWindow.terminate();
            this._disconnectAlertWindow = null;
            _loc7_ = true;
         }
         this.board.post_game = true;
         if(param1.message.indexOf("TIME_UP") >= 0)
         {
            if(GameTimer.soundType >= 2)
            {
               Byoyomi.sayTimeUp();
            }
            this.board.timeout();
            this._writeUserMessage((this.board.position.turn == Kyokumen.SENTE?LanguageSelector.EJ("Black: ",this.board.gameType == "hc"?"下手":"先手"):LanguageSelector.EJ("White: ",this.board.gameType == "hc"?"上手":"後手")) + LanguageSelector.EJ("Time up.\n"," 時間切れ\n"),2,"#DD0088");
            _loc2_.setGameEnd(this.board.position.turn,Movement.TIMEUP);
            this.board.kifu_list.push(_loc2_);
         }
         else if(param1.message.indexOf("DISCONNECT") >= 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("Game end by opponent\'s disconnection\n","相手の接続切れにて終局\n"),2,"#DD0088");
            _loc2_.setGameEnd(this.board.position.turn,Movement.DISCONNECT);
            this.board.kifu_list.push(_loc2_);
         }
         else if(param1.message.indexOf("ILLEGAL_MOVE") >= 0)
         {
            this._writeUserMessage(LanguageSelector.lan.msg_illegal + "\n",2,"#DD0088");
            _loc2_.setGameEnd(this.board.position.turn,Movement.ILLEGAL);
            _loc5_ = true;
            this.board.kifu_list.push(_loc2_);
         }
         else if(param1.message.indexOf("RESIGN") >= 0)
         {
            this._writeUserMessage((this.board.position.turn == this.board.my_turn?LanguageSelector.EJ("You",""):LanguageSelector.EJ("Opponent","相手が")) + LanguageSelector.EJ(" resigned.\n","投了しました。\n"),2,"#DD0088");
            _loc3_ = true;
         }
         else if(param1.message.indexOf("OUTE_SENNICHITE") >= 0)
         {
            this._writeUserMessage(LanguageSelector.lan.msg_perpetual + "\n",2,"#DD0088");
            _loc2_.setGameEnd(this.board.position.turn,Movement.OUTE_SENNICHITE);
            this.board.kifu_list.push(_loc2_);
         }
         else if(param1.message.indexOf("SENNICHITE") >= 0)
         {
            this._writeUserMessage(LanguageSelector.lan.msg_repetition + "\n",2,"#DD0088");
            _loc2_.setGameEnd(this.board.position.turn,Movement.SENNICHITE);
            this.board.kifu_list.push(_loc2_);
            _loc3_ = true;
         }
         else if(param1.message.indexOf("JISHOGI") >= 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("Game end by 27-point rule\n","27点宣言法にて終局\n"),2,"#DD0088");
            _loc2_.setGameEnd(this.board.position.turn,Movement.JISHOGI);
            this.board.kifu_list.push(_loc2_);
         }
         else if(param1.message.indexOf("CATCH") >= 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("CATCH!\n","キャッチ!\n"),2,"#DD0088",true);
            _loc2_.setGameEnd(this.board.last_pos.turn,Movement.CATCH);
            this.board.kifu_list.push(_loc2_);
         }
         else if(param1.message.indexOf("TRY") >= 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("REACH!\n","トライ!\n"),2,"#DD0088",true);
            _loc2_.setGameEnd(this.board.last_pos.turn,Movement.TRY);
            this.board.kifu_list.push(_loc2_);
         }
         this.radioKifuReplay.enabled = true;
         this.radioKifuListen.enabled = true;
         if(param1.message.indexOf("LOSE") >= 0)
         {
            this.board.isStudyHost = true;
            this._openGameResultWindow(-1);
            this.board.infoBoxes[1].setStyle("borderThickness",2);
            this.board.infoBoxes[1].setStyle("borderColor",this._winnerInfoBoxColor);
            this._writeUserMessage(LanguageSelector.EJ("### You Lose ###\n","### あなたの負けです ###\n"),2,"#DD0088",true);
            if(_loc5_)
            {
               this._writeUserMessage(LanguageSelector.EJ("( For details of illegal moves in shogi, see: https://81dojo.com/documents/Illegal_Move )\n","( 将棋の反則手についてはこちらでご確認下さい: https://81dojo.com/documents/反則手 )\n"),2,"#DD0088");
            }
            if(this._end_sound_play)
            {
               this._sound_lose.play();
            }
            if(this.board.gameType == "r")
            {
               this._losses_session = this._losses_session + 1;
            }
            _loc8_ = "  ●";
            this._losersCloseButtonTimer.reset();
            this._losersCloseButtonTimer.start();
            _loc4_ = 1;
         }
         else if(param1.message.indexOf("WIN") >= 0)
         {
            this.board.isSubHost = true;
            this._openGameResultWindow(1);
            this.board.infoBoxes[0].setStyle("borderThickness",2);
            this.board.infoBoxes[0].setStyle("borderColor",this._winnerInfoBoxColor);
            this._writeUserMessage(LanguageSelector.EJ("### You Win ###\n","### あなたの勝ちです ###\n"),2,"#DD0088",true);
            if(this._end_sound_play)
            {
               this._sound_win.play();
            }
            if(this.board.gameType == "r")
            {
               this._wins_session = this._wins_session + 1;
            }
            _loc8_ = "  ◯";
            if(this.board.gameType == "r" && this.board.kifu_list.length >= 6 && (this._users[this.login_name].wins + 1) % 100 == 0)
            {
               this._client.chat("[##WINS]" + (this._users[this.login_name].wins + 1));
            }
            this.closeButton.enabled = true;
            _loc4_ = 0;
         }
         else if(param1.message.indexOf("DRAW") >= 0)
         {
            if(this.board.my_turn == Kyokumen.GOTE)
            {
               this.board.isStudyHost = true;
            }
            else
            {
               this.board.isSubHost = true;
            }
            this._openGameResultWindow(0);
            this._writeUserMessage(LanguageSelector.EJ("### Draw ###\n","### 引き分け ###\n"),2,"#DD0088",true);
            if(this._end_sound_play)
            {
               this._sound_win.play();
            }
            _loc8_ = "  引";
            this.closeButton.enabled = true;
            _loc4_ = 2;
         }
         if(_loc3_ && this.board.gameType == "r" && this.board.my_turn == 0)
         {
         }
         if(this.board.gameType == "hc")
         {
            if(this.board.my_turn == Kyokumen.GOTE)
            {
               this.board.isStudyHost = true;
               this.board.isSubHost = false;
            }
            else
            {
               this.board.isStudyHost = false;
               this.board.isSubHost = true;
            }
         }
         if(_loc7_ && this.board.isSubHost)
         {
            this.board.isStudyHost = true;
            this.board.isSubHost = false;
         }
         if(this._pmGameLog != "")
         {
            this._writeUserMessage(LanguageSelector.EJ("PM received during the game:\n","対局中にPMが届いています\n"),2,"#FF0000",true);
            this._writeUserMessage(this._pmGameLog,2,"#FF0000");
            this._pmGameLog = "";
         }
         _loc8_ = _loc8_ + (this.board.my_turn == 0?LanguageSelector.EJ("  Black:   ","  ☗先手:  "):LanguageSelector.EJ("  White:  ","  ☖後手:  "));
         for each(_loc6_ in this._game_list)
         {
            if(_loc6_.id == this._game_name)
            {
               _loc9_ = LanguageSelector.EJ(_loc6_.openingEn,_loc6_.openingTip);
               break;
            }
         }
         if(this.board.my_turn == 0)
         {
            _loc9_ = LanguageSelector.EJ(_loc9_.replace(/Opposition, Black's /,""),_loc9_.replace(/対抗形 ☗/,""));
            _loc9_ = LanguageSelector.EJ(_loc9_.replace(/Opposition, White's/,"Static Rook vs"),_loc9_.replace(/対抗形 ☖/,"居飛車　(対"));
         }
         else
         {
            _loc9_ = LanguageSelector.EJ(_loc9_.replace(/Opposition, White's /,""),_loc9_.replace(/対抗形 ☖/,""));
            _loc9_ = LanguageSelector.EJ(_loc9_.replace(/Opposition, Black's/,"Static Rook vs"),_loc9_.replace(/対抗形 ☗/,"居飛車　(対"));
         }
         if(_loc9_.match(/\(/))
         {
            _loc9_ = _loc9_ + ")";
         }
         _loc8_ = _loc8_ + _loc9_;
         if(this.board.gameType == "r")
         {
            this._games_session.push(_loc8_);
         }
         this._notifyOnCloseGame = true;
         if(this.board.gameType == "r")
         {
            this._client.mileage(10);
         }
         else
         {
            this._client.mileage(5);
         }
         this.allowWatcherChatCheckbox.enabled = false;
         this.allowWatcherChatCheckbox.selected = true;
         this.resignButton.enabled = false;
         this.rematchButton.enabled = true;
         if(this.greetButton.state != GreetButton.STATE_POSTGAME)
         {
            this.greetButton.state = GreetButton.STATE_AFTER_GAME;
         }
         this.voiceButton.postGame = true;
         if(InfoFetcher.isBroadcasterLv1(this.login_name))
         {
            this.voiceButton.broadcastAllowed = true;
         }
         else if(InfoFetcher.isBroadcasterLv2(this.login_name) && this._game_name.match(/\-\-..\-\d/))
         {
            this.voiceButton.broadcastAllowed = true;
         }
         this._shareKifuEnabled = true;
         this.queryButton.visible = true;
         this.rewindAllButton.enabled = true;
         this.rewindOneButton.enabled = true;
         this.forwardOneButton.enabled = true;
         this.forwardAllButton.enabled = true;
         this.startButton.enabled = true;
         this.kifuDataGrid.scrollToIndex(0);
         this.kifuDataGrid.dataProvider = this.board.kifu_list;
         this.kifuDataGrid.selectable = true;
         this.kifuDataGrid.selectedIndex = this.board.kifu_list.length - 1;
         this.kifuDataGrid.callLater(this._scrollDownKifu);
         if(this.board.isStudyHost)
         {
            this._toggleHostStatus(true);
         }
         if(this.board.isSubHost)
         {
            this._writeUserMessage(LanguageSelector.lan.msg_subhost + "\n",2,"#008800",true);
         }
         this.board.endGame();
         this._status_disconnected = false;
         this._myMoveSent = false;
         this._myMoveSentTimer.stop();
         if(this._isGuest)
         {
            _loc10_ = new Date();
            if(this._so.data.guest_game_period && this._so.data.guest_game_period == _loc10_.toDateString())
            {
               this._so.data.guest_game_num = this._so.data.guest_game_num + 1;
            }
            else
            {
               this._so.data.guest_game_period = _loc10_.toDateString();
               this._so.data.guest_game_num = 1;
            }
         }
      }
      
      private function _handleLosersTimer(param1:TimerEvent) : void
      {
         if(!this.closeButton.enabled)
         {
            this.closeButton.enabled = true;
         }
      }
      
      private function _openGameResultWindow(param1:int) : void
      {
         this._gameResultWindow = GameResultWindow(PopUpManager.createPopUp(this.board,GameResultWindow,false));
         PopUpManager.centerPopUp(this._gameResultWindow);
         this._gameResultWindow.x = this._gameResultWindow.x + (this.board.scaleX - 1) * this.board.width / 2;
         this._gameResultWindow.y = this._gameResultWindow.y + (this.board.scaleY - 1) * this.board.height / 2;
         this._gameResultWindow.initWindow(this.board.playerInfos[this.board.my_turn].name,this.board.playerInfos[1 - this.board.my_turn].name,param1);
      }
      
      private function _handleResult(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = param1.message.split(",");
         this._myRate = parseInt(_loc2_[1]);
         if(this._gameResultWindow)
         {
            this._gameResultWindow.readRateChange(parseInt(_loc2_[0]),parseInt(_loc2_[1]),parseInt(_loc2_[2]),parseInt(_loc2_[3]));
         }
      }
      
      private function _handleMove(param1:ServerMessageEvent) : void
      {
         var _loc2_:Movement = null;
         this._myMoveSentTimer.stop();
         this.board.clearArrows(Board.ARROWS_PUBLIC);
         if(param1.message.match(/%TORYO/))
         {
            _loc2_ = new Movement(this.board.kifu_list.length);
            _loc2_.setGameEnd(this.board.position.turn,Movement.RESIGN,parseInt(param1.message.split(",T")[1]));
            this.board.kifu_list.push(_loc2_);
         }
         else if(this._myMoveSent)
         {
            this.board.updateMyMoveTime(parseInt(param1.message.match(/,T([0-9]*)/)[1]));
         }
         else
         {
            if(this.board.since_last_move > 0)
            {
               this.board.timers[this.board.my_turn == this.board.last_pos.turn?0:1].accumulateTime(-this.board.since_last_move);
               this.board.since_last_move = 0;
            }
            this.board.makeMove(param1.message,true,true);
         }
         this.kifuDataGrid.dataProvider = this.board.kifu_list;
         this.kifuDataGrid.scrollToIndex(this.board.kifu_list.length + 1);
         if(this._impasseStatusWindow)
         {
            this.board.position.calcImpasse();
            this._impasseStatusWindow.setStatus(this.board.position.impasseStatus,this.board.position.turn == this.board.my_turn?int(this.board.my_turn):-1);
         }
         if(this.board.isRelay)
         {
            this._checkRelaySwitch();
         }
         this._myMoveSent = false;
      }
      
      private function _handleChat(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = null;
         _loc2_ = param1.message.substr(8).match(/^\[(.+?)\]\s(.*)$/);
         var _loc3_:String = _loc2_[1];
         var _loc4_:* = _loc2_[2];
         if(_loc2_ = param1.message.match(/\[\#\#BROADCAST\](.+)$/))
         {
            if(InfoFetcher.isAdminLv1(_loc3_))
            {
               this._writeUserMessage("###BROADCAST###\n" + _loc2_[1] + "\n",1,"#FF0000",true);
               this._writeUserMessage("###BROADCAST###\n" + _loc2_[1] + "\n",2,"#FF0000",true);
               this._sound_chat3.play();
            }
            return;
         }
         if(this._ignore_list.indexOf(_loc3_.toLowerCase()) >= 0)
         {
            return;
         }
         if(this._infoFetcher.banned.indexOf(_loc3_.toLowerCase()) >= 0)
         {
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#WINS\](\d+)$/))
         {
            this._writeUserMessage(this._name2link(_loc3_) + LanguageSelector.EJ(" has won ","さんが通算") + parseInt(_loc2_[1]) + LanguageSelector.EJ(" games!\n","勝を達成しました!\n"),1,"#008800",true);
            if(this.mainViewStack.selectedIndex == 1 && this._chat_sound1_play)
            {
               this._sound_chat1.play();
            }
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#EXP\](.+),(\d+)$/))
         {
            this._writeUserMessage(this._name2link(_loc3_) + LanguageSelector.EJ(" is promoted to " + InfoFetcher.makeRank34FromExp(parseInt(_loc2_[2])) + " class in " + (_loc2_[1] == "nr"?"10-sec Shogi":InfoFetcher.gameTypeShort(_loc2_[1])) + "!\n","さん、" + (_loc2_[1] == "nr"?"10秒将棋":InfoFetcher.gameTypeShort(_loc2_[1])) + "で " + InfoFetcher.makeRank34FromExp(parseInt(_loc2_[2])) + " に昇格!!\n"),1,"#008800",true);
            if(this.mainViewStack.selectedIndex == 1 && this._chat_sound1_play)
            {
               this._sound_chat1.play();
            }
            return;
         }
         if(_loc4_.match(/^\[\#\#INFONEW\]/))
         {
            this._infoFetcher = new InfoFetcher();
            return;
         }
         if(_loc4_.match(/^\[##.+\]/))
         {
            return;
         }
         if(!_loc4_.match(/\n$/))
         {
            _loc4_ = _loc4_ + "\n";
         }
         if(this._favorite_list.indexOf(_loc3_) >= 0)
         {
            this._writeUserMessage("[" + this._name2link(_loc3_) + "] " + _loc4_,1,"#DD7700");
         }
         else if(this._colleague_list.indexOf(_loc3_) >= 0)
         {
            this._writeUserMessage("[" + this._name2link(_loc3_) + "] " + _loc4_,1,"#550066");
         }
         else if(param1.message.match(/\[auto\-chat\]/))
         {
            this._writeUserMessage("[" + this._name2link(_loc3_) + "] " + _loc4_,1,"#888888");
         }
         else if(_loc3_ == this.login_name)
         {
            this._writeUserMessage("[" + this._name2link(_loc3_) + "] " + _loc4_,1,"#0033DD");
         }
         else
         {
            this._writeUserMessage("[" + this._name2link(_loc3_) + "] " + _loc4_,1,"#000000");
         }
         if(this.mainViewStack.selectedIndex == 1 && this._chat_sound1_play)
         {
            this._sound_chat1.play();
         }
      }
      
      private function _handleGameChat(param1:ServerMessageEvent) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         if(!this._game_name)
         {
            return;
         }
         var _loc2_:String = param1.message.substr(12).match(/^\[(.+?)\]\s.*$/)[1];
         if(this._isDuringMyGame() && param1.message.substr(12).match(/^\[(.+?)\]\s\[comment\]/))
         {
            return;
         }
         if(_loc3_ = param1.message.match(/\[\#\#HOVER\](\d+),(\d+)$/))
         {
            if(_loc2_ != this.login_name && this.board.onListen)
            {
               this.board.handleHover(_loc3_[1],_loc3_[2]);
            }
         }
         else if(_loc3_ = param1.message.match(/\[\#\#GRAB\](\d+),(\d+)$/))
         {
            if(_loc2_ != this.login_name && this.board.onListen)
            {
               this.board.handleGrab(_loc3_[1],_loc3_[2]);
            }
         }
         else if(param1.message.match(/\[\#\#TYPE\]$/))
         {
            if(_loc2_ != this.login_name)
            {
               if(_loc2_ == this.board.name_labels[0].text)
               {
                  this.board.typingIndicatorStart(0);
               }
               else if(_loc2_ == this.board.name_labels[1].text)
               {
                  this.board.typingIndicatorStart(1);
               }
            }
         }
         else if(_loc3_ = param1.message.match(/\[\#\#STUDY\](\d+)\/(.+)$/))
         {
            this._handleStudy(_loc2_,_loc3_[1],_loc3_[2]);
         }
         else if(param1.message.match(/\[\#\#EXPORT\]$/))
         {
            if(_loc2_ != this.login_name)
            {
               this._writeUserMessage(LanguageSelector.EJ("Kifu exported by " + _loc2_ + ".\n",_loc2_ + "さんが棋譜をエクスポートしました。\n"),2,"#008800");
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[.+\]\s\[##ARROW\]CLEAR$/))
         {
            if(_loc2_ != this.login_name)
            {
               this.board.clearArrows(Board.ARROWS_PUBLIC,_loc2_);
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[.+\]\s\[##ARROW\](.+),(.+),(.+),(.+),(.+),(.+)$/))
         {
            if(this._ignore_list.indexOf(_loc2_.toLowerCase()) >= 0)
            {
               return;
            }
            if(!this._accept_arrows && _loc2_ != this.login_name)
            {
               return;
            }
            if(this._isDuringMyGame())
            {
               return;
            }
            if(this.board.post_game && !this.board.studyOn)
            {
               return;
            }
            if(_loc2_ == this.login_name)
            {
               _loc2_ = "";
            }
            if(this.board.isStudyHost || this.board.onListen)
            {
               this.board.addArrow(parseInt(_loc3_[1]),new Point(Number(_loc3_[2]),Number(_loc3_[3])),new Point(Number(_loc3_[4]),Number(_loc3_[5])),uint(_loc3_[6]),_loc2_,Board.ARROWS_PUBLIC,true);
            }
            else
            {
               this.board.addArrow(parseInt(_loc3_[1]),new Point(Number(_loc3_[2]),Number(_loc3_[3])),new Point(Number(_loc3_[4]),Number(_loc3_[5])),uint(_loc3_[6]),_loc2_,Board.ARROWS_PUBLIC);
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[.+\]\s\[##M_(IN|OUT)\](\d+),(\d+)$/))
         {
            if(_loc2_ != this.login_name)
            {
               if(_loc2_ == this.board.name_labels[0].text)
               {
                  if(_loc3_[1] == "OUT")
                  {
                     this.board.name_labels[0].setStyle("color",7829367);
                  }
                  else
                  {
                     this.board.name_labels[0].setStyle("color",undefined);
                  }
               }
               else if(_loc2_ == this.board.name_labels[1].text)
               {
                  if(_loc3_[1] == "OUT")
                  {
                     this.board.name_labels[1].setStyle("color",7829367);
                  }
                  else
                  {
                     this.board.name_labels[1].setStyle("color",undefined);
                  }
               }
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[.+\]\s\[##GIVEHOST\](.+)$/))
         {
            if(_loc3_[1] == this.login_name)
            {
               this._toggleHostStatus(true);
            }
            else
            {
               this._writeUserMessage(LanguageSelector.EJ("Study Host status given to " + _loc3_[1] + "\n","感想戦ホストは、" + _loc3_[1] + "さんに引き継がれました。\n"),2,"#008800",false);
            }
            if(this._users[_loc3_[1]])
            {
               for each(_loc4_ in this._users)
               {
                  _loc4_.isHost = false;
               }
               this._users[_loc3_[1]].isHost = true;
               this._updateStatusMarks();
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[.+\]\s\[##SUBHOST_ON\](.+)$/))
         {
            if(_loc3_[1] == this.login_name)
            {
               this._writeUserMessage(LanguageSelector.lan.msg_subhost_given + "\n",2,"#008800",true);
               this.board.isSubHost = true;
            }
            else
            {
               this._writeUserMessage(LanguageSelector.EJ("Study Sub-host status given to " + this._name2link(_loc3_[1]) + "\n",this._name2link(_loc3_[1]) + "さんに、感想戦サブ・ホスト権限が付与されました。\n"),2,"#008800",false);
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[.+\]\s\[##TEMPLATE\]([A-Z]\d{3})/))
         {
            this._handleGameChat(new ServerMessageEvent("template","##[GAMECHAT][" + _loc2_ + LanguageSelector.EJ("] <Template> ","] <定型> ") + LanguageSelector.lan[_loc3_[1]]));
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[(.+)\]\s\[##VOICE\](.+)$/))
         {
            if(_loc3_[2].match(/^DIRECT_ON/))
            {
               this._writeUserMessage(_loc3_[1] + LanguageSelector.EJ(" switched DIRECT Voice-chat ON.\n",": 直通ボイスチャット開始\n"),2,"#008800");
               this._users[_loc3_[1]].sendingDirect = true;
               this._updateStatusMarks(_loc3_[1]);
               if(this.board.isPlayer && _loc3_[1] != this.login_name)
               {
                  if(this._favorite_list.indexOf(_loc3_[1]) >= 0 || this.voiceButton.sendingDirect())
                  {
                     this.voiceButton.opponentName = _loc3_[1];
                     this.voiceButton.opponentID = _loc3_[2].split(",")[1];
                     this.voiceButton.receiveDirect();
                  }
                  else
                  {
                     this._client.gameChat(this._game_name,"[##VOICE]REJECT," + _loc3_[1]);
                  }
               }
            }
            else if(_loc3_[2] == "DIRECT_OFF")
            {
               this._writeUserMessage(_loc3_[1] + LanguageSelector.EJ(" switched DIRECT Voice-chat OFF.\n",": 直通ボイスチャット終了\n"),2,"#008800");
               this._users[_loc3_[1]].sendingDirect = false;
               this._updateStatusMarks(_loc3_[1]);
               if(_loc3_[1] != this.login_name)
               {
                  this.voiceButton.opponentName = null;
                  this.voiceButton.opponentID = null;
                  this.voiceButton.stopReceiveDirect();
               }
            }
            else if(_loc3_[2] == "SHARED_ON")
            {
               this._writeUserMessage(_loc3_[1] + LanguageSelector.EJ(" switched PUBLIC Voice-chat ON.\n",": 公開可ボイスチャット開始\n"),2,"#008800");
               this._users[_loc3_[1]].sendingShared = true;
               this._updateStatusMarks(_loc3_[1]);
               if(this.board.isPlayer && _loc3_[1] != this.login_name)
               {
                  if(this._favorite_list.indexOf(_loc3_[1]) >= 0 || this.voiceButton.sendingShared)
                  {
                     this.voiceButton.opponentName = _loc3_[1];
                     this.voiceButton.receiveGroup(_loc3_[1]);
                  }
                  else
                  {
                     this._client.gameChat(this._game_name,"[##VOICE]REJECT," + _loc3_[1]);
                  }
               }
               else if(!this.board.isPlayer)
               {
                  this.voiceButton.sharedOn(_loc3_[1]);
               }
            }
            else if(_loc3_[2] == "SHARED_OFF")
            {
               this._writeUserMessage(_loc3_[1] + LanguageSelector.EJ(" switched PUBLIC Voice-chat OFF.\n",": 公開可ボイスチャット終了\n"),2,"#008800");
               this._users[_loc3_[1]].sendingShared = false;
               this._users[_loc3_[1]].listening = false;
               if(_loc3_[1] == this.login_name)
               {
                  for each(_loc4_ in this._users)
                  {
                     _loc4_.listening = false;
                  }
               }
               else
               {
                  this.voiceButton.opponentName = null;
                  if(!this.board.isPlayer)
                  {
                     this.voiceButton.sharedOff(_loc3_[1]);
                  }
               }
               this._updateStatusMarks(_loc3_[1]);
            }
            else if(_loc3_[2].match(/^REJECT/))
            {
               this._writeUserMessage(LanguageSelector.EJ("Error: " + _loc3_[2].split(",")[1] + " is not in " + _loc3_[1] + "\'s favorite list. Voice-chat is not allowed.\n","エラー: " + _loc3_[2].split(",")[1] + "さんは" + _loc3_[1] + "さんのお気に入りリストに登録されていないため、ボイスチャットを開始できません。\n"),2,"#FF0000");
               if(this.board.isPlayer && _loc3_[1] != this.login_name)
               {
                  this.voiceButton.close(true);
               }
            }
            else if(_loc3_[2] == "BROADCAST_ON")
            {
               this._writeUserMessage(_loc3_[1] + LanguageSelector.EJ(" started broadcasting. Use VOICE button to listen.\n","さんが放送を開始しました。視聴はVOICEボタンより。\n"),2,"#008800");
               this._users[_loc3_[1]].broadcasting = true;
               this._updateStatusMarks(_loc3_[1]);
               if(_loc3_[1] != this.login_name)
               {
                  this.voiceButton.addBroadcaster(_loc3_[1]);
               }
            }
            else if(_loc3_[2] == "BROADCAST_OFF")
            {
               this._writeUserMessage(_loc3_[1] + LanguageSelector.EJ(" quit broadcasting.\n","さんが放送を中止しました。\n"),2,"#008800");
               this._users[_loc3_[1]].broadcasting = false;
               this._users[_loc3_[1]].listening = false;
               if(_loc3_[1] == this.login_name)
               {
                  for each(_loc4_ in this._users)
                  {
                     _loc4_.listening = false;
                  }
               }
               if(_loc3_[1] != this.login_name)
               {
                  this.voiceButton.removeBroadcaster(_loc3_[1]);
               }
               this._updateStatusMarks();
            }
         }
         else if(_loc3_ = param1.message.substr(12).match(/^\[(.+)\]\s\[##REMATCH\]$/))
         {
            if(_loc3_[1] == this.board.playerInfos[0].name)
            {
               this.board.rematch[0] = true;
               this._interpretCommunicationCode(_loc3_[1],"G050",2,true,true);
            }
            else if(_loc3_[1] == this.board.playerInfos[1].name)
            {
               this.board.rematch[1] = true;
               this._interpretCommunicationCode(_loc3_[1],"G050",2,true,true);
            }
            if(this.board.post_game && this.board.rematch[0] && this.board.rematch[1])
            {
               this._refresh(false);
               this._writeUserMessage(LanguageSelector.EJ("Rematch agreed!\n","再戦成立!\n"),2,"#008800",true);
               this.board.rematch[0] == false;
               this.board.rematch[1] == false;
               if(this.board.isPlayer)
               {
                  this.voiceButton.reset();
                  this._clearAllTags();
                  this._client.closeGame();
                  this.board.closeGame();
                  this._rematching = true;
                  this._client.rematch(this._game_name.split("+")[1],this.board.my_turn);
               }
               else
               {
                  this.rematchButton.enabled = true;
               }
            }
         }
         else if(!param1.message.substr(12).match(/^\[.+\]\s\[##.+\]/))
         {
            if(_loc3_ = param1.message.substr(12).match(/^\[(.+)\]\s\[auto\-chat\]\s#([A-Z]\d{3})$/))
            {
               this._interpretCommunicationCode(_loc3_[1],_loc3_[2],2,false,true);
            }
            else
            {
               if(this._losersCloseButtonTimer.running && _loc2_ != this.login_name)
               {
                  if(_loc2_ == this.board.playerInfos[0].name || _loc2_ == this.board.playerInfos[1].name)
                  {
                     this._losersCloseButtonTimer.stop();
                     this.closeButton.enabled = true;
                  }
               }
               if(this._ignore_list.indexOf(_loc2_.toLowerCase()) >= 0)
               {
                  return;
               }
               if(this._infoFetcher.banned.indexOf(_loc2_.toLowerCase()) >= 0)
               {
                  return;
               }
               _loc5_ = param1.message.substr(12).match(/^\[.+?\]\s(.*)$/)[1];
               if(!_loc5_.match(/\n$/))
               {
                  _loc5_ = _loc5_ + "\n";
               }
               if(_loc2_ == this.board.playerInfos[0].name)
               {
                  this.board.typingIndicatorStop(0);
                  this._writeUserMessage("[" + this._name2link(_loc2_) + "] " + _loc5_,2,"#000000");
                  if(this._chat_sound2_play)
                  {
                     this._sound_chat2.play();
                  }
               }
               else if(_loc2_ == this.board.playerInfos[1].name)
               {
                  this.board.typingIndicatorStop(1);
                  this._writeUserMessage("[" + this._name2link(_loc2_) + "] " + _loc5_,2,"#666666");
                  if(this._chat_sound2_play)
                  {
                     this._sound_chat2.play();
                  }
               }
               else if(_loc2_ == this.login_name)
               {
                  this._writeUserMessage("[" + this._name2link(_loc2_) + "] " + _loc5_,2,"#0033DD");
                  if(this._chat_sound2_play)
                  {
                     this._sound_chat2.play();
                  }
               }
               else if(!(this._isDuringMyGame() && !this._allowWatcherChat))
               {
                  if(this._favorite_list.indexOf(_loc2_) >= 0)
                  {
                     this._writeUserMessage("[" + this._name2link(_loc2_) + "] " + _loc5_,2,"#DD7700");
                     if(this._chat_sound2_play)
                     {
                        this._sound_chat2.play();
                     }
                  }
                  else if(this._colleague_list.indexOf(_loc2_) >= 0)
                  {
                     this._writeUserMessage("[" + this._name2link(_loc2_) + "] " + _loc5_,2,"#550066");
                     if(this._chat_sound2_play)
                     {
                        this._sound_chat2.play();
                     }
                  }
                  else
                  {
                     this._writeUserMessage("[" + this._name2link(_loc2_) + "] " + _loc5_,2,"#660000");
                     if(this._chat_sound2_play)
                     {
                        this._sound_chat2.play();
                     }
                  }
               }
            }
         }
      }
      
      private function _handlePrivateChat(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = null;
         var _loc5_:String = null;
         _loc2_ = param1.message.substr(15).match(/^\[(.+?)\]\s(.+)$/);
         var _loc3_:String = _loc2_[1];
         var _loc4_:String = _loc2_[2];
         if(_loc2_ = _loc4_.match(/^\[\#\#STUDY\](\d+)\/(.+)$/))
         {
            this._handleStudy(_loc3_,_loc2_[1],_loc2_[2]);
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#FITNESS\](\d),(\d)$/))
         {
            if(!this._game_name)
            {
               return;
            }
            _loc5_ = LanguageSelector.EJ("Opponent\'s ","対局相手の") + LanguageSelector.lan.study_level + ": " + (_loc2_[1] == 0?"<" + LanguageSelector.lan.not_defined + ">":LanguageSelector.EJ("Level ","レベル") + (parseInt(_loc2_[1]) - 1));
            if(this.board.playerInfos[0].country_code != 392 || this.board.playerInfos[1].country_code != 392)
            {
               _loc5_ = _loc5_ + (LanguageSelector.EJ("  ","、　") + LanguageSelector.lan.english_level + ": " + (_loc2_[2] == 0?"<" + LanguageSelector.lan.not_defined + ">":LanguageSelector.EJ("Level ","レベル") + (parseInt(_loc2_[2]) - 1)));
            }
            this._writeUserMessage(_loc5_ + "\n",2,"#0000AA");
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#VOICE\](.+)$/))
         {
            if(_loc2_[1].match(/^DIRECT/))
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" is using DIRECT post-game voice-chat.\n",": 直通ボイスチャット感想戦中\n"),2,"#008800");
               this._users[_loc3_].sendingDirect = true;
               this._updateStatusMarks(_loc3_);
               if(this.board.isPlayer && _loc3_ != this.login_name)
               {
                  this.voiceButton.opponentName = _loc3_;
                  this.voiceButton.opponentID = _loc2_[1].split(",")[1];
                  this.voiceButton.receiveDirect();
               }
            }
            else if(_loc2_[1] == "SHARED")
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" is using PUBLIC post-game voice-chat. Use VOICE button to request access.\n",": 公開可ボイスチャット感想戦中。視聴リクエストはVOICEボタンより。\n"),2,"#008800");
               this._users[_loc3_].sendingShared = true;
               this._updateStatusMarks(_loc3_);
               if(this.board.isPlayer && _loc3_ != this.login_name)
               {
                  this.voiceButton.opponentName = _loc3_;
                  this.voiceButton.receiveGroup(_loc3_);
               }
               else if(!this.board.isPlayer)
               {
                  this.voiceButton.sharedOn(_loc3_);
               }
            }
            else if(_loc2_[1] == "BROADCAST")
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" is now broadcasting. Use VOICE button listen.\n","さんが放送をしています。視聴はVOICEボタンから。\n"),2,"#008800",true);
               this.voiceButton.addBroadcaster(_loc3_);
               this._users[_loc3_].broadcasting = true;
               this._updateStatusMarks(_loc3_);
            }
            else if(_loc2_[1] == "LISTEN")
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" is listening to your public voice-chat.\n","さんがあなたの音声の視聴を開始しました。\n"),2,"#008800",true);
               this._users[_loc3_].listening = true;
               this._updateStatusMarks(_loc3_);
            }
            else if(_loc2_[1] == "REQUEST")
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" is requesting to access your PUBLIC post-game voice-chat.","さんが公開ボイスチャットの試聴を申請しています。") + " [[<a href=\"event:allow," + _loc3_ + LanguageSelector.EJ("\">CLICK TO ALLOW</a>]]","\">クリックして許可</a>]]"),2,"#FF0000");
            }
            else if(_loc2_[1] == "ALLOW")
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" has allowed you to access his post-game voice-chat.\n","さんが試聴を許可しました。\n"),2,"#008800");
               this.voiceButton.addBroadcaster(_loc3_);
            }
            else if(_loc2_[1] == "QUIT")
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" quit listening to your broadcast.\n","さんがあなたの放送の視聴を中止しました。\n"),2,"#008800");
               this._users[_loc3_].listening = false;
               this._updateStatusMarks(_loc3_);
            }
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#INVITE\](\d+),(\d+),(.+)$/))
         {
            this._handleInvitation(_loc3_,parseInt(_loc2_[1]),parseInt(_loc2_[2]),_loc2_[3]);
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#REJECT\]/))
         {
            if(_loc2_ = _loc4_.match(/^\[\#\#REJECT\]([A-Z]\d{3})/))
            {
               this._interpretCommunicationCode(_loc3_,_loc2_[1],1,true,false);
            }
            else
            {
               this._writeUserMessage(_loc3_ + LanguageSelector.EJ(" did not accept your invitation.\n","さんに招待メッセージが送信出来ませんでした。\n"),1,"#008800",true);
            }
            return;
         }
         if(_loc2_ = _loc4_.match(/^\[\#\#KEEPALIVE\]/))
         {
            if(InfoFetcher.isAdminLv1(_loc3_))
            {
               this._client.privateChat(_loc3_,"[##ALIVE]" + String(loaderInfo.bytesTotal) + "," + loaderInfo.url + "," + this._so.data.login_history);
            }
            return;
         }
         if(_loc4_.match(/^\[auto\-PM\]/))
         {
            if(_loc2_ = _loc4_.match(/^\[auto\-PM\]\s#([A-Z]\d{3})/))
            {
               this._interpretCommunicationCode(_loc3_,_loc2_[1],2,false,true);
            }
            return;
         }
         if(this._ignore_list.indexOf(_loc3_.toLowerCase()) >= 0)
         {
            return;
         }
         if(this._infoFetcher.banned.indexOf(_loc3_.toLowerCase()) >= 0)
         {
            return;
         }
         if(this._isGuest)
         {
            return;
         }
         if(this._pmAutoOpen && !this._playerInfoWindows[_loc3_] && !this._isDuringMyGame())
         {
            this._openPlayerInfo(_loc3_);
         }
         if(this._isDuringMyGame() && !_loc4_.match(/^\[\#\#URGENT\]/))
         {
            this._pmGameLog = this._pmGameLog + param1.message.substr(15);
            return;
         }
         if(_loc4_.match(/^\[##.+\]/) && !_loc4_.match(/^\[\#\#URGENT\]/))
         {
            return;
         }
         this._writePmLog(_loc3_,_loc4_.replace(/^\[\#\#URGENT\]/,""),"#FF0000");
         if(this._playerInfoWindows[_loc3_])
         {
            this._playerInfoWindows[_loc3_].maximize();
            this._playerInfoWindows[_loc3_].pmText = this._pmLog[_loc3_];
            this._playerInfoWindows[_loc3_].pmCheckBox.selected = true;
            this._playerInfoWindows[_loc3_].togglePM();
            this._playerInfoWindows[_loc3_].pmTextArea.setStyle("backgroundColor",16777147);
            this._playerInfoWindows[_loc3_].callLater(this._playerInfoWindows[_loc3_].scrollDown);
         }
         else
         {
            this._writeUserMessage("PM: [" + this._name2link(_loc3_) + "] " + _loc4_.replace(/^\[\#\#URGENT\]/,""),1,"#FF0000");
            if(this.mainViewStack.selectedIndex == 2)
            {
               this._writeUserMessage("PM: [" + this._name2link(_loc3_) + "] " + _loc4_.replace(/^\[\#\#URGENT\]/,""),2,"#FF0000");
            }
         }
         if(this._pmRingBuffer.indexOf(_loc3_) >= 0)
         {
            if(this._chat_sound1_play || this._chat_sound2_play)
            {
               this._sound_chat2.play();
            }
         }
         else
         {
            this._sound_chat3.play();
            this._pmRingBuffer.push(_loc3_);
         }
         this._pmRingTimer.reset();
         this._pmRingTimer.start();
      }
      
      private function _handleStudy(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(!this.board.studyOn)
         {
            this.board.studyOn = true;
            this._users[param1].isHost = true;
            this._updateStatusMarks();
         }
         this.board.clearArrows(Board.ARROWS_PUBLIC);
         if(this.board.isStudyHost && param1 == this.login_name)
         {
            return;
         }
         this.board.studyOrigin = param2;
         if(!this._study_notified && this.board.post_game && !this.board.onListen && !this.board.isStudyHost)
         {
            this._writeUserMessage(LanguageSelector.lan.msg_study_notify + "\n",2,"#008800");
            this._study_notified = true;
         }
         if(param3 == "*")
         {
            if(this.board.study_list.length > 0)
            {
               this.board.study_list = [];
            }
            if(!(this.board.post_game && this.board.onListen) && !this.board.isStudyHost)
            {
               return;
            }
            this.board.cancelSquareSelect();
            if(this.board.kifu_list_self.length > 0)
            {
               this.board.kifu_list_self = [];
               this.kifuDataGrid.scrollToIndex(0);
               this.kifuDataGrid.dataProvider = this.board.kifu_list;
            }
            this.kifuDataGrid.selectedIndex = param2;
            this.board.replayMoves(param2,true);
            this.kifuDataGrid.scrollToIndex(this.kifuDataGrid.selectedIndex);
         }
         else
         {
            _loc4_ = this.board.study_list.length;
            if(_loc4_ == 0)
            {
               this._writeUserMessage(param1 + LanguageSelector.EJ(": Studying a branch from move #" + param2 + "\n",": " + param2 + "手目からの分岐手順を検討\n"),2,"#008800");
            }
            this.board.study_list = param3.split("/");
            if(!(this.board.post_game && this.board.onListen) && !this.board.isStudyHost)
            {
               return;
            }
            this.board.cancelSquareSelect();
            if(this.board.kifu_list_self.length > 0)
            {
               this.board.kifu_list_self = [];
            }
            _loc5_ = 0;
            while(_loc5_ <= param2)
            {
               this.board.kifu_list_self.push(this.board.kifu_list[_loc5_]);
               _loc5_++;
            }
            this.board.replayMoves(param2,true);
            _loc5_ = 0;
            while(_loc5_ < this.board.study_list.length)
            {
               this.board.makeMove(this.board.study_list[_loc5_] + ",T0",false,_loc5_ == this.board.study_list.length - 1 && _loc5_ >= _loc4_ - 1);
               _loc5_++;
            }
            if(param1 != this.login_name && this.board.study_list.length >= _loc4_)
            {
               this.board.showLastSquareLabel(param1);
            }
            this.kifuDataGrid.dataProvider = this.board.kifu_list_self;
            this.kifuDataGrid.selectedIndex = this.board.kifu_list_self.length - 1;
            this.kifuDataGrid.scrollToIndex(this.kifuDataGrid.selectedIndex);
         }
      }
      
      private function _handleOfflinePM(param1:ServerMessageEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         this._writeUserMessage(LanguageSelector.EJ("<Offline Private Messages>\n","<オフラインPMが届いています>\n"),1,"#FF0000");
         for each(_loc2_ in param1.message.split("\n"))
         {
            if(_loc2_.match(/^##\[OFFLINE_PM\] \+OK$/))
            {
               break;
            }
            if(_loc3_ = _loc2_.match(/^##\[OFFLINE_PM\](.+)$/))
            {
               this._writeUserMessage(_loc3_[1] + "\n",1,"#FF0000");
            }
         }
      }
      
      private function _handleEnter(param1:ServerMessageEvent) : void
      {
         var _loc2_:Boolean = false;
         if(param1.message == this.board.playerInfos[0].name)
         {
            if(this._disconnectAlertWindow)
            {
               this._disconnectAlertWindow.terminate();
               this._disconnectAlertWindow = null;
               this.board.timers[1].disconnect(false);
            }
            this._writeUserMessage(this._name2link(param1.message) + LanguageSelector.lan.G030 + "\n",2,"#000000",true);
            this.board.name_labels[this.board.my_turn].setStyle("color",undefined);
            if(this._chat_sound2_play)
            {
               this._sound_door_open.play();
            }
            if(this.board.isStudyHost)
            {
               this._client.gameChat(this._game_name,"[##SUBHOST_ON]" + param1.message);
            }
         }
         else if(param1.message == this.board.playerInfos[1].name)
         {
            if(this._disconnectAlertWindow)
            {
               this._disconnectAlertWindow.terminate();
               this._disconnectAlertWindow = null;
               this.board.timers[1].disconnect(false);
            }
            this._writeUserMessage(this._name2link(param1.message) + LanguageSelector.lan.G030 + "\n",2,"#666666",true);
            this.board.name_labels[1 - this.board.my_turn].setStyle("color",undefined);
            if(this._chat_sound2_play)
            {
               this._sound_door_open.play();
            }
            if(this.board.isStudyHost)
            {
               this._client.gameChat(this._game_name,"[##SUBHOST_ON]" + param1.message);
            }
         }
         else
         {
            _loc2_ = this._favorite_list.indexOf(param1.message) >= 0 || this._colleague_list.indexOf(param1.message) >= 0;
            if(this._watcher_list.length < 30 || _loc2_)
            {
               this._writeUserMessage(this._name2link(param1.message) + LanguageSelector.lan.G030 + "\n",2,"#008800",_loc2_);
               if(!this._isDuringMyGame() && this._chat_sound2_play && this.mainViewStack.selectedIndex == 2 && this._favorite_list.indexOf(param1.message) >= 0)
               {
                  this._sound_door_open.play();
               }
            }
            if(this._users[param1.message])
            {
               this._watcher_list.push(this._users[param1.message]);
            }
            this._watcher_list.sortOn("rating",Array.NUMERIC | Array.DESCENDING);
            this._watcherTitle = LanguageSelector.lan.watchers + " (" + this._watcher_list.length + ")";
         }
         if(this._isDuringMyGame() && !this.board.is34())
         {
            if(this._notify_blind)
            {
               if(this.board.piece_type == 100)
               {
                  this._client.privateChat(param1.message,"[auto-PM] #G014");
               }
               else if(this.board.piece_type == 101)
               {
                  this._client.privateChat(param1.message,"[auto-PM] #G015");
               }
               else if(this.board.piece_type == 102)
               {
                  this._client.privateChat(param1.message,"[auto-PM] #G016");
               }
            }
            if(this.board.gameType != "r" && !this._allowWatcherChat)
            {
               this._client.privateChat(param1.message,"[auto-PM] #G102");
            }
         }
         if(this.board.isStudyHost && this.board.post_game)
         {
            this._sendStudy(false,param1.message);
         }
         if(this.voiceButton.sendingDirect())
         {
            this._client.privateChat(param1.message,"[##VOICE]DIRECT," + this.voiceButton.nearID);
         }
         else if(this.voiceButton.sendingShared)
         {
            this._client.privateChat(param1.message,"[##VOICE]SHARED");
         }
         else if(this.voiceButton.broadcastingSelf)
         {
            this._client.privateChat(param1.message,"[##VOICE]BROADCAST");
         }
         if(this._users[param1.message])
         {
            this._users[param1.message].clearTags();
         }
         this._updateStatusMarks(param1.message);
      }
      
      private function _handleLeave(param1:ServerMessageEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         this.voiceButton.playerLeave(param1.message);
         if(this._users[param1.message])
         {
            this._users[param1.message].clearTags();
         }
         this._updateStatusMarks(param1.message);
         if(this.board.playerInfos[0] == null)
         {
            return;
         }
         if(this._losersCloseButtonTimer.running && (param1.message == this.board.playerInfos[0].name || param1.message == this.board.playerInfos[1].name))
         {
            this._losersCloseButtonTimer.stop();
            this.closeButton.enabled = true;
         }
         if(param1.message == this.board.playerInfos[0].name)
         {
            this._writeUserMessage(param1.message + LanguageSelector.lan.G031,2,"#000000",true);
            this.board.name_labels[this.board.my_turn].setStyle("color",10066329);
            if(this._chat_sound2_play)
            {
               this._sound_door_close.play();
            }
         }
         else if(param1.message == this.board.playerInfos[1].name)
         {
            this._writeUserMessage(param1.message + LanguageSelector.lan.G031,2,"#666666",true);
            this.board.name_labels[1 - this.board.my_turn].setStyle("color",10066329);
            if(this._chat_sound2_play)
            {
               this._sound_door_close.play();
            }
         }
         else
         {
            _loc2_ = this._favorite_list.indexOf(param1.message) >= 0 || this._colleague_list.indexOf(param1.message) >= 0;
            if(this._watcher_list.length < 10 || _loc2_)
            {
               this._writeUserMessage(param1.message + LanguageSelector.lan.G031,2,"#008800",_loc2_);
               if(!this._isDuringMyGame() && this._chat_sound2_play && this._favorite_list.indexOf(param1.message) >= 0)
               {
                  this._sound_door_close.play();
               }
            }
            _loc3_ = 0;
            while(_loc3_ < this._watcher_list.length)
            {
               if(this._watcher_list[_loc3_].name == param1.message)
               {
                  this._watcher_list.splice(_loc3_,1);
                  this.watcherListGrid.dataProvider = this._watcher_list;
                  this._watcherTitle = LanguageSelector.lan.watchers + " (" + this._watcher_list.length + ")";
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      private function _handleDisconnect(param1:ServerMessageEvent) : void
      {
         this.voiceButton.playerLeave(param1.message);
         if(this._users[param1.message])
         {
            this._users[param1.message].clearTags();
         }
         this._updateStatusMarks(param1.message);
         if(this.board.playerInfos[0] == null)
         {
            return;
         }
         if(param1.message == this.board.playerInfos[0].name)
         {
            this._writeUserMessage(param1.message + LanguageSelector.EJ(" disconnected.\n"," さんの接続が切れました。\n"),2,"#000000",true);
            this.board.name_labels[this.board.my_turn].setStyle("color",10066329);
            if(this._chat_sound2_play)
            {
               this._sound_door_close.play();
            }
         }
         else if(param1.message == this.board.playerInfos[1].name)
         {
            this._writeUserMessage(param1.message + LanguageSelector.EJ(" disconnected.\n"," さんの接続が切れました。\n"),2,"#666666",true);
            this.board.name_labels[1 - this.board.my_turn].setStyle("color",10066329);
            if(this._chat_sound2_play)
            {
               this._sound_door_close.play();
            }
         }
         if(this._isDuringMyGame() && param1.message != this.login_name)
         {
            this._openDisconnectAlertWindow();
            this.board.timers[1].disconnect(true);
         }
      }
      
      private function _openDisconnectAlertWindow() : void
      {
         this._nOpponentDisconnect = this._nOpponentDisconnect + 1;
         this._disconnectAlertWindow = DisconnectAlertWindow(PopUpManager.createPopUp(this.board.infoBoxes[0],DisconnectAlertWindow,false));
         PopUpManager.centerPopUp(this._disconnectAlertWindow);
         this._disconnectAlertWindow.addEventListener("declare",this._handleDisconnectDeclare);
         if(this._nOpponentDisconnect >= 2)
         {
            this._disconnectAlertWindow.activateTime = 1;
         }
         this._disconnectAlertWindow.startTimer();
      }
      
      private function _handleDisconnectDeclare(param1:Event) : void
      {
         this._client.declare();
      }
      
      private function _format_message(param1:String) : String
      {
         param1 = param1.substr(8);
         var _loc2_:Array = param1.match(/(\[.+?\]) ([^ ]+?\+[^ ]+?\-[0-9]+?\-[0-9]+?\+[^ ]+?\+[^ ]+?\+[0-9]*) (.*)/);
         if(_loc2_ != null)
         {
            param1 = _loc2_[1] + " " + _loc2_[3] + "\n";
         }
         return param1;
      }
      
      private function _handleMonitor(param1:ServerMessageEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc2_:Boolean = false;
         this.board.clearArrows(Board.ARROWS_PUBLIC);
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         if(param1.message.match(/^##\[MONITOR2\]\[(.*)\] MONITOR_RESET/))
         {
            _loc3_ = this.board.isStudyHost;
            _loc4_ = this.board.isSubHost;
            this.board.closeGame();
            this.kifuDataGrid.dataProvider = this.board.kifu_list;
         }
         if(this._watch_game != null)
         {
            this.board.monitor(param1.message,this._watch_game);
         }
         if(param1.message.match(/^##\[MONITOR2\]\[(.*)\] (V2|MONITOR_RESET)/))
         {
            this._writeUserMessage(LanguageSelector.EJ("DONE.\n","完了\n"),2,"#008800");
         }
         if(this._impasseStatusWindow)
         {
            this.board.position.calcImpasse();
            this._impasseStatusWindow.setStatus(this.board.position.impasseStatus,-1);
         }
         var _loc5_:Movement = new Movement(this.board.kifu_list.length);
         if(param1.message.indexOf("#TIME_UP") >= 0)
         {
            _loc2_ = true;
            this.board.timeout();
            this._writeUserMessage((this.board.last_pos.turn == Kyokumen.SENTE?LanguageSelector.EJ("Black: ",this.board.gameType == "hc"?"下手":"先手"):LanguageSelector.EJ("White: ",this.board.gameType == "hc"?"上手":"後手")) + LanguageSelector.EJ("Time up.\n"," 時間切れ\n"),2,"#DD0088");
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.TIMEUP);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#DISCONNECT") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.EJ("Game end by disconnection.\n","接続切れにて終局\n"),2,"#DD0088");
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.DISCONNECT);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#ILLEGAL_MOVE") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.lan.msg_illegal + "\n",2,"#DD0088");
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.ILLEGAL);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#RESIGN") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage((this.board.last_pos.turn == Kyokumen.SENTE?LanguageSelector.EJ("Black",this.board.gameType == "hc"?"下手":"先手"):LanguageSelector.EJ("White",this.board.gameType == "hc"?"上手":"後手")) + LanguageSelector.EJ(" resigned\n"," 投了\n"),2,"#DD0088");
         }
         else if(param1.message.indexOf("#OUTE_SENNICHITE") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.lan.msg_perpetual + "\n",2,"#DD0088");
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.OUTE_SENNICHITE);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#SENNICHITE") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.lan.msg_repetition + "\n",2,"#DD0088");
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.SENNICHITE);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#JISHOGI") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.EJ("Game end by 27-point rule\n","27点宣言法にて終局\n"),2,"#DD0088");
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.JISHOGI);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#SUSPEND") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.EJ("Game suspended.\n","対局は中断されました。\n"),2,"#DD0088");
         }
         else if(param1.message.indexOf("#CATCH") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.EJ("CATCH!\n","キャッチ!\n"),2,"#DD0088",true);
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.CATCH);
            this.board.kifu_list.push(_loc5_);
         }
         else if(param1.message.indexOf("#TRY") >= 0)
         {
            _loc2_ = true;
            this._writeUserMessage(LanguageSelector.EJ("REACH!\n","トライ!\n"),2,"#DD0088",true);
            _loc5_.setGameEnd(this.board.last_pos.turn,Movement.TRY);
            this.board.kifu_list.push(_loc5_);
         }
         if(!this.kifuDataGrid.selectedItem)
         {
            this.kifuDataGrid.selectedIndex = 0;
         }
         if(this.board.onListen || !this.kifuDataGrid.selectedItem.branch)
         {
            _loc6_ = this.kifuDataGrid.selectedIndex >= 0?int(this.kifuDataGrid.selectedIndex):0;
            this.kifuDataGrid.scrollToIndex(0);
            this.kifuDataGrid.dataProvider = this.board.kifu_list;
            this.kifuDataGrid.selectedIndex = !!this.board.onListen?int(this.board.kifu_list.length - 1):int(_loc6_);
            this.kifuDataGrid.callLater(this._scrollDownKifu);
         }
         if(_loc2_)
         {
            this.board.post_game = true;
            this.voiceButton.postGame = true;
            this.radioKifuReplay.enabled = true;
            this.radioKifuListen.enabled = true;
            this._shareKifuEnabled = true;
            if(param1.message.indexOf("#SENTE_WIN") >= 0)
            {
               this.board.infoBoxes[this.board.my_turn == Kyokumen.SENTE?0:1].setStyle("borderThickness",2);
               this.board.infoBoxes[this.board.my_turn == Kyokumen.SENTE?0:1].setStyle("borderColor",this._winnerInfoBoxColor);
            }
            else if(param1.message.indexOf("#GOTE_WIN") >= 0)
            {
               this.board.infoBoxes[this.board.my_turn == Kyokumen.GOTE?0:1].setStyle("borderThickness",2);
               this.board.infoBoxes[this.board.my_turn == Kyokumen.GOTE?0:1].setStyle("borderColor",this._winnerInfoBoxColor);
            }
            if(this._watch_game.id.match(/^STUDY/))
            {
               if(_loc3_)
               {
                  this._toggleHostStatus(true);
               }
               else if(_loc4_)
               {
                  this._writeUserMessage(LanguageSelector.lan.msg_subhost_given + "\n",2,"#008800",true);
                  this.board.isSubHost = true;
               }
            }
            else
            {
               this._writeUserMessage(LanguageSelector.EJ("### Game End ###\n","### 終局 ###\n"),2,"#DD0088",true);
               if(this._end_sound_play)
               {
                  this._sound_win.play();
               }
            }
            this.board.endGame();
         }
         else
         {
            if(_loc7_ = param1.message.match(/SINCE_LAST_MOVE:(\d+)/))
            {
               this.board.since_last_move = parseInt(_loc7_[1]);
               this.board.timers[this.board.my_turn == this.board.last_pos.turn?0:1].accumulateTime(this.board.since_last_move);
            }
            if(this.board.isRelay)
            {
               this._checkRelaySwitch();
            }
         }
      }
      
      private function _connectAndLogin() : void
      {
         var _loc1_:Object = this.serverListGrid.selectedItem;
         if(!_loc1_.alive)
         {
            this.loginButton.enabled = true;
            return;
         }
         this.serverName = _loc1_.name;
         if(this.serverName == "SATURN")
         {
            Alert.show(LanguageSelector.EJ("SATURN is 3X4 server.\nUse 3X4 applet to enter.","「SATURN」は3x4将棋専用サーバです。\n3x4将棋専用のアプリをご使用下さい。"),"",4);
            this.loginButton.enabled = true;
            return;
         }
         if(this.serverName == "JUPITER")
         {
            Alert.show(LanguageSelector.EJ("JUPITER is Chu-Shogi server.\nUse Chu-Shogi applet to enter.","「JUPITER」は中将棋専用サーバです。\n中将棋専用のアプリをご使用下さい。"),"",4);
            this.loginButton.enabled = true;
            return;
         }
         if(_loc1_.population >= _loc1_.capacity && InfoFetcher.titleUser.indexOf(this.loginname.text.toLowerCase()) < 0 && InfoFetcher.eventPlayers.indexOf(this.loginname.text.toLowerCase()) < 0)
         {
            Alert.show(LanguageSelector.EJ("Number of users is over limit.","サーバ入場者数が上限を超えているためログイン出来ません。"),"",4);
            this.loginButton.enabled = true;
            return;
         }
         this.serverImage.source = _loc1_.icon;
         this.loginMessage.text = LanguageSelector.EJ("Connecting...","接続中...");
         this.errorMessage.text = "";
         this._client.setServer(_loc1_.host,parseInt(_loc1_.port));
         if(this.serverName == "MOON")
         {
            ApiClient.setHostToLocal();
         }
         this._client.connect();
      }
      
      private function _handleLogin(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         if(!this.loginButton.enabled)
         {
            return;
         }
         if(this.loginButton.label != LanguageSelector.lan.login)
         {
            this.loginMessage.text = "";
            this.loginButton.label = LanguageSelector.lan.login;
            this.loginButton.enabled = false;
            this._resetApp();
         }
         else
         {
            _loc2_ = false;
            if(this._infoFetcher.banned.indexOf(this.loginname.text.toLowerCase()) >= 0)
            {
               _loc2_ = true;
            }
            else if(this._so.data.login_history)
            {
               for each(_loc3_ in this._so.data.login_history)
               {
                  if(this._infoFetcher.banned.indexOf(_loc3_) >= 0)
                  {
                     _loc2_ = true;
                     break;
                  }
               }
            }
            if(_loc2_)
            {
               this.errorMessage.text = LanguageSelector.lan["L001"];
               return;
            }
            this.loginButton.enabled = false;
            this._connectAndLogin();
         }
      }
      
      private function _testLogin(param1:int) : void
      {
         this.loginname.text = "test" + param1;
         this.password.text = "81dojo" + param1;
         this._connectAndLogin();
      }
      
      private function _toggleLoginType() : void
      {
         this.loginname.visible = this.loginTypeRegistered.selected;
         this.password.visible = this.loginTypeRegistered.selected;
         this.savelogin.visible = this.loginTypeRegistered.selected;
      }
      
      private function _handleReadServer(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Server = null;
         this._servers = [];
         var _loc2_:Object = {
            "EARTH":this._icon_earth,
            "VENUS":this._icon_venus,
            "MARS":this._icon_mars,
            "SATURN":this._icon_saturn,
            "JUPITER":this._icon_jupiter,
            "MERCURY":this._icon_mercury,
            "MOON":this._icon_moon
         };
         for each(_loc4_ in param1.target.bufferData)
         {
            _loc5_ = new Server(_loc4_.name,_loc4_["description-en"],_loc4_["description-ja"],_loc2_[_loc4_.name],_loc4_.host,_loc4_.port,true,_loc4_.capacity);
            if(_loc5_.name == "EARTH")
            {
               _loc3_ = Math.min(_loc4_.population + this._addLayer(_loc4_.population),_loc4_.capacity);
               _loc5_.population = _loc3_.toString();
            }
            else if(_loc5_.name == "VENUS" && _loc4_.population > _loc3_)
            {
               _loc5_.population = _loc4_.population.toString();
            }
            this._servers.push(_loc5_);
         }
         this.serverListGrid.dataProvider = this._servers;
         this.serverListGrid.selectedIndex = 0;
         if(this._so.data.savelogin && this._so.data.server)
         {
            this.serverListGrid.selectedIndex = this._so.data.server;
         }
         this.loginButton.enabled = true;
         this.loginMessage.text = LanguageSelector.EJ("Ready","ログイン準備完了");
      }
      
      private function _addLayer(param1:int) : int
      {
         if(param1 >= 30)
         {
            return int(param1 * 0.07);
         }
         return 0;
      }
      
      private function _incrementDebugClick() : void
      {
         if(this._nDebugClick < 10)
         {
            this._nDebugClick = this._nDebugClick + 1;
            if(this._nDebugClick >= 10)
            {
               this._debug = true;
               this.versionLabel.setStyle("color","red");
            }
         }
      }
      
      private function _refresh(param1:Boolean = true) : void
      {
         this._keepAliveTimer.reset();
         this._keepAliveTimer.start();
         this._client.refresh(param1);
         if(!InfoFetcher.isAdminLv1(this.login_name))
         {
            this.refreshButton.enabled = false;
         }
      }
      
      private function _newGameForm() : void
      {
         if(this.startButton.label == LanguageSelector.lan.stop)
         {
            this._stopWaiting();
            this.startButton.label = LanguageSelector.lan.wait;
            this.startButton.soundType = 1;
            return;
         }
         if(this._isGuest && this._guestGamesExpired())
         {
            Alert.show(LanguageSelector.lan.msg_guest_expire,LanguageSelector.lan.error,4);
            return;
         }
         this._newGameWindow = NewGameForm(PopUpManager.createPopUp(this,NewGameForm,true));
         if(InfoFetcher.eventPlayers.indexOf(this.login_name.toLowerCase()) >= 0)
         {
            this._newGameWindow.enableHandicapBlack();
         }
         var date:Date = new Date();
         with(_loc2_)
         {
            
            loadPremium(_premium,_mileage);
            _newGameWindow.x = startButton.x;
            _newGameWindow.y = startButton.y + startButton.height;
            title = LanguageSelector.EJ("Create new game","新規対局の作成");
            if(_so.data.rule_base != null)
            {
               timeSetting.selectedValue = _so.data.rule_base;
            }
            else
            {
               timeSetting.selectedValue = 1;
            }
            toggleTimeSelection();
            if(commentTextInput.enabled)
            {
               commentTextInput.text = _so.data.rule_comment && _so.data.rule_comment.length <= commentTextInput.maxChars?_so.data.rule_comment:["Let\'s play SHOGI!",LanguageSelector.EJ("Challenge me!","楽しく指しましょう!"),LanguageSelector.EJ("Let\'s play a good game!","挑戦お待ちしてます!")][date.seconds % 3];
               commentTextInput.setFocus();
               commentTextInput.setSelection(0,commentTextInput.text.length);
            }
            if(_so.data.rule_total != null)
            {
               nonrated_total.selectedIndex = _so.data.rule_total;
            }
            if(_so.data.rule_byoyomi != null)
            {
               nonrated_byoyomi.selectedIndex = _so.data.rule_byoyomi;
            }
            if(_so.data.rule_handicap != null)
            {
               nonrated_handicap.selectedIndex = _so.data.rule_handicap;
            }
            if(_so.data.rule_study_b != null)
            {
               blackName.text = _so.data.rule_study_b;
            }
            if(_so.data.rule_study_w != null)
            {
               whiteName.text = _so.data.rule_study_w;
            }
            if(_so.data.rule_password != null)
            {
               privateRoomPass.text = _so.data.rule_password;
            }
            addEventListener("study_room",_handleCreateStudyRoom);
            addEventListener(GameRuleEvent.RULE_SELECTED,_handleRuleSelected);
         }
         if(this._isGuest)
         {
            this._newGameWindow.setGuest();
         }
      }
      
      private function _handleCreateStudyRoom(param1:Event) : void
      {
         this._so.data.rule_study_b = this._newGameWindow.blackName.text;
         this._so.data.rule_study_w = this._newGameWindow.whiteName.text;
         if(param1.target.password != "")
         {
            this._so.data.rule_password = param1.target.password;
         }
         this._client.study(param1.target.study_handicap.selectedItem.data,param1.target.blackName.text,param1.target.whiteName.text,"*",param1.target.password != ""?CsaShogiClient.generateMD5Hex(Config.PRIVATE_ROOM_SALT + param1.target.password).substr(0,6):"*");
      }
      
      private function _stopWaiting() : void
      {
         if(this._waiting)
         {
            this._waiting = false;
            this._client.stopWaiting();
            this._mileForFix = 0;
         }
      }
      
      private function _showOptions() : void
      {
         this._prev_piece_type = this.board.piece_type;
         this._optionWindow = OptionDialog(PopUpManager.createPopUp(this,OptionDialog,true));
         PopUpManager.centerPopUp(this._optionWindow);
         this._optionWindow.loadPieceSets(Board.pieceSets);
         this._optionWindow.loadPieceSets34(Board.pieceSets34);
         with(_loc2_)
         {
            
            title = LanguageSelector.lan.options;
            RadioGroup1.selectedValue = GameTimer.soundType;
            RadioGroup2.selectedValue = board.piece_type;
            RadioGroup5.selectedValue = board.piece_type34;
            RadioGroup6.selectedValue = _board_size_type;
            gameEndSoundCheckBox.selected = _end_sound_play;
            chatSound1CheckBox.selected = _chat_sound1_play;
            chatSound2CheckBox.selected = _chat_sound2_play;
            buttonSoundCheckBox.selected = MyButton.soundOn;
            notifyBlindCheckBox.selected = _notify_blind;
            if(_notify_blind)
            {
               notifyBlindCheckBox.enabled = false;
            }
            grabPieceCheckBox.selected = board.hold_piece;
            highlightMovableCheckBox.selected = board.highlight_movable;
            RadioGroup3.selectedValue = Movement.listType;
            pmAutoOpenCheckBox.selected = _pmAutoOpen;
            acceptArrowsCheckBox.selected = _accept_arrows;
            arrowColorPicker.selectedColor = _arrow_color;
            RadioGroup4.selectedValue = _nGamesAnalysis;
            levelStudyCombo.selectedIndex = _levelStudy;
            levelEnglishCombo.selectedIndex = _levelEnglish;
            receiveKifuCommentCheckBox.selected = _receive_kifu_comment;
            OkButton.addEventListener("click",_handleOption);
            if(_so.data.optionTab)
            {
               optionTab.selectedIndex = _so.data.optionTab;
            }
         }
         this._optionWindow.addEventListener(OptionDialog.WRITE_OPTION,this._handleWriteOption);
         this._optionWindow.enablePremium(this._premium);
         this._optionWindow.drawArrow();
      }
      
      private function _handleWriteOption(param1:ServerMessageEvent) : void
      {
         var _loc2_:Object = null;
         if(!this._isGuest && !this._viewerAlone)
         {
            _loc2_ = {
               "name":this.login_name.toLowerCase(),
               "key":param1.message.split(",")[0],
               "value":param1.message.split(",")[1]
            };
            this._api.writeOption(_loc2_);
         }
      }
      
      private function _waitForGame(param1:int = 1500, param2:int = 30, param3:String = "r", param4:String = "", param5:int = 0, param6:String = "", param7:String = "") : void
      {
         if(this._status_disconnected)
         {
            Alert.show(LanguageSelector.lan.msg_reconnect_only,LanguageSelector.lan.error,4,this.gameListGrid);
            this._waiting = false;
            this._client.who();
            return;
         }
         this._client.waitForGame(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function _openWebSystemMenu() : void
      {
         var _loc1_:Point = this.webSystemButton.localToGlobal(new Point(0,this.webSystemButton.height));
         this._webSystemMenu.show(_loc1_.x,_loc1_.y);
      }
      
      private function _openOptionMenu() : void
      {
         var _loc1_:Button = this.mainViewStack.selectedIndex == 1?this.optionButton1:this.optionButton2;
         var _loc2_:Point = _loc1_.localToGlobal(new Point(0,_loc1_.height));
         this._optionMenu.show(_loc2_.x,_loc2_.y);
         if(this.mainViewStack.selectedIndex == 2)
         {
            this._optionMenu.x = this._optionMenu.x - (this._optionMenu.width - _loc1_.width);
         }
      }
      
      private function _openKifuMenu() : void
      {
         var canLoad:Boolean = this._game_name && this._game_name.match(/^STUDY/) && this.board.isStudyHost;
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.copy,
            "icon":this._icon_copy,
            "selectHandler":function(param1:MenuEvent):void
            {
               _copyKIF();
            }
         },{
            "label":LanguageSelector.lan.save,
            "icon":this._icon_save,
            "selectHandler":function(param1:MenuEvent):void
            {
               _saveKIF();
            }
         },{
            "label":LanguageSelector.EJ("Share on Twitter","Twitterでシェア"),
            "icon":this._icon_twitter,
            "selectHandler":function(param1:MenuEvent):void
            {
               _shareKifu("TW");
            }
         },{
            "label":LanguageSelector.EJ("Share on Facebook","Facebookでシェア"),
            "icon":this._icon_facebook,
            "selectHandler":function(param1:MenuEvent):void
            {
               _shareKifu("FB");
            }
         },{
            "label":LanguageSelector.lan.load,
            "icon":this._icon_load,
            "enabled":canLoad,
            "selectHandler":function(param1:MenuEvent):void
            {
               _loadKifu();
            }
         }]);
         var menu:Menu = Menu.createMenu(parent,collectionMenuData);
         menu.addEventListener(MenuEvent.ITEM_CLICK,this._handleMenuClick);
         var anchor:Point = this.kifuButton.localToGlobal(new Point(0,this.kifuButton.height));
         menu.show(anchor.x,anchor.y);
      }
      
      private function _sharePosition(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:String = "http://sfenreader.appspot.com/twiimg?sfen=" + this.board.position.toSFEN(true) + "%20" + (!!this.kifuDataGrid.selectedIndex?this.kifuDataGrid.selectedIndex:this.kifuDataGrid.dataProvider.length - 1);
         var _loc3_:String = this.board.playerInfos[0].name;
         var _loc4_:String = this.board.playerInfos[1].name;
         _loc2_ = _loc2_ + ("&lm=" + this.board.getLastSquareName());
         _loc2_ = _loc2_ + ("&sname=" + _loc3_);
         _loc2_ = _loc2_ + ("&gname=" + _loc4_);
         _loc2_ = _loc2_ + LanguageSelector.EJ("&title=from_81Dojo",encodeURI("&title=81道場・局面図"));
         if(param1 == "FB")
         {
            _loc5_ = "http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(_loc2_);
            navigateToURL(new URLRequest(_loc5_),"_blank");
         }
         else if(param1 == "TW")
         {
            if(LanguageSelector.isJapanese())
            {
               _loc5_ = "81道場 局面図: ▲" + _loc3_ + " 対 △" + _loc4_;
               _loc5_ = _loc5_ + " #81dojo #shogi (powered by @shibacho2)";
            }
            else
            {
               _loc5_ = "81Dojo Diagram: [" + _loc3_ + " vs " + _loc4_ + "]";
               _loc5_ = _loc5_ + " %2381dojo (powered by @shibacho2)";
            }
            _loc5_ = "http://twitter.com/share?text=" + encodeURIComponent(_loc5_) + "&url=" + encodeURIComponent(_loc2_);
            navigateToURL(new URLRequest(_loc5_),"_blank");
         }
         this._handleSNSClick(param1);
      }
      
      private function _shareKifu(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc2_:String = "http://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/kifus/" + this.board.kid;
         var _loc3_:Array = new Array();
         if(this.board.my_turn != 0)
         {
            _loc3_.push("turn=" + this.board.my_turn);
         }
         if(this.kifuDataGrid.selectedIndex != 0)
         {
            _loc3_.push("moves=" + this.kifuDataGrid.selectedIndex);
         }
         if(_loc3_.length > 0)
         {
            _loc2_ = _loc2_ + ("?" + _loc3_.join("&"));
         }
         if(param1 == "FB")
         {
            _loc4_ = "http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(_loc2_);
            navigateToURL(new URLRequest(_loc4_),"_blank");
         }
         else if(param1 == "TW")
         {
            _loc5_ = this.board.openingTip;
            if(!this.board.viewing)
            {
               for each(_loc8_ in this._game_list)
               {
                  if(_loc8_.id == this._game_name)
                  {
                     _loc5_ = _loc8_.openingTip;
                     break;
                  }
               }
            }
            _loc6_ = this.board.playerInfos[0];
            _loc7_ = this.board.playerInfos[1];
            if(LanguageSelector.isJapanese())
            {
               _loc4_ = "81道場 対局譜: ";
               if(_loc5_ != "")
               {
                  _loc4_ = _loc4_ + (" 【" + _loc5_.replace(/☗/,"▲").replace(/☖/,"△") + "】 ");
               }
               _loc4_ = _loc4_ + ("▲" + _loc6_.name + " (" + InfoFetcher.country_names[_loc6_.country_code] + ", " + _loc6_.rank + ") 対 ");
               _loc4_ = _loc4_ + ("△" + _loc7_.name + " (" + InfoFetcher.country_names[_loc7_.country_code] + ", " + _loc7_.rank + ")");
               _loc4_ = _loc4_ + " #81dojo #shogi";
            }
            else
            {
               _loc4_ = "81Dojo Kifu: [";
               _loc4_ = _loc4_ + (_loc6_.name + "(" + InfoFetcher.country_names3[_loc6_.country_code] + ", " + _loc6_.rank + ") vs ");
               _loc4_ = _loc4_ + (_loc7_.name + "(" + InfoFetcher.country_names3[_loc7_.country_code] + ", " + _loc7_.rank + ")]");
               if(_loc5_ != "")
               {
                  _loc4_ = _loc4_ + (", " + _loc5_);
               }
               _loc4_ = _loc4_ + ". %2381dojo";
            }
            _loc4_ = "http://twitter.com/share?text=" + encodeURIComponent(_loc4_) + "&url=" + encodeURIComponent(_loc2_);
            navigateToURL(new URLRequest(_loc4_),"_blank");
         }
         this._handleSNSClick(param1);
      }
      
      private function _handleSNSClick(param1:String) : void
      {
         var _loc2_:Object = null;
         if(param1 == "TW")
         {
            if(this._twitterButtonTimer.running)
            {
               return;
            }
            this._client.mileage(1);
            _loc2_ = {
               "name":this.login_name.toLowerCase(),
               "key":"use.kifu_share"
            };
            this._api.incrementMedal(_loc2_);
            this._twitterButtonTimer.reset();
            this._twitterButtonTimer.start();
         }
         else if(param1 == "FB")
         {
            if(this._facebookButtonTimer.running)
            {
               return;
            }
            this._client.mileage(1);
            _loc2_ = {
               "name":this.login_name.toLowerCase(),
               "key":"use.kifu_share"
            };
            this._api.incrementMedal(_loc2_);
            this._facebookButtonTimer.reset();
            this._facebookButtonTimer.start();
         }
      }
      
      private function _openPositionMenu() : void
      {
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.query_material,
            "selectHandler":function():void
            {
               _calcMaterial();
            }
         },{
            "label":LanguageSelector.lan.query_kyokumenpedia,
            "icon":this._icon_kyokumenpedia,
            "selectHandler":function():void
            {
               _jumpToKyokumenpedia();
            }
         },{
            "label":LanguageSelector.EJ("Share on Twitter","Twitterでシェア"),
            "icon":this._icon_twitter,
            "selectHandler":function(param1:MenuEvent):void
            {
               _sharePosition("TW");
            }
         },{
            "label":LanguageSelector.EJ("Share on Facebook","Facebookでシェア"),
            "icon":this._icon_facebook,
            "selectHandler":function(param1:MenuEvent):void
            {
               _sharePosition("FB");
            }
         },{
            "label":LanguageSelector.lan.query_eval,
            "selectHandler":function():void
            {
               _sendEngine(false);
            }
         },{
            "label":LanguageSelector.lan.query_mate,
            "selectHandler":function():void
            {
               _sendEngine(true);
            }
         }]);
         var menu:Menu = Menu.createMenu(parent,collectionMenuData);
         menu.addEventListener(MenuEvent.ITEM_CLICK,this._handleMenuClick);
         var anchor:Point = this.queryButton.localToGlobal(new Point(0,this.queryButton.height));
         menu.show(anchor.x,anchor.y);
      }
      
      private function _jumpToWebSystem(param1:String) : void
      {
         navigateToURL(new URLRequest("http://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/" + param1));
      }
      
      private function _logout() : void
      {
         this._client.logout();
      }
      
      private function _checkLobby() : void
      {
         this.mainViewStack.selectedIndex = 1;
         this.backToGameButton.visible = true;
         this.backToGameButton.includeInLayout = true;
      }
      
      private function _backToGame() : void
      {
         this.mainViewStack.selectedIndex = 2;
         this.backToGameButton.visible = false;
         this.backToGameButton.includeInLayout = false;
      }
      
      private function _mute(param1:Boolean) : void
      {
         var _loc2_:SoundTransform = new SoundTransform();
         if(param1)
         {
            _loc2_.volume = 0;
         }
         else
         {
            _loc2_.volume = 1;
         }
         SoundMixer.soundTransform = _loc2_;
      }
      
      private function _rejectInvitation(param1:Boolean) : void
      {
         this._leaving = param1;
         this._client.idle(param1);
         if(param1)
         {
            this._idleTimer.stop();
         }
         else
         {
            this._idleTimer.reset();
            this._idleTimer.start();
         }
         this._so.data.reject_invitation = param1;
      }
      
      private function _userSelected() : void
      {
         var _loc1_:Object = this.userListGrid.selectedItem;
         var _loc2_:int = 0;
         while(_loc2_ < this._game_list.length)
         {
            if(this._game_list[_loc2_].black.name == _loc1_.name || this._game_list[_loc2_].white.name == _loc1_.name)
            {
               this.gameListGrid.selectedIndex = _loc2_;
               this.gameListGrid.scrollToIndex(_loc2_);
               break;
            }
            if(_loc1_.monitor_game == this._game_list[_loc2_].id)
            {
               this.gameListGrid.selectedIndex = _loc2_;
               this.gameListGrid.scrollToIndex(_loc2_);
               break;
            }
            this.gameListGrid.selectedIndex = -1;
            _loc2_++;
         }
         if(this._game_name)
         {
            return;
         }
         _loc2_ = 0;
         while(_loc2_ < this._waiter_list.length)
         {
            if(this._waiter_list[_loc2_].name == _loc1_.name)
            {
               this.waiterListGrid.selectedIndex = _loc2_;
               this.waiterListGrid.scrollToIndex(_loc2_);
               break;
            }
            this.waiterListGrid.selectedIndex = -1;
            _loc2_++;
         }
      }
      
      private function _waiterSelected() : void
      {
         var _loc1_:Object = this.waiterListGrid.selectedItem;
         var _loc2_:int = 0;
         while(_loc2_ < this._user_list.length)
         {
            if(this._user_list[_loc2_].name == _loc1_.name)
            {
               this.userListGrid.selectedIndex = _loc2_;
               this.userListGrid.scrollToIndex(_loc2_);
               break;
            }
            this.userListGrid.selectedIndex = -1;
            _loc2_++;
         }
         this.gameListGrid.selectedIndex = -1;
      }
      
      private function _gameSelected() : void
      {
         var _loc1_:Object = this.gameListGrid.selectedItem;
         var _loc2_:int = 0;
         while(_loc2_ < this._user_list.length)
         {
            if(this._user_list[_loc2_].name == _loc1_.black.name || this._user_list[_loc2_].name == _loc1_.white.name)
            {
               this.userListGrid.selectedIndex = _loc2_;
               this.userListGrid.scrollToIndex(_loc2_);
               break;
            }
            this.userListGrid.selectedIndex = -1;
            _loc2_++;
         }
         this.waiterListGrid.selectedIndex = -1;
      }
      
      private function _holdRefresh() : void
      {
         this._keepAliveTimer.reset();
         this._keepAliveTimer.start();
      }
      
      private function _sortName(param1:Object, param2:Object) : int
      {
         if(param1.mark != "" && param2.mark == "")
         {
            return -1;
         }
         if(param1.mark == "" && param2.mark != "")
         {
            return 1;
         }
         if(param1.name.toLowerCase() < param2.name.toLowerCase())
         {
            return -1;
         }
         if(param1.name.toLowerCase() > param2.name.toLowerCase())
         {
            return 1;
         }
         return 0;
      }
      
      private function _sortCountry(param1:Object, param2:Object) : int
      {
         if(param1.country < param2.country)
         {
            return -1;
         }
         if(param1.country > param2.country)
         {
            return 1;
         }
         return 0;
      }
      
      private function _sortRate(param1:Object, param2:Object) : int
      {
         if(Number(param1.rating) < Number(param2.rating))
         {
            return -1;
         }
         if(Number(param1.rating) > Number(param2.rating))
         {
            return 1;
         }
         return 0;
      }
      
      private function _sortGameWatchers(param1:Object, param2:Object) : int
      {
         return param1.watchers >= param2.watchers?1:-1;
      }
      
      private function _sortGameStatus(param1:Object, param2:Object) : int
      {
         if(param1.tag == "新" || param1.tag == "N")
         {
            return -1;
         }
         if(param2.tag == "新" || param2.tag == "N")
         {
            return 1;
         }
         if(param1.status != "game" && param1.status != "suspend")
         {
            return 1;
         }
         if(param2.status != "game" && param2.status != "suspend")
         {
            return -1;
         }
         return param1.moves >= param2.moves?1:-1;
      }
      
      private function _watchDialog() : void
      {
         if(this._game_name)
         {
            Alert.show(LanguageSelector.EJ("Go back to the current game and press \'Exit Game\' button before entering other games.","他の対局室に入るには、現在の対局室に戻り退室ボタンを押して下さい。"),"",4,this.gameListGrid);
            return;
         }
         this._watch_game = this.gameListGrid.selectedItem;
         if(!this._watch_game.id.match(/^STUDY/) && (this._watch_game.black.name == this.login_name || this._watch_game.white.name == this.login_name))
         {
            if(this._waiting)
            {
               Alert.show(LanguageSelector.EJ("Stop waiting for game before you reconnect.","対局に再接続するには、対局待状態を解除して下さい。"),"",4,this.gameListGrid);
            }
            else
            {
               Alert.show(LanguageSelector.EJ("Reconnect to your game as player?","この対局にプレーヤーとして再接続しますか?"),LanguageSelector.EJ("Reconnect","再接続"),Alert.YES | Alert.NO,this.gameListGrid,this._reconnect);
            }
         }
         else
         {
            if(this._status_disconnected)
            {
               Alert.show(LanguageSelector.lan.msg_reconnect_only,LanguageSelector.lan.error,4,this.gameListGrid);
               return;
            }
            if(this._watch_game.password != "" && !this._watch_game.isStudyHost(this.login_name) && !InfoFetcher.isAdminLv1(this.login_name))
            {
               this._openInputDialog(LanguageSelector.lan.private_room,LanguageSelector.lan.enter_pass,this._enterPrivateRoom,this.gameListGrid);
            }
            else
            {
               this._execute_watch();
            }
         }
      }
      
      private function _reconnect(param1:CloseEvent) : void
      {
         this._watch_game = this.gameListGrid.selectedItem;
         if(this._watch_game != null && param1.detail == Alert.YES)
         {
            this._game_name = this._watch_game.id;
            this._client.reconnect(this._game_name);
         }
      }
      
      private function _enterPrivateRoom(param1:Event) : void
      {
         if(CsaShogiClient.generateMD5Hex(Config.PRIVATE_ROOM_SALT + param1.target.textInput.text).substr(0,6) == this._watch_game.password)
         {
            this._execute_watch();
         }
         else
         {
            this._writeUserMessage(LanguageSelector.lan.pass_invalid + "\n",1,"#008800",true);
         }
      }
      
      private function _execute_watch() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         if(this._watch_game != null)
         {
            this.board.my_turn = Kyokumen.SENTE;
            this._game_name = this._watch_game.id;
            _loc1_ = this._watch_game.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
            if(_loc1_[1].match(/^hc/))
            {
               this.board.gameType = "hc";
            }
            else
            {
               this.board.gameType = _loc1_[1];
            }
            this.allowWatcherChatCheckbox.enabled = false;
            this.allowWatcherChatCheckbox.selected = true;
            this.board.layoutBoard();
            this.board.superior = this._watch_game.superior;
            this._monitoring = true;
            this._client.monitorOn(this._game_name);
            this._client.watchers(this._game_name);
            this.logoutButton.enabled = false;
            this.userMessage2.htmlText = "";
            if(this.board.gameType == "r")
            {
               this._writeUserMessage(LanguageSelector.lan.msg_rated + "\n",2,"#008800",true);
            }
            else
            {
               this._writeUserMessage(LanguageSelector.lan.msg_nonrated + "\n",2,"#008800",true);
            }
            if(_loc2_ = _loc1_[2].match(/\-\-(\d+)$/))
            {
               this._writeUserMessage(LanguageSelector.EJ("This game belongs to \"","イベント対局: 「") + InfoFetcher.getSystemTournamentName(parseInt(_loc2_[1])) + LanguageSelector.EJ("\"\n","」\n"),2,"#FF3388",true);
               this._writeUserMessage("( https://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/tournaments/" + _loc2_[1] + " )\n",2,"#FF3388");
            }
            this._writeUserMessage(LanguageSelector.EJ("Loading kifu ... ","棋譜を読み込んでいます... "),2,"#008800");
            this.mainViewStack.selectedIndex = 2;
            this.closeButton.enabled = true;
            this.resignButton.enabled = false;
            this.reverseButton.enabled = true;
            this.greetButton.state = GreetButton.STATE_DISABLED;
            this.voiceButton.game_name = this._game_name;
            this.rematchButton.enabled = false;
            if(InfoFetcher.isBroadcasterLv1(this.login_name))
            {
               this.voiceButton.broadcastAllowed = true;
            }
            else if(InfoFetcher.isBroadcasterLv2(this.login_name) && (_loc1_[2].match(/\-\-..$/) || this._watch_game.id.match(/^STUDY/)))
            {
               this.voiceButton.broadcastAllowed = true;
            }
            this.giveHostButton.enabled = false;
            this._shareKifuEnabled = false;
            this.queryButton.visible = true;
            this.rewindAllButton.enabled = true;
            this.rewindOneButton.enabled = true;
            this.forwardOneButton.enabled = true;
            this.forwardAllButton.enabled = true;
            this.kifuDataGrid.selectable = true;
            this.kifuDataGrid.dataProvider = this.board.kifu_list;
            this.radioKifuListen.selected = true;
            this.radioKifuReplay.enabled = true;
            this.radioKifuListen.enabled = true;
            this.board.onListen = true;
            this._switchListenColor(true);
            this._study_notified = false;
            if(this._isGuest)
            {
               this.chatMessage2.enabled = false;
            }
         }
         else
         {
            Alert.show(LanguageSelector.EJ("The game list has been refreshed.\nPlease select a game again.","対局リストが更新されました。\n再度、対局を選択直して下さい。"),LanguageSelector.lan.error,Alert.OK,this.gameListGrid);
         }
      }
      
      private function _openPlayerInfo(param1:String, param2:Object = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:TournamentGameChecker = null;
         var _loc3_:Object = this._users[param1];
         if(!_loc3_)
         {
            _loc3_ = param2;
         }
         if(!_loc3_)
         {
            return;
         }
         this.kifuSearchPlayerText.text = param1;
         if(this._playerInfoWindows[param1])
         {
            this._playerInfoWindows[param1].x = Math.max(0,mouseX - 100);
            this._playerInfoWindows[param1].y = Math.max(0,mouseY - 150);
            this._playerInfoWindows[param1].maximize();
            return;
         }
         this._playerInfoWindows[param1] = new PlayerInfoWindow();
         this._playerInfoWindows[param1].x = Math.max(0,mouseX - 100);
         this._playerInfoWindows[param1].y = Math.max(0,mouseY - 150);
         PopUpManager.addPopUp(this._playerInfoWindows[param1],this,false);
         this._playerInfoWindows[param1].pmText = this._pmLog[param1];
         this._playerInfoWindows[param1].addEventListener("open_detail",this._handlePlayerDetailOpen(param1));
         this._playerInfoWindows[param1].addEventListener("close_window",this._handlePlayerInfoClose);
         this._playerInfoWindows[param1].addEventListener("debug_player",this._handleDebugPlayer(param1));
         this._playerInfoWindows[param1].readUser(_loc3_);
         if(this._isDuringMyGame() || this._isGuest || param1.match(/^GUEST_/))
         {
            this._playerInfoWindows[param1].directMessage.enabled = false;
         }
         else
         {
            this._playerInfoWindows[param1].directMessage.addEventListener(FlexEvent.ENTER,this._handleSendPrivateChat(_loc3_.name));
            this._playerInfoWindows[param1].directMessage.setFocus();
         }
         if(_loc3_.isMobile)
         {
            this._playerInfoWindows[param1].mobileIcon.includeInLayout = true;
            this._playerInfoWindows[param1].mobileIcon.visible = true;
         }
         else if(_loc3_.isHTML)
         {
            this._playerInfoWindows[param1].html5Icon.includeInLayout = true;
            this._playerInfoWindows[param1].html5Icon.visible = true;
         }
         if(param1 == this.login_name)
         {
            this._playerInfoWindows[param1].selfCommands.includeInLayout = true;
            this._playerInfoWindows[param1].selfCommands.visible = true;
            if(_loc3_.isProvisional && _loc3_.rating < 3500 && !this._isGuest)
            {
               this._playerInfoWindows[param1].setRateButton.addEventListener(MouseEvent.CLICK,this._setRate(param1));
               this._playerInfoWindows[param1].setRateButton.enabled = true;
               this._playerInfoWindows[param1].setRateCombo.dataProvider = InfoFetcher.rank_names.slice(3,20);
               this._playerInfoWindows[param1].setRateCombo.selectedIndex = 4;
               this._playerInfoWindows[param1].setRateCombo.enabled = true;
            }
         }
         else
         {
            this._playerInfoWindows[param1].othersCommands.includeInLayout = true;
            this._playerInfoWindows[param1].othersCommands.visible = true;
            if(_loc3_.nowChallengeable)
            {
               this._playerInfoWindows[param1].challenge.addEventListener(MouseEvent.CLICK,this._handleChallenge(param1));
               this._playerInfoWindows[param1].challenge.enabled = true;
               _loc4_ = _loc3_.waitingTournamentID();
               if(_loc4_ != 0)
               {
                  _loc5_ = new TournamentGameChecker(_loc4_,this.login_name,_loc3_.name,this._api);
                  _loc5_.width = this._playerInfoWindows[param1].width * 0.95;
                  this._playerInfoWindows[param1].addChild(_loc5_);
               }
            }
            if(this._isGuest || param1.match(/^GUEST_/))
            {
               this._playerInfoWindows[param1].favorite.enabled = false;
            }
            else
            {
               this._playerInfoWindows[param1].favorite.addEventListener(MouseEvent.CLICK,this._handleFavorite(param1));
            }
            if(!InfoFetcher.isAdminLv1(param1))
            {
               this._playerInfoWindows[param1].ignore.addEventListener(MouseEvent.CLICK,this._handleIgnore(param1));
               this._playerInfoWindows[param1].ignore.enabled = true;
            }
            if(this._game_name && this.board.isStudyHost)
            {
               if(this._watcher_list.indexOf(_loc3_) >= 0 || param1 == this.board.playerInfos[0].name || param1 == this.board.playerInfos[1].name)
               {
                  this._playerInfoWindows[param1].addEventListener("give_host",this._handleAllowStudy(param1,true));
                  this._playerInfoWindows[param1].addEventListener("give_subhost",this._handleAllowStudy(param1,false));
                  this._playerInfoWindows[param1].allowStudy.enabled = true;
               }
            }
         }
         this._playerInfoWindows[param1].callLater(this._playerInfoWindows[param1].scrollDown);
      }
      
      private function _openInfoFromPlayerSearch(param1:Object) : void
      {
         if(this._premium < 1)
         {
            return;
         }
         var _loc2_:User = new User(param1.name);
         _loc2_.setFromPlayerSearch(param1.rate,InfoFetcher.country_codes[param1.country_id - 1],param1.wins,param1.losses,Math.max(0,param1.streak),param1.streak_best);
         this._openPlayerInfo(param1.name,_loc2_);
      }
      
      private function _handleDebugPlayer(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:Event):void
         {
            if(InfoFetcher.isAdminLv1(login_name))
            {
               _client.send("%%DEBUG " + name);
            }
         };
      }
      
      private function _handleEngineResponse(param1:ServerMessageEvent) : void
      {
         this._writeUserMessage(param1.message + "\n",2,"#EE8800");
      }
      
      private function _handlePlayerDetailOpen(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:Event):void
         {
            _openPlayerDetail(name);
         };
      }
      
      private function _openPlayerDetail(param1:String) : void
      {
         this._playerDetailWindow = PlayerDetailWindow(PopUpManager.createPopUp(this.lobbyHBox,PlayerDetailWindow,true));
         PopUpManager.centerPopUp(this._playerDetailWindow);
         this._api.playerDetail(param1);
         this._api.loadHistory(param1,this._nGamesAnalysis);
         this._playerDetailWindow.addEventListener("close_window",this._handlePlayerDetailClose);
         this._playerDetailWindow.login = param1;
         var _loc2_:Object = this._users[param1];
         if(_loc2_)
         {
            this._playerDetailWindow.connection = LanguageSelector.EJ("ONLINE","オンライン");
         }
         else if(this._playerInfoWindows[param1])
         {
            _loc2_ = this._playerInfoWindows[param1].exportUser();
            this._playerDetailWindow.connection = LanguageSelector.EJ("Offline","オフライン");
         }
         if(_loc2_)
         {
            this._playerDetailWindow.titleName = _loc2_.titleName;
            this._playerDetailWindow.titleSubName = _loc2_.titleSubName;
            this._playerDetailWindow.avatar = _loc2_.avatar;
         }
         if(param1 == this.login_name && !this.login_name.match(/^com\_.+/i))
         {
            this._playerDetailWindow.buttonApplyMenjo.visible = true;
            this._playerDetailWindow.buttonApplyMenjo.includeInLayout = true;
            this._playerDetailWindow.openingPieChart.isMyself = true;
         }
         if(this._premium >= 2)
         {
            if(!this._isGuest && !param1.match(/^GUEST_/) && param1 != this.login_name)
            {
               this._playerDetailWindow.nameBox.addChild(new EvaluationChecker(param1,this._api));
            }
            this._playerDetailWindow.buttonSystemPlayerInfo.visible = true;
            this._playerDetailWindow.buttonSystemPlayerInfo.includeInLayout = true;
         }
      }
      
      public function setPlayingStyle(param1:int) : void
      {
         this._api.setPlayingStyle(this.login_name,param1);
      }
      
      private function _handleLoadHistory(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(!this._playerDetailWindow)
         {
            return;
         }
         this._gameHistories = [];
         for each(_loc2_ in param1.target.bufferData)
         {
            this._gameHistories.push(_loc2_);
         }
         this._playerDetailWindow.showHistory(this._gameHistories);
      }
      
      private function _handlePlayerInfoClose(param1:Event) : void
      {
         this._playerInfoWindows[param1.target.nameLabel.text] = null;
      }
      
      private function _handlePlayerDetailClose(param1:Event) : void
      {
         this._playerDetailWindow = null;
      }
      
      private function _handleSendChat1(param1:FlexEvent) : void
      {
         var _loc2_:Array = null;
         if(param1.target.text == "")
         {
            return;
         }
         if(param1.target.text.match(/\[auto\-chat\]/))
         {
            Alert.show(LanguageSelector.EJ("You cannot imitate auto-chat.","auto-chatの擬装は禁止です"));
            return;
         }
         if(param1.target.text.match(/\[##/) && !InfoFetcher.isAdminLv1(this.login_name))
         {
            return;
         }
         if(this._infoFetcher.nochat.indexOf(this.login_name.toLowerCase()) >= 0)
         {
            Alert.show(LanguageSelector.EJ("You do not have the right to send lobby chat.","ロビーでの発言権がありません"),LanguageSelector.lan.error,4);
            return;
         }
         if(_loc2_ = param1.target.text.match(/^@(.+?)\s(.+)$/))
         {
            this._sendPrivateChat(_loc2_[1],_loc2_[2]);
         }
         else
         {
            this._client.chat(param1.target.text);
         }
         this._chatHistory.unshift(param1.target.text);
         this._nHistory = 0;
         param1.target.text = "";
      }
      
      private function _handleKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 38)
         {
            if(this._nHistory < this._chatHistory.length)
            {
               this._nHistory = this._nHistory + 1;
            }
            if(this._nHistory > 0)
            {
               param1.currentTarget.text = this._chatHistory[this._nHistory - 1];
            }
         }
         else if(param1.keyCode == 40)
         {
            if(this._nHistory > 1)
            {
               this._nHistory = this._nHistory - 1;
            }
            if(this._nHistory > 0)
            {
               param1.currentTarget.text = this._chatHistory[this._nHistory - 1];
            }
         }
         else if(param1.currentTarget == this.chatMessage2 && this.board.isPlayer)
         {
            if(param1.keyCode == 8)
            {
               if(param1.currentTarget.text == "")
               {
                  this._sendTypingTimer.stop();
               }
            }
            else if(param1.keyCode != 13)
            {
               if(this._sendTypingTimer.running)
               {
                  return;
               }
               this._sendTypingTimer.reset();
               this._sendTypingTimer.start();
            }
         }
      }
      
      private function _handleSendTypingTimer(param1:TimerEvent) : void
      {
         if(this.board.isPlayer)
         {
            this._client.gameChat(this._game_name,"[##TYPE]");
         }
      }
      
      private function _handleChallenge(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:MouseEvent):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            var _loc5_:* = undefined;
            if(_status_disconnected)
            {
               Alert.show(LanguageSelector.lan.msg_reconnect_only,LanguageSelector.lan.error,4);
               return;
            }
            if(_isGuest && _guestGamesExpired())
            {
               Alert.show(LanguageSelector.lan.msg_guest_expire,LanguageSelector.lan.error,4);
               return;
            }
            if(_challenging)
            {
               _writeUserMessage(LanguageSelector.EJ("You can only challenge one player at a time.\n","挑戦は一度に一人に対してしか行えません。\n"),1,"#008800");
               return;
            }
            _challengeUser = _users[name];
            if(!_challengeUser)
            {
               return;
            }
            if(_challengeUser.rating >= InfoFetcher.rank_thresholds[2] && _users[login_name].isProvisional && _challengeUser.game_name.match(/^r_/))
            {
               Alert.show(LanguageSelector.EJ("New player with a provisional rating cannot challenge 6-Dan or higher for rated games.","レート未確定の新鋭棋士は六段以上とのレーティング対局には挑戦出来ません。"),LanguageSelector.lan.error,4);
               return;
            }
            if(!_challengeUser.statusMark.match(/[待W]/))
            {
               if(_isGuest || _users[name].isMobile)
               {
                  Alert.show(LanguageSelector.EJ("Opponent is not waiting for a game.","相手は対局待ちではありません。"),LanguageSelector.lan.error,4);
                  return;
               }
               Alert.show(LanguageSelector.lan.msg_suggest_invitation,LanguageSelector.EJ("Invite?","招待メッセージ送信"),Alert.YES | Alert.NO,null,_handleInviteAlert);
            }
            else
            {
               _loc2_ = _challengeUser.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
               if(_isGuest && (_loc2_[1] == "r" || _loc2_[2].match(/\-\-..$/)))
               {
                  Alert.show(LanguageSelector.EJ("Guests cannot play rated games.","ゲストはレーティング対局に参加できません"),LanguageSelector.lan.error,4);
                  return;
               }
               _loc3_ = parseInt(_loc2_[3]) / 60;
               _loc4_ = _loc3_ + LanguageSelector.EJ("min - ","分 - ") + _loc2_[4] + LanguageSelector.EJ("sec","秒");
               _loc5_ = LanguageSelector.EJ(InfoFetcher.gameTypeEn(_loc2_[1]),InfoFetcher.gameType(_loc2_[1]));
               Alert.yesLabel = LanguageSelector.lan.challenge;
               Alert.cancelLabel = LanguageSelector.lan.cancel;
               Alert.buttonWidth = 140;
               Alert.show(LanguageSelector.lan.opponent + ": " + name + "\n" + LanguageSelector.lan.time_rule + ": " + _loc4_ + "\n" + LanguageSelector.lan.game_type + ": " + _loc5_ + (_challengeUser.comment != ""?"\n" + LanguageSelector.lan.comment + ": " + _challengeUser.comment:"") + (!!_loc2_[2].match(/\.[0-9a-z]{6}/)?"\n[" + LanguageSelector.lan.private_room + "]":""),LanguageSelector.lan.conditions,Alert.YES | Alert.CANCEL,null,_handleChallengeAlert);
               Alert.yesLabel = LanguageSelector.EJ("Yes","はい");
               Alert.cancelLabel = LanguageSelector.EJ("Cancel","キャンセル");
               Alert.buttonWidth = 65;
            }
         };
      }
      
      private function _handleChallengeAlert(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            if(this._challengeUser.game_name.match(/_automatch\-/))
            {
               this._client.seek(this._challengeUser);
            }
            else
            {
               this._challenging = true;
               this._writeUserMessage(LanguageSelector.EJ("Challenging " + this._challengeUser.name + "..... (Must wait for 20 seconds max)\n",this._challengeUser.name + "さんに挑戦中..... (待ち時間 最大で20秒)\n"),1,"#008800");
               this._client.challenge(this._challengeUser.name);
               this._challengeCancelTimer.reset();
               this._challengeCancelTimer.start();
            }
         }
         else if(param1.detail == Alert.CANCEL)
         {
         }
      }
      
      private function _handleInviteAlert(param1:CloseEvent) : void
      {
         var _loc2_:Array = null;
         if(param1.detail == Alert.YES)
         {
            if(!this._waiting)
            {
               Alert.show(LanguageSelector.EJ("Create a game first.","先に対局を作成して下さい。"),LanguageSelector.lan.error,4);
            }
            else if(this._challengeUser.idle)
            {
               this._writeUserMessage(this._challengeUser.name + LanguageSelector.EJ(" is not accepting invitations right now.\n","さんは現在招待を受け付けていません。\n"),1,"#008800",true);
            }
            else if(this._challengeUser.status == "game" || this._challengeUser.status == "post_game")
            {
               this._writeUserMessage(this._challengeUser.name + LanguageSelector.EJ(" is in another game right now.\n","さんは対局中です。\n"),1,"#008800",true);
            }
            else
            {
               _loc2_ = this._client.waitingGamename.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)/);
               this._client.privateChat(this._challengeUser.name,"[##INVITE]" + _loc2_[3] + "," + _loc2_[4] + "," + _loc2_[1]);
               this._writeUserMessage(LanguageSelector.EJ("Sent invitation message to " + this._challengeUser.name + ".\n",this._challengeUser.name + "さんに招待メッセージを送信しました。\n"),1,"#008800");
            }
         }
      }
      
      private function _handleFavorite(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:MouseEvent):void
         {
            var _loc2_:* = undefined;
            _loc2_ = {
               "name":login_name.toLowerCase(),
               "opponent":name.toLowerCase()
            };
            _api.follow(_loc2_);
         };
      }
      
      private function _handleFollow(param1:ServerMessageEvent) : void
      {
         var _loc2_:String = null;
         _loc2_ = param1.message;
         if(this._favorite_list.indexOf(_loc2_) >= 0)
         {
            Alert.show(LanguageSelector.EJ("Already in favorite list.","既にお気に入りリストに入っています。"),LanguageSelector.lan.error,4);
            return;
         }
         this._favorite_list.push(_loc2_);
         if(this._users[_loc2_])
         {
            this._users[_loc2_].markFavorite();
         }
         this._updateStatusMarks(_loc2_);
         Alert.show(LanguageSelector.EJ("Added to favorite list.","お気に入りリストに登録しました。"),"",4);
      }
      
      private function _handleIgnore(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:MouseEvent):void
         {
            if(_ignore_list.indexOf(name.toLowerCase()) >= 0)
            {
               Alert.show(LanguageSelector.EJ("Already in ignore list.","既に無視リストに入っています。"),LanguageSelector.lan.error,4);
               return;
            }
            _ignore_list.push(name.toLowerCase());
            Alert.show(LanguageSelector.lan.msg_addlist_block,"",4,param1.target.parent);
         };
      }
      
      private function _handleAllowStudy(param1:String, param2:Boolean) : Function
      {
         var name:String = param1;
         var give:Boolean = param2;
         return function(param1:Event):void
         {
            if(_users[name].checkMobile())
            {
               return;
            }
            if(!_game_name || !board.isStudyHost)
            {
               Alert.show(LanguageSelector.EJ("You are not the host of study mode now.","現在あなたは感想戦ホストではありません"),LanguageSelector.lan.error,4);
               return;
            }
            if(!give)
            {
               _client.gameChat(_game_name,"[##SUBHOST_ON]" + name);
            }
            else
            {
               _toggleHostStatus(false);
               _client.gameChat(_game_name,"[##GIVEHOST]" + name);
               _playerInfoWindows[name].allowStudy.enabled = false;
            }
            _playerInfoWindows[name].close();
         };
      }
      
      private function _handOverHost(param1:String = null) : void
      {
         var _loc2_:User = null;
         if(!param1)
         {
            param1 = this._game_name;
         }
         if(this.login_name != this.board.playerInfos[0].name && this.board.name_labels[this.board.my_turn].getStyle("color") == Board.defaultNameLabelColor)
         {
            this._client.gameChat(param1,"[##GIVEHOST]" + this.board.playerInfos[0].name);
            this._toggleHostStatus(false);
         }
         else if(this.login_name != this.board.playerInfos[1].name && this.board.name_labels[1 - this.board.my_turn].getStyle("color") == Board.defaultNameLabelColor)
         {
            this._client.gameChat(param1,"[##GIVEHOST]" + this.board.playerInfos[1].name);
            this._toggleHostStatus(false);
         }
         else
         {
            for each(_loc2_ in this._watcher_list)
            {
               if(_loc2_.name != this.login_name)
               {
                  this._client.gameChat(param1,"[##GIVEHOST]" + _loc2_.name);
                  this._toggleHostStatus(false);
                  return;
               }
            }
         }
      }
      
      private function _setRate(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:MouseEvent):void
         {
            _client.setRate(InfoFetcher.rank_thresholds[_playerInfoWindows[name].setRateCombo.selectedIndex + 3]);
         };
      }
      
      private function _handleSetRate(param1:ServerMessageEvent) : void
      {
         this._users[this.login_name].rating = parseInt(param1.message);
         this.userListGrid.dataProvider = this._user_list;
         Alert.show(LanguageSelector.EJ("Rate updated successfully.","レートが更新されました。"),"",4);
      }
      
      private function _handleMile(param1:ServerMessageEvent) : void
      {
         var _loc2_:int = 0;
         if(this._isGuest)
         {
            return;
         }
         if(param1.message.split(",")[0] == "-1")
         {
            return;
         }
         this._mileage = parseInt(param1.message.split(",")[0]);
         _loc2_ = parseInt(param1.message.split(",")[1]);
         if(_loc2_ > 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("You\'ve earned " + _loc2_ + " D-Mile" + (_loc2_ == 1?"":"s") + "!\n",_loc2_ + " Dマイル獲得しました!\n"),1,"#FF3388");
         }
         else if(_loc2_ < 0)
         {
            this._writeUserMessage(LanguageSelector.EJ("You\'ve used " + -_loc2_ + " D-Mile" + (_loc2_ == -1?"":"s") + "!\n",-_loc2_ + " Dマイルを消費しました。(通算マイル・期間マイルは減少しません)\n"),1,"#FF3388");
         }
      }
      
      private function _handleExp(param1:ServerMessageEvent) : void
      {
         var _loc2_:String = null;
         _loc2_ = InfoFetcher.makeRank34FromExp(parseInt(param1.message.split(",")[1]));
         if(_loc2_ != InfoFetcher.makeRank34FromExp(parseInt(param1.message.split(",")[1]) - parseInt(param1.message.split(",")[0])))
         {
            this._client.chat("[##EXP]" + this.board.gameType + "," + param1.message.split(",")[1]);
            this._writeUserMessage(LanguageSelector.EJ("You\'re promoted to a new rank!!\n","クラス昇格!!\n"),2,"#DD0088",true);
         }
         this._writeUserMessage(LanguageSelector.EJ("You\'ve gained " + param1.message.split(",")[0] + " EXP!! (Total: " + param1.message.split(",")[1] + " EXP) You\'re in \"" + _loc2_ + "\" level.\n",param1.message.split(",")[0] + "EXPを獲得!! (トータル " + param1.message.split(",")[1] + "EXP) 現在「" + _loc2_ + "」レベルです\n"),2,"#DD0088");
      }
      
      private function _scrollDownUser() : void
      {
         if(this.userListGrid.selectedItem)
         {
            this.userListGrid.scrollToIndex(this.userListGrid.selectedIndex);
         }
      }
      
      private function _openAdminPanel() : void
      {
         this._adminPanelWindow = AdminPanelWindow(PopUpManager.createPopUp(this,AdminPanelWindow,false));
         PopUpManager.centerPopUp(this._adminPanelWindow);
         this._adminPanelWindow.adminCommandInput.addEventListener(FlexEvent.ENTER,this._handleAdminSendCommand);
         this._adminPanelWindow.broadcastButton.addEventListener(MouseEvent.CLICK,this._handleBroadcast);
         this._adminPanelWindow.showLog(this._adminLog);
      }
      
      private function _handleAdminSendCommand(param1:Event) : void
      {
         this._client.send(param1.target.text);
         param1.target.text = "";
      }
      
      private function _handleBroadcast(param1:MouseEvent) : void
      {
         this._client.chat("[##BROADCAST]" + param1.target.parent.parent.adminCommandInput.text);
      }
      
      private function _watcherRefresh() : void
      {
         if(this._game_name)
         {
            this._client.watchers(this._game_name);
         }
      }
      
      private function _toggleWatcherChat() : void
      {
         this._allowWatcherChat = this.allowWatcherChatCheckbox.selected;
         if(this._allowWatcherChat)
         {
            this._sendAutoChat("#G101");
         }
         else
         {
            this._sendAutoChat("#G100");
         }
      }
      
      private function _resignAlert() : void
      {
         if(this.board.my_turn == this.board.position.turn)
         {
            Alert.show("",LanguageSelector.EJ("Resign?","投了しますか?"),Alert.YES | Alert.NO,this.resignButton,this._resign);
         }
      }
      
      private function _resign(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            this._client.gameChat(this._game_name,"<(_ _)> 負けました。(Makemashita.)");
            this._client.resign();
            this.greetButton.autoGreet(GreetButton.STATE_AFTER_GAME);
         }
      }
      
      private function _sendGreet(param1:ServerMessageEvent) : void
      {
         if(param1.message.match(/^[A-Z]\d{3}$/))
         {
            this._client.gameChat(this._game_name,"[##TEMPLATE]" + param1.message);
         }
         else
         {
            this._client.gameChat(this._game_name,param1.message);
         }
      }
      
      private function _showImpasse() : void
      {
         if(this.board.gameType.match(/^va/))
         {
            return;
         }
         this.board.position.calcImpasse();
         this._impasseStatusWindow = ImpasseStatusWindow(PopUpManager.createPopUp(this.board,ImpasseStatusWindow,true));
         this._impasseStatusWindow.addEventListener("close_window",this._handleImpasseStatusClose);
         PopUpManager.centerPopUp(this._impasseStatusWindow);
         this._impasseStatusWindow.x = this._impasseStatusWindow.x + (this.board.scaleX - 1) * this.board.width / 2;
         this._impasseStatusWindow.y = this._impasseStatusWindow.y + (this.board.scaleY - 1) * this.board.height / 2;
         this._impasseStatusWindow.title = LanguageSelector.EJ("Impasse Status","27点宣言法 点数");
         this._impasseStatusWindow.kachiButton.addEventListener(MouseEvent.CLICK,this._handleKachiDeclare);
         this._impasseStatusWindow.setStatus(this.board.position.impasseStatus,this._isDuringMyGame() && this.board.position.turn == this.board.my_turn?int(this.board.my_turn):-1);
      }
      
      private function _handleImpasseStatusClose(param1:Event) : void
      {
         this._impasseStatusWindow = null;
      }
      
      private function _handleKachiDeclare(param1:MouseEvent) : void
      {
         this._client.kachi();
      }
      
      private function _rematch() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:Object = null;
         if(!this.board.isPlayer)
         {
            _loc1_ = this._game_name.split("+")[1].match(/^([0-9a-z]+?)_(.*)$/);
            _loc2_ = false;
            for each(_loc3_ in this._game_list)
            {
               if(_loc3_.id.split("+")[1] == _loc1_[1] + "_@" + _loc1_[2] && _loc3_.status == "game")
               {
                  _loc2_ = true;
                  break;
               }
            }
            if(!_loc2_)
            {
               this._writeUserMessage(LanguageSelector.EJ("The rematch game is already finished.\n","再戦の対局が既に終了しています\n"),2,"#008800");
            }
            else
            {
               this.voiceButton.reset();
               this._clearAllTags();
               this._client.monitorOff(this._game_name);
               this.board.closeGame();
               this._monitoring = false;
               this._watch_game = _loc3_;
               this._execute_watch();
            }
         }
         else if(this._game_name && !this.board.rematch[this.board.my_turn])
         {
            if(this._isGuest && this._guestGamesExpired())
            {
               Alert.show(LanguageSelector.lan.msg_guest_expire,LanguageSelector.lan.error,4);
               return;
            }
            this._client.gameChat(this._game_name,"[##REMATCH]");
         }
      }
      
      private function _closeGame() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this._game_name)
         {
            this._engineRelay.disconnect();
            _loc1_ = this._game_name;
            this._game_name = null;
            if(this._monitoring)
            {
               if(this.board.isStudyHost)
               {
                  this._handOverHost(_loc1_);
               }
               this.voiceButton.reset();
               this._clearAllTags();
               this._client.monitorOff(_loc1_);
               this._monitoring = false;
               this.chatMessage2.enabled = true;
            }
            else if(!this.board.viewing)
            {
               this.voiceButton.reset();
               this._clearAllTags();
               if(this._notifyOnCloseGame)
               {
                  this._notifyOnCloseGame = false;
                  if(this.board.gameType == "r")
                  {
                     this._writeUserMessage(LanguageSelector.EJ("Rated game results so far in this session: ","本セッションでのこれまでの成績(レート対局のみ): ") + this._wins_session + LanguageSelector.EJ(" win ","勝 ") + this._losses_session + LanguageSelector.EJ(" loss\n","敗\n"),1,"#008800",true);
                     for each(_loc3_ in this._games_session)
                     {
                        this._writeUserMessage(_loc3_ + "\n",1,"#000000");
                     }
                     if(!this._users[this.login_name].isProvisional && InfoFetcher.beforeUpgrade(this._myRate))
                     {
                        this._writeUserMessage(LanguageSelector.lan.msg_before_upgrade + "\n",1,"#FF3388");
                     }
                     else if(!this._users[this.login_name].isProvisional && InfoFetcher.beforeDowngrade(this._myRate))
                     {
                        this._writeUserMessage(LanguageSelector.lan.msg_before_downgrade + "\n",1,"#FF3388");
                     }
                  }
                  this._writeUserMessage(LanguageSelector.EJ("Kifu URL of your last game: ","先ほどの対局の棋譜URL: ") + "http://system.81dojo.com/" + LanguageSelector.EJ("en","ja") + "/kifus/" + this.board.kid + "\n",1,"#008800");
                  _loc2_ = this.board.playerInfos[0].name == this.login_name?this.board.playerInfos[1].name:this.board.playerInfos[0].name;
                  this._askEvaluation(_loc2_);
               }
               if(this.board.isStudyHost)
               {
                  this._handOverHost(_loc1_);
               }
               this._client.closeGame();
            }
            this.watcherListGrid.dataProvider = null;
            this._watcherTitle = LanguageSelector.lan.watchers + " (0)";
         }
         this.board.closeGame();
         if(this.board.viewing)
         {
            this.mainViewStack.selectedIndex = 3;
            this.chatMessage2.enabled = true;
            this.board.viewing = false;
         }
         else
         {
            this.mainViewStack.selectedIndex = 1;
         }
         this.logoutButton.enabled = true;
         this._refresh();
      }
      
      private function _askEvaluation(param1:String) : void
      {
         var _loc2_:String = null;
         if(this._isGuest || param1.match(/^GUEST_/))
         {
            return;
         }
         _loc2_ = LanguageSelector.EJ("Evaluate ","対局相手") + param1 + LanguageSelector.EJ("\'s game manner ->","さんの対局マナーを評価して下さい。");
         _loc2_ = _loc2_ + (" [<a href=\"event:good," + param1 + "\">" + LanguageSelector.EJ("Good","良い") + "</a>]");
         _loc2_ = _loc2_ + (" / [<a href=\"event:bad," + param1 + "\">" + LanguageSelector.EJ("Bad","悪い") + "</a>]");
         this._writeUserMessage(_loc2_ + "\n",1,"#0000ff");
      }
      
      private function closeBrowser() : void
      {
         if(this._game_name && this.board.isStudyHost)
         {
            this._handOverHost();
         }
      }
      
      private function resizeBrowser(param1:Number, param2:Number) : void
      {
         this.width = param1;
         this.height = param2;
      }
      
      private function replayJump(param1:int) : void
      {
         if(this._viewerAlone && this.mainViewStack.selectedIndex == 2)
         {
            this.kifuDataGrid.selectedIndex = param1;
            this.kifuDataGrid.scrollToIndex(param1);
            this.kifuListSelected();
         }
      }
      
      private function _handleSendChat2(param1:FlexEvent) : void
      {
         var _loc2_:Array = null;
         this._sendTypingTimer.stop();
         if(param1.target.text == "")
         {
            return;
         }
         if(param1.target.text.match(/\[auto\-chat\]/))
         {
            Alert.show(LanguageSelector.EJ("You cannot imitate auto-chat.","auto-chatの擬装は禁止です。"));
            return;
         }
         if(param1.target.text.match(/\[##/) && !InfoFetcher.isAdminLv1(this.login_name))
         {
            return;
         }
         if(_loc2_ = param1.target.text.match(/^@(.+?)\s(.+)$/))
         {
            this._sendPrivateChat(_loc2_[1],_loc2_[2]);
         }
         else if(this._game_name)
         {
            this._client.gameChat(this._game_name,param1.target.text);
         }
         this._chatHistory.unshift(param1.target.text);
         this._nHistory = 0;
         param1.target.text = "";
      }
      
      private function _clearArrows() : void
      {
         if(this.board.isStudyHost || this.board.onListen)
         {
            if(this.board.clearArrows(Board.ARROWS_PUBLIC,""))
            {
               this._client.gameChat(this._game_name,"[##ARROW]CLEAR");
            }
            else
            {
               this.board.clearArrows(Board.ARROWS_PUBLIC);
            }
            if(this.board.isStudyHost)
            {
               this.board.clearArrows(Board.ARROWS_SELF);
            }
         }
         else
         {
            this.board.clearArrows(Board.ARROWS_SELF);
         }
      }
      
      private function _openKifuShareWindow(param1:Object, param2:Object = null, param3:int = 0, param4:int = 0, param5:int = 0) : void
      {
         this._kifuShareWindow = KifuShareWindow(PopUpManager.createPopUp(this,KifuShareWindow,true));
         PopUpManager.centerPopUp(this._kifuShareWindow);
         this._kifuShareWindow.toggleRadio(param1 != null,param2 != null);
         this._kifuShareWindow.kifu = param1;
         this._kifuShareWindow.diagram = param2;
         this._kifuShareWindow.moves = param5;
         this._kifuShareWindow.turn = param4;
         this._kifuShareWindow.pieceType = param3;
      }
      
      private function _loadKifu() : void
      {
         if(this._game_name.match(/^STUDY/) && this.board.isStudyHost)
         {
            this._kifuRef = new FileReference();
            this._kifuRef.addEventListener(Event.SELECT,this._handleKifuSelect);
            this._kifuRef.addEventListener(Event.COMPLETE,this._handleKifuComplete);
            this._kifuRef.browse([new FileFilter(LanguageSelector.EJ("Kifu (.KIFU .KIF) UTF8 encoding only","棋譜ファイル(.KIFU .KIF) 文字コードUTF8のみ対応"),"*.kifu;*.kif"),new FileFilter(LanguageSelector.EJ("Position (.BOD) UTF8 encoding only","盤面ファイル(.BOD) 文字コードUTF8のみ対応"),"*.bod")]);
         }
      }
      
      private function _switchListenColor(param1:Boolean) : void
      {
         this.kifuDataGrid.setStyle("color",!!param1?undefined:this._panelReplayColor);
         this.sidePanel.setStyle("backgroundColor",!!param1?"white":16763972);
      }
      
      private function _handleKifuSelect(param1:Event) : void
      {
         this._sendAutoChat("#G004");
         FileReference(param1.target).load();
      }
      
      private function _handleKifuComplete(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         if(!this._game_name.match(/^STUDY/) || !this.board.isStudyHost)
         {
            Alert.show(LanguageSelector.lan.load_disabled,"",4);
            return;
         }
         _loc2_ = [];
         if(FileReference(param1.target).name.match(/\.bod$/))
         {
            for each(_loc5_ in String(FileReference(param1.target).data).split("\n"))
            {
               _loc6_ = "";
               if(_loc4_ = _loc5_.match(/^(.)手の持駒：(.*)$/))
               {
                  _loc6_ = _loc4_[1] == "後" || _loc4_[1] == "上"?"P-":"P+";
                  if(!_loc4_[2].match(/なし/))
                  {
                     for each(_loc7_ in _loc4_[2].split("　"))
                     {
                        if(_loc7_.length == 1)
                        {
                           _loc6_ = _loc6_ + ("00" + Kyokumen.komaJapaneseToCSA(_loc7_));
                        }
                        else
                        {
                           _loc8_ = 0;
                           while(_loc8_ < Kyokumen.numJapaneseToInt(_loc7_.substr(1)))
                           {
                              _loc6_ = _loc6_ + ("00" + Kyokumen.komaJapaneseToCSA(_loc7_.charAt(0)));
                              _loc8_++;
                           }
                        }
                     }
                  }
               }
               else if(_loc4_ = _loc5_.match(/^\|(.+)\|(.)$/))
               {
                  _loc6_ = "P" + Kyokumen.numJapaneseToInt(_loc4_[2]);
                  _loc8_ = 0;
                  while(_loc8_ < 9)
                  {
                     if(_loc4_[1].charAt(2 * _loc8_ + 1) == "・")
                     {
                        _loc6_ = _loc6_ + "_*_";
                     }
                     else
                     {
                        _loc6_ = _loc6_ + ((_loc4_[1].charAt(2 * _loc8_) == "v"?"-":"+") + Kyokumen.komaJapaneseToCSA(_loc4_[1].charAt(2 * _loc8_ + 1)));
                     }
                     _loc8_++;
                  }
               }
               else
               {
                  continue;
               }
               _loc2_.push(_loc6_);
            }
            _loc2_.push("+");
         }
         else if(FileReference(param1.target).name.match(/\.kif/))
         {
            _loc9_ = false;
            for each(_loc5_ in String(FileReference(param1.target).data).split("\n"))
            {
               if(_loc5_.match(/^手合割：平手/))
               {
                  _loc9_ = true;
               }
               else
               {
                  if(_loc5_.match(/^\s+\d+\s+投了\s/))
                  {
                     _loc2_.push("%TORYO");
                     break;
                  }
                  if(_loc5_.match(/^\s+\d+\s+切れ負け\s/))
                  {
                     _loc2_.push("%%%TIMEOUT");
                     break;
                  }
                  if(_loc5_.match(/^変化：\d+手$/))
                  {
                     break;
                  }
                  _loc4_ = _loc5_.match(/^\s*(\d+)\s+(同|[１２３４５６７８９][一二三四五六七八九])[\s　]*(成?)([歩と香桂銀金角馬飛龍竜玉王])(不?成?)(\(\d+\)|打)/);
                  if(_loc4_)
                  {
                     _loc6_ = "";
                     if(parseInt(_loc4_[1]) % 2 == (!!_loc9_?0:1))
                     {
                        _loc6_ = _loc6_ + "-";
                     }
                     else
                     {
                        _loc6_ = _loc6_ + "+";
                     }
                     if(_loc4_[6] == "打")
                     {
                        _loc6_ = _loc6_ + "00";
                     }
                     else
                     {
                        _loc6_ = _loc6_ + _loc4_[6].substr(1,2);
                     }
                     if(_loc4_[2] == "同")
                     {
                        _loc6_ = _loc6_ + _loc3_;
                     }
                     else
                     {
                        _loc3_ = String(Kyokumen.numJapaneseToInt(_loc4_[2].charAt(0)));
                        _loc3_ = _loc3_ + String(Kyokumen.numJapaneseToInt(_loc4_[2].charAt(1)));
                        _loc6_ = _loc6_ + _loc3_;
                     }
                     if(_loc4_[3] == "成" || _loc4_[5] == "成")
                     {
                        switch(_loc4_[4])
                        {
                           case "歩":
                              _loc6_ = _loc6_ + "TO";
                              break;
                           case "香":
                              _loc6_ = _loc6_ + "NY";
                              break;
                           case "桂":
                              _loc6_ = _loc6_ + "NK";
                              break;
                           case "銀":
                              _loc6_ = _loc6_ + "NG";
                              break;
                           case "角":
                              _loc6_ = _loc6_ + "UM";
                              break;
                           case "飛":
                              _loc6_ = _loc6_ + "RY";
                        }
                     }
                     else
                     {
                        _loc6_ = _loc6_ + Kyokumen.komaJapaneseToCSA(_loc4_[4]);
                     }
                     _loc2_.push(_loc6_);
                  }
               }
            }
         }
         if(_loc2_.length >= 1)
         {
            this._client.resetStudyPosition(_loc2_.join("/"));
         }
      }
      
      private function _gamePlayerInfo(param1:MouseEvent) : void
      {
         this._openPlayerInfo(param1.target.text);
      }
      
      private function _handleMenuClick(param1:MenuEvent) : void
      {
         param1.item.selectHandler(param1);
      }
      
      private function _sendEngine(param1:Boolean = false) : void
      {
         if(this.board.gameType.match(/^va.+/))
         {
            this._writeUserMessage(LanguageSelector.EJ("This function is not available for this game type.\n","このルールは思考エンジンに対応していません\n"),2,"#EE8800@");
            return;
         }
         this._engineRelay.sendPosition(new Kyokumen(this.board.position.toString()),param1);
      }
      
      private function _calcMaterial() : void
      {
         if(this.board.gameType == "r" || this.board.gameType == "nr" || this._game_name.match(/^.+\+hcfixed_/))
         {
            this._writeUserMessage(LanguageSelector.EJ("Material balance (move #" + this.kifuDataGrid.selectedIndex + "):　","駒割計算結果(" + this.kifuDataGrid.selectedIndex + "手まで):　") + this.board.position.calcMaterial(this.board.my_turn,this.kifuDataGrid.selectedIndex <= 40),2,"#008800");
         }
         else
         {
            this._writeUserMessage(LanguageSelector.EJ("This function is only for even games.","平手以外では使えません"),2,"#008800");
         }
      }
      
      private function _jumpToKyokumenpedia() : void
      {
         navigateToURL(new URLRequest("http://kyokumen.jp/positions/" + this.board.position.toSFEN(false)));
      }
      
      private function _toggleListen() : void
      {
         var _loc1_:int = 0;
         this.board.cancelSquareSelect();
         if(this.radioKifuListen.selected)
         {
            this.board.onListen = true;
            this._switchListenColor(true);
            this._study_notified = false;
            if(this.board.isSubHost)
            {
               this._sendAutoChat("#G001");
            }
            this.board.clearArrows(Board.ARROWS_SELF);
            this.board.showArrows(Board.ARROWS_PUBLIC);
            this.kifuDataGrid.scrollToIndex(0);
            this.kifuDataGrid.dataProvider = this.board.kifu_list;
            if(this.board.kifu_list_self.length > 0)
            {
               this.board.kifu_list_self = [];
            }
            if(this.board.post_game && !this.board.isStudyHost)
            {
               this.board.replayMoves(this.board.studyOrigin,true);
               if(this.board.study_list.length > 0)
               {
                  _loc1_ = 0;
                  while(_loc1_ <= this.board.studyOrigin)
                  {
                     this.board.kifu_list_self.push(this.board.kifu_list[_loc1_]);
                     _loc1_++;
                  }
                  _loc1_ = 0;
                  while(_loc1_ < this.board.study_list.length)
                  {
                     this.board.makeMove(this.board.study_list[_loc1_] + ",T0",false,false);
                     _loc1_++;
                  }
                  this.kifuDataGrid.dataProvider = this.board.kifu_list_self;
                  this.kifuDataGrid.selectedIndex = this.board.kifu_list_self.length - 1;
               }
               else
               {
                  this.kifuDataGrid.selectedIndex = this.board.studyOrigin;
               }
            }
            if(this._monitoring && !this.board.post_game)
            {
               this.board.replayMoves(this.board.kifu_list.length - 1,true);
               this.kifuDataGrid.selectedIndex = this.board.kifu_list.length - 1;
            }
            this.kifuDataGrid.callLater(this._scrollDownKifu);
         }
         else
         {
            this.board.onListen = false;
            this._switchListenColor(false);
            if(this.board.isSubHost)
            {
               this._sendAutoChat("#G000");
            }
            if(!this.board.isStudyHost)
            {
               this.board.eraseArrows(Board.ARROWS_PUBLIC);
               this.board.showArrows(Board.ARROWS_SELF);
            }
         }
      }
      
      private function _copyKIF() : void
      {
         if(this._isDuringMyGame() && !this._debug)
         {
            return;
         }
         System.setClipboard(this._formatKIF());
      }
      
      private function _saveKIF() : void
      {
         var _loc1_:String = null;
         var _loc2_:FileReference = null;
         if(this._isDuringMyGame())
         {
            return;
         }
         _loc1_ = this._game_name.split("+")[4];
         _loc2_ = new FileReference();
         _loc2_.save(this._formatKIF(),"81Dojo-" + _loc1_.substr(0,4) + "-" + _loc1_.substr(4,2) + "-" + _loc1_.substr(6,2) + "-" + _loc1_.substr(8,2) + "-" + _loc1_.substr(10,2) + ".kif");
      }
      
      private function _formatKIF() : String
      {
         var _loc1_:* = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc1_ = "#KIF version=2.0 encoding=UTF-8\r\n";
         _loc1_ = _loc1_ + ("開始日時：" + this._game_name.split("+")[4].substr(0,4) + "/" + this._game_name.split("+")[4].substr(4,2) + "/" + this._game_name.split("+")[4].substr(6,2) + "\r\n");
         _loc1_ = _loc1_ + ("場所：81Dojo (" + this.VERSION + ")\r\n");
         _loc2_ = this._game_name.split("+")[1].match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         _loc1_ = _loc1_ + ("持ち時間：" + parseInt(_loc2_[3]) / 60 + "分+" + parseInt(_loc2_[4]) + "秒\r\n");
         _loc1_ = _loc1_ + (InfoFetcher.gameTypeKIF(_loc2_[1]) + "\r\n");
         _loc1_ = _loc1_ + ("先手：" + this.board.playerInfos[0].name + "\r\n");
         _loc1_ = _loc1_ + ("後手：" + this.board.playerInfos[1].name + "\r\n");
         _loc1_ = _loc1_ + "手数----指手---------消費時間--\r\n";
         _loc3_ = 1;
         while(_loc3_ < this.board.kifu_list.length)
         {
            _loc4_ = 1;
            while(_loc4_ <= 4 - String(_loc3_).length)
            {
               _loc1_ = _loc1_ + " ";
               _loc4_++;
            }
            _loc1_ = _loc1_ + (String(_loc3_) + " ");
            _loc1_ = _loc1_ + (this.board.kifu_list[_loc3_].toKIFNotation() + "\r\n");
            _loc3_++;
         }
         if(this.board.kifu_list_self.length > 0)
         {
            _loc3_ = 1;
            while(_loc3_ < this.board.kifu_list_self.length)
            {
               if(this.board.kifu_list_self[_loc3_].branch)
               {
                  _loc5_ = _loc3_;
                  break;
               }
               _loc3_++;
            }
            if(_loc3_ > 1)
            {
               _loc1_ = _loc1_ + ("\r\n変化：" + String(_loc3_) + "手\r\n");
            }
            _loc3_ = _loc5_;
            while(_loc3_ < this.board.kifu_list_self.length)
            {
               _loc4_ = 1;
               while(_loc4_ <= 4 - String(_loc3_).length)
               {
                  _loc1_ = _loc1_ + " ";
                  _loc4_++;
               }
               _loc1_ = _loc1_ + (String(_loc3_) + " ");
               _loc1_ = _loc1_ + (this.board.kifu_list_self[_loc3_].toKIFNotation() + "\r\n");
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      private function kifuListSelected() : void
      {
         var _loc1_:int = 0;
         this.board.cancelSquareSelect();
         _loc1_ = this.kifuDataGrid.selectedIndex;
         this.radioKifuReplay.selected = true;
         if(this.board.onListen)
         {
            this.board.onListen = false;
            this._switchListenColor(false);
            if(this.board.isSubHost)
            {
               this._sendAutoChat("#G000");
            }
            this.board.eraseArrows(Board.ARROWS_PUBLIC);
         }
         this.board.clearArrows(Board.ARROWS_SELF);
         if(this.kifuDataGrid.selectedItem.branch)
         {
            this.board.replayMoves(_loc1_,false);
         }
         else
         {
            if(this.board.kifu_list_self.length > 0 && !(this.board.kifu_list_self[this.board.kifu_list.length - 1] && !this.board.kifu_list_self[this.board.kifu_list.length - 1].branch))
            {
               this.board.kifu_list_self = [];
               this.kifuDataGrid.scrollToIndex(0);
               this.kifuDataGrid.dataProvider = this.board.kifu_list;
               this.kifuDataGrid.selectedIndex = _loc1_;
               this.kifuDataGrid.scrollToIndex(_loc1_);
               if(this.board.isStudyHost)
               {
                  this._sendAutoChat("#G003");
               }
            }
            this.board.replayMoves(_loc1_,true);
         }
         if(this.board.isStudyHost)
         {
            this._sendStudy(true);
         }
      }
      
      private function replayByButton(param1:int) : void
      {
         var _loc2_:int = 0;
         this.board.cancelSquareSelect();
         this.board.clearArrows(Board.ARROWS_SELF);
         switch(param1)
         {
            case -2:
            case -1:
               if(this.kifuDataGrid.selectedIndex == 0)
               {
                  return;
               }
               if(param1 == -1)
               {
                  this.kifuDataGrid.selectedIndex--;
               }
               else
               {
                  this.kifuDataGrid.selectedIndex = 0;
               }
               break;
            case 1:
            case 2:
               if(this.kifuDataGrid.selectedIndex < this.kifuDataGrid.dataProvider.length - 1)
               {
                  if(param1 == 1)
                  {
                     this.kifuDataGrid.selectedIndex++;
                  }
                  else
                  {
                     this.kifuDataGrid.selectedIndex = this.kifuDataGrid.dataProvider.length;
                  }
               }
               else
               {
                  if(!this.board.post_game && !this.board.onListen && !this.board.viewing && !this.kifuDataGrid.selectedItem.branch)
                  {
                     this.radioKifuListen.selected = true;
                     this._toggleListen();
                  }
                  return;
               }
         }
         this.radioKifuReplay.selected = true;
         if(this.board.onListen)
         {
            this.board.onListen = false;
            this._switchListenColor(false);
            if(this.board.isSubHost)
            {
               this._sendAutoChat("#G000");
            }
            this.board.eraseArrows(Board.ARROWS_PUBLIC);
         }
         _loc2_ = this.kifuDataGrid.selectedIndex;
         if(this.kifuDataGrid.selectedItem.branch)
         {
            this.board.replayMoves(_loc2_,false);
         }
         else
         {
            if(this.board.kifu_list_self.length > 0 && !(this.board.kifu_list_self[this.board.kifu_list.length - 1] && !this.board.kifu_list_self[this.board.kifu_list.length - 1].branch))
            {
               this.board.kifu_list_self = [];
               this.kifuDataGrid.scrollToIndex(0);
               this.kifuDataGrid.dataProvider = this.board.kifu_list;
               this.kifuDataGrid.selectedIndex = _loc2_;
               if(this.board.isStudyHost)
               {
                  this._sendAutoChat("#G003");
               }
            }
            this.board.replayMoves(_loc2_,true);
         }
         if(this.board.isStudyHost)
         {
            this._sendStudy(param1 == 1 || param1 == -1);
         }
         this.kifuDataGrid.scrollToIndex(_loc2_);
      }
      
      private function _scrollDownKifu() : void
      {
         if(this.kifuDataGrid.selectedItem)
         {
            this.kifuDataGrid.scrollToIndex(this.kifuDataGrid.selectedIndex);
         }
         else
         {
            this.kifuDataGrid.scrollToIndex(this.kifuDataGrid.dataProvider.length - 1);
         }
      }
      
      private function _hoverPiece(param1:int, param2:int) : void
      {
         this._client.gameChat(this._game_name,"[##HOVER]" + param1 + "," + param2);
      }
      
      private function _grabPiece(param1:int, param2:int) : void
      {
         this._client.gameChat(this._game_name,"[##GRAB]" + param1 + "," + param2);
      }
      
      private function _handleActivate(param1:Event) : void
      {
         if(this._isDuringMyGame() && !this._debug && !this.board.viewing && (this.board.gameType == "r" || this.board.gameType == "vazoo"))
         {
            this._client.gameChat(this._game_name,"[##M_IN]0,0");
         }
      }
      
      private function _handleDeactivate(param1:Event) : void
      {
         if(this._isDuringMyGame() && !this._debug && !this.board.viewing && (this.board.gameType == "r" || this.board.gameType == "vazoo"))
         {
            this._client.gameChat(this._game_name,"[##M_OUT]0,0");
         }
      }
      
      private function _rankingTabChange() : void
      {
         var _loc1_:String = null;
         _loc1_ = "";
         switch(this.rankingTabNavigator.selectedIndex)
         {
            case 0:
               if(this._ranking_rate_list)
               {
                  _loc1_ = this._ranking_rate_list[0].country_code;
               }
               break;
            case 1:
               if(this._ranking_streak_list)
               {
                  _loc1_ = this._ranking_streak_list[0].country_code;
               }
               break;
            case 2:
               if(this._ranking_percentage_list)
               {
                  _loc1_ = this._ranking_percentage_list[0].country_code;
               }
               break;
            case 3:
               if(this._ranking_wins_list)
               {
                  _loc1_ = this._ranking_wins_list[0].country_code;
               }
               break;
            case 4:
               if(this._ranking_total_list)
               {
                  _loc1_ = this._ranking_total_list[0].country_code;
               }
         }
         if(_loc1_ == "")
         {
            this.rankingFlagLoader.source = "";
         }
         else
         {
            this.rankingFlagLoader.source = this.IMAGE_DIRECTORY + "flags_m/" + _loc1_ + ".swf";
         }
      }
      
      private function _sendKifuSearch() : void
      {
         var _loc1_:Date = null;
         var _loc2_:Date = null;
         this.kifuSearchPlayerText.text = this.kifuSearchPlayerText.text.replace(/\s/,"");
         this.kifuSearchOpponentText.text = this.kifuSearchOpponentText.text.replace(/\s/,"");
         if(this.kifuSearchPlayerText.text && this.kifuSearchFromChooser.selectedDate && this.kifuSearchToChooser.selectedDate)
         {
            this.kifuSearchGrid.dataProvider = null;
            _loc1_ = new Date("2010/9/20");
            if(this.kifuSearchFromChooser.selectedDate > _loc1_)
            {
               _loc1_ = this.kifuSearchFromChooser.selectedDate;
            }
            _loc2_ = new Date();
            _loc2_.setTime(this.kifuSearchToChooser.selectedDate.getTime() + 24 * 60 * 60 * 1000);
            this._api.kifuSearch(this.kifuSearchPlayerText.text.toLowerCase(),this.kifuSearchOpponentText.text.toLowerCase(),_loc1_,_loc2_);
            this.searchKifuCountLabel.text = "";
            this.searchAccordion.enabled = false;
         }
      }
      
      private function _handleSearchNotFound(param1:Event) : void
      {
         this.searchAccordion.enabled = true;
      }
      
      private function _handleKifuSearch(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Date = null;
         var _loc11_:Array = null;
         this.searchAccordion.enabled = true;
         this._kifu_search_list = [];
         _loc4_ = 0;
         _loc5_ = 0;
         _loc6_ = 0;
         _loc7_ = 0;
         _loc8_ = 0;
         for each(_loc9_ in param1.target.bufferData)
         {
            _loc3_ = _loc9_.game_id.split("+")[1].match(/^([0-9a-z]+?)_.+\-(\d+)\-(\d+)$/);
            if(_loc3_[1] == "r")
            {
               _loc2_ = "R";
            }
            else if(_loc3_[1] == "nr")
            {
               _loc2_ = "NR";
            }
            else if(_loc3_[1].match(/^(hc|va|mini)/))
            {
               if(_loc3_[1].match(/vachu/))
               {
                  continue;
               }
               _loc2_ = "* " + InfoFetcher.gameTypeShort(_loc3_[1]);
               _loc9_.gameTypeShare = InfoFetcher.gameTypeShort(_loc3_[1]);
            }
            _loc9_.rule = _loc2_ + ": " + parseInt(_loc3_[2]) / 60 + "-" + parseInt(_loc3_[3]);
            _loc9_.black = _loc9_.game_id.split("+")[2];
            _loc9_.white = _loc9_.game_id.split("+")[3];
            _loc9_.date = _loc9_.game_id.split("+")[4].substr(0,4) + "/" + _loc9_.game_id.split("+")[4].substr(4,2) + "/" + _loc9_.game_id.split("+")[4].substr(6,2);
            _loc10_ = new Date(_loc9_.date);
            _loc9_.old_rating = _loc10_ < this.ratingChangeDate;
            if(_loc9_.result.match(/summary/))
            {
               if(_loc9_.result.match(new RegExp(this.kifuSearchPlayerText.text + " win","i")))
               {
                  _loc9_.winner = LanguageSelector.EJ("WIN","◯");
                  _loc4_ = _loc4_ + 1;
               }
               else if(_loc9_.result.match(new RegExp(this.kifuSearchPlayerText.text + " lose","i")))
               {
                  _loc9_.winner = LanguageSelector.EJ("LOSS","●");
                  _loc5_ = _loc5_ + 1;
               }
               else
               {
                  _loc9_.winner = LanguageSelector.EJ("DRAW","引分");
                  _loc6_ = _loc6_ + 1;
               }
               _loc11_ = _loc9_.result.split(":");
               _loc9_.moves = !!_loc11_[4]?parseInt(_loc11_[4]):0;
               _loc9_.opening = !!_loc11_[5]?InfoFetcher.openingNameEn(_loc11_[5]):"";
               _loc9_.opening_jp = !!_loc11_[5]?InfoFetcher.openingNameJpTip(_loc11_[5]):"";
               if(_loc11_[6])
               {
                  _loc9_.blackRankColor = !!String(_loc11_[6]).match(/^\*/)?10066329:InfoFetcher.makeColorFromRating(parseInt(_loc11_[6].split(",")[0]) + (!!_loc9_.old_rating?550:0));
                  _loc9_.blackRank = !!String(_loc11_[6]).match(/^\*/)?"-":InfoFetcher.makeRankFromRating(parseInt(_loc11_[6].split(",")[0]) + (!!_loc9_.old_rating?550:0));
                  _loc9_.blackCountryCode = parseInt(_loc11_[6].split(",")[1]);
                  _loc9_.blackFlagURL = this.IMAGE_DIRECTORY + "flags_ss/" + String(_loc9_.blackCountryCode + 1000).substr(1) + ".png";
                  _loc9_.blackCountry = InfoFetcher.country_names[_loc9_.blackCountryCode];
                  _loc9_.blackMouseOut = parseInt(_loc11_[6].split(",")[2]);
               }
               else
               {
                  _loc9_.blackRankColor = 16777215;
               }
               if(_loc11_[7])
               {
                  _loc9_.whiteRankColor = !!String(_loc11_[7]).match(/^\*/)?10066329:InfoFetcher.makeColorFromRating(parseInt(_loc11_[7].split(",")[0]) + (!!_loc9_.old_rating?550:0));
                  _loc9_.whiteRank = !!String(_loc11_[7]).match(/^\*/)?"-":InfoFetcher.makeRankFromRating(parseInt(_loc11_[7].split(",")[0]) + (!!_loc9_.old_rating?550:0));
                  _loc9_.whiteCountryCode = parseInt(_loc11_[7].split(",")[1]);
                  _loc9_.whiteFlagURL = this.IMAGE_DIRECTORY + "flags_ss/" + String(_loc9_.whiteCountryCode + 1000).substr(1) + ".png";
                  _loc9_.whiteCountry = InfoFetcher.country_names[_loc9_.whiteCountryCode];
                  _loc9_.whiteMouseOut = parseInt(_loc11_[7].split(",")[2]);
               }
               else
               {
                  _loc9_.whiteRankColor = 16777215;
               }
               this._kifu_search_list.push(_loc9_);
               if(_loc2_ == "R" && _loc11_[4] && parseInt(_loc11_[4]) >= 4)
               {
                  _loc7_ = _loc7_ + 1;
                  _loc8_ = _loc8_ + 1;
                  if(this.kifuSearchPlayerText.text.toLowerCase() == _loc9_.black.toLowerCase() && _loc9_.whiteCountryCode != 392)
                  {
                     _loc8_ = _loc8_ + 1;
                  }
                  else if(this.kifuSearchPlayerText.text.toLowerCase() == _loc9_.white.toLowerCase() && _loc9_.blackCountryCode != 392)
                  {
                     _loc8_ = _loc8_ + 1;
                  }
               }
            }
         }
         if(this._kifu_search_list.length > 100)
         {
            Alert.show(LanguageSelector.EJ("More than 100 kifu matched. Please narrow the search.","100件以上の棋譜が見つかりました。検索条件を絞って下さい。"),"",4,this.searchAccordion);
         }
         this.kifuSearchGrid.dataProvider = this._kifu_search_list;
         this.searchKifuCountLabel.text = _loc4_ + LanguageSelector.EJ(" wins, ","勝, ") + _loc5_ + LanguageSelector.EJ(" losses, ","敗, ") + _loc6_ + LanguageSelector.EJ(" draws","引分") + (!!InfoFetcher.isAdminLv1(this.login_name)?", " + _loc8_ + "pts by " + _loc7_ + "gms":"");
      }
      
      private function _kifuSearchSelected() : void
      {
         if(this.kifuSearchGrid.selectedItem)
         {
            this.searchAccordion.enabled = false;
            this.board.kid = this.kifuSearchGrid.selectedItem.id;
            this._api.kifuDetail(this.kifuSearchGrid.selectedItem.id);
         }
      }
      
      private function _shareKifu3() : void
      {
         var _loc1_:Object = null;
         _loc1_ = this.kifuSearchGrid.selectedItem;
         if(_loc1_)
         {
            if(_loc1_.opening_jp == "" && _loc1_.gameTypeShare != null)
            {
               _loc1_.opening_jp = _loc1_.gameTypeShare;
            }
            this._openKifuShareWindow(_loc1_);
         }
         else
         {
            Alert.show(LanguageSelector.EJ("Highlight a game first.","対局を選択して下さい。"),LanguageSelector.lan.error);
         }
      }
      
      private function _handleKifuDetail(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Date = null;
         var _loc4_:String = null;
         var _loc5_:User = null;
         var _loc6_:User = null;
         var _loc7_:Game = null;
         var _loc8_:Object = null;
         this.searchAccordion.enabled = true;
         this.board.viewing = true;
         this.board.my_turn = Kyokumen.SENTE;
         _loc2_ = [];
         this._initPositionStr = "";
         this._game_name = param1.target.kifuContents.split("\n")[4].substring(7);
         _loc3_ = new Date(param1.target.kifuContents.split("\n")[7].substr(12));
         for each(_loc4_ in param1.target.kifuContents.split("\n"))
         {
            if(_loc4_.match(/^To_Move/))
            {
               this._initPositionStr = this._initPositionStr + ("P0" + _loc4_.substring(8) + "\n");
            }
            else if(_loc4_.match(/^P[0-9\+\-]/))
            {
               this._initPositionStr = this._initPositionStr + (_loc4_ + "\n");
            }
            else if(_loc4_.match(/^N\+.+$/))
            {
               _loc5_ = new User(_loc4_.substring(2));
            }
            else if(_loc4_.match(/^N\-.+$/))
            {
               _loc6_ = new User(_loc4_.substring(2));
            }
            else if(_loc4_.match(/^I\+.+$/))
            {
               _loc5_.setFromList(_loc4_.substring(2).split(",")[0],parseInt(_loc4_.substring(2).split(",")[1]),_loc3_ < this.ratingChangeDate);
               _loc5_.wins = !!_loc4_.match(/\*/)?0:10;
            }
            else if(_loc4_.match(/^I\-.+$/))
            {
               _loc6_.setFromList(_loc4_.substring(2).split(",")[0],parseInt(_loc4_.substring(2).split(",")[1]),_loc3_ < this.ratingChangeDate);
               _loc6_.wins = !!_loc4_.match(/\*/)?0:10;
               _loc7_ = new Game(this._game_name,_loc5_,_loc6_);
            }
            else if(_loc4_.match(/^([-+][0-9]{4}.{2}$)/) || _loc4_ == "%TORYO" || _loc4_.match(/^#(TIME_UP|ILLEGAL_MOVE|SENNICHITE|DISCONNECT|JISHOGI|CATCH|TRY)/))
            {
               _loc8_ = new Object();
               _loc8_.move = _loc4_;
               _loc8_.comment = "";
               _loc2_.push(_loc8_);
            }
            else if(_loc4_.match(/^(T.*)$/))
            {
               Object(_loc2_[_loc2_.length - 1]).time = _loc4_;
            }
            else if(_loc4_.match(/^'\*/))
            {
               Object(_loc2_[_loc2_.length - 1]).comment = Object(_loc2_[_loc2_.length - 1]).comment + (_loc4_ + "\n");
            }
            else if(_loc4_.match(/summary/))
            {
               _loc7_.opening = !!_loc4_.split(":")[5]?_loc4_.split(":")[5]:"*";
            }
         }
         if(this._game_name.split("+")[1].match(/^r_/))
         {
            this.board.gameType = "r";
         }
         else if(this._game_name.split("+")[1].match(/^nr_/))
         {
            this.board.gameType = "nr";
         }
         else if(this._game_name.split("+")[1].match(/^hc/))
         {
            this.board.gameType = "hc";
         }
         else if(this._game_name.split("+")[1].match(/^(mini|va.+?)_/))
         {
            this.board.gameType = this._game_name.split("+")[1].match(/^(mini|va.+?)_/)[1];
         }
         this.board.layoutBoard();
         this.board.superior = _loc7_.superior;
         this.allowWatcherChatCheckbox.enabled = false;
         this.allowWatcherChatCheckbox.selected = false;
         this.board.startView(this._initPositionStr,_loc7_,_loc2_);
         this.resignButton.enabled = false;
         this.reverseButton.enabled = true;
         this.greetButton.state = GreetButton.STATE_DISABLED;
         this.rematchButton.enabled = false;
         this.giveHostButton.enabled = false;
         this._shareKifuEnabled = true;
         this.userMessage2.htmlText = "";
         this.kifuDataGrid.selectable = true;
         this.queryButton.visible = true;
         this.rewindAllButton.enabled = true;
         this.rewindOneButton.enabled = true;
         this.forwardAllButton.enabled = true;
         this.forwardOneButton.enabled = true;
         this.radioKifuReplay.enabled = true;
         this.radioKifuReplay.selected = true;
         this._switchListenColor(false);
         this.radioKifuListen.enabled = false;
         this.chatMessage2.enabled = false;
         this.mainViewStack.selectedIndex = 2;
         this.kifuDataGrid.dataProvider = this.board.kifu_list;
         this.kifuDataGrid.selectedIndex = 0;
         this.board.replayMoves(0,true);
         if(this._viewerAlone)
         {
            if(this.parameters["moves"])
            {
               this.kifuDataGrid.selectedIndex = this.parameters["moves"];
               this.board.replayMoves(this.parameters["moves"],true);
               this.kifuDataGrid.scrollToIndex(this.kifuDataGrid.selectedIndex);
               this.kifuDataGrid.callLater(this._scrollDownKifu);
            }
            if(this.parameters["turn"])
            {
               if(this.parameters["turn"] == 1)
               {
                  this.board.flipBoard();
               }
            }
            if(this.parameters["piece"])
            {
               this.board.setPieceType(this.parameters["piece"],this.parameters["piece"]);
            }
         }
         this._writeUserMessage(LanguageSelector.EJ("81Dojo Kifu Viewer\n","81Dojo (81道場) 棋譜ビューア\n"),2,"#008800",true);
         if(this._viewerAlone)
         {
            this.closeButton.enabled = false;
            this.checkLobbyButton.enabled = false;
            this._writeUserMessage(LanguageSelector.EJ("Register to 81Dojo and play shogi with this graphical interface!\n","インタラクティブな感想戦が出来る81道場を是非お試し下さい。\n"),2,"#008800");
            this._writeUserMessage(LanguageSelector.EJ("( https://81dojo.com/ )\n","81道場・日本語ページ → https://81dojo.com/jp/\n"),2,"#008800");
         }
         else
         {
            this.closeButton.enabled = true;
         }
         this._writeUserMessage(LanguageSelector.EJ("\nStarted Time: ","\n対局開始日時: ") + param1.target.kifuContents.split("\n")[7].substr(12) + "\n",2,"#000000");
      }
      
      private function _handlePlayerSearchEnter(param1:FlexEvent) : void
      {
         this._sendPlayerSearch();
      }
      
      private function _sendPlayerSearch() : void
      {
         if(this.playerSearchNameText.text)
         {
            this.playerSearchGrid.dataProvider = null;
            this.searchAccordion.enabled = false;
            this._api.playerSearch(this.playerSearchNameText.text.toLowerCase());
         }
      }
      
      private function _handlePlayerSearch(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         this.searchAccordion.enabled = true;
         this._player_search_list = [];
         for each(_loc2_ in param1.target.bufferData)
         {
            _loc2_.country = InfoFetcher.country_names[InfoFetcher.country_codes[_loc2_.country_id - 1]];
            _loc2_.total = parseInt(_loc2_.wins) + parseInt(_loc2_.losses);
            _loc2_.percentage = (100 * _loc2_.wins / Math.max(1,_loc2_.total)).toFixed(1);
            _loc2_.flagURL = this.IMAGE_DIRECTORY + "flags_s/" + String(InfoFetcher.country_codes[_loc2_.country_id - 1] + 1000).substring(1) + ".gif";
            _loc2_.rank = InfoFetcher.makeRankFromRating(_loc2_.rate);
            _loc2_.created_at = _loc2_.created_at.split(" ")[0];
            _loc2_.updated_at = _loc2_.updated_at.split(" ")[0];
            _loc3_ = 0;
            while(_loc3_ < InfoFetcher.titleUser.length)
            {
               if(_loc2_.login == InfoFetcher.titleUser[_loc3_])
               {
                  if(InfoFetcher.titleName[_loc3_] != "*")
                  {
                     _loc2_.title = InfoFetcher.titleName[_loc3_];
                  }
                  break;
               }
               _loc3_++;
            }
            if(_loc2_.name.toLowerCase() == _loc2_.login)
            {
               _loc2_.login = _loc2_.name;
            }
            this._player_search_list.push(_loc2_);
         }
         this.playerSearchGrid.dataProvider = this._player_search_list;
      }
      
      private function _handlePlayerDetail(param1:Event) : void
      {
         if(this._playerDetailWindow)
         {
            this._playerDetailWindow.loadPlayerDetail(param1.target.bufferData[0]);
         }
      }
      
      private function _sendRankingSearch() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         this.searchAccordion.enabled = false;
         switch(this.rankingTabNavigator.selectedIndex)
         {
            case 0:
               _loc1_ = "rate";
               break;
            case 1:
               _loc1_ = "streak";
               break;
            case 2:
               _loc1_ = "percentage";
               break;
            case 3:
               _loc1_ = "wins";
               break;
            case 4:
               _loc1_ = "total";
               break;
            case 5:
               _loc1_ = "exp" + this.expRankingGroup.selectedValue;
         }
         _loc2_ = this.rankingCountryList.selectedIndex == 0?"*":String(this.rankingCountryList.selectedIndex);
         this._api.rankingSearch(_loc2_,_loc1_);
      }
      
      private function _handleRankingSearch(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:XML = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         this.searchAccordion.enabled = true;
         switch(String(param1.target.bufferXML.@item))
         {
            case "wins":
               this._ranking_wins_list = [];
               break;
            case "rate":
               this._ranking_rate_list = [];
               break;
            case "total":
               this._ranking_total_list = [];
               break;
            case "streak":
               this._ranking_streak_list = [];
               break;
            case "percentage":
               this._ranking_percentage_list = [];
               break;
            case "exp":
               this._ranking_exp_list = [];
         }
         _loc2_ = 0;
         for each(_loc3_ in param1.target.bufferXML.player)
         {
            _loc2_ = _loc2_ + 1;
            _loc4_ = {
               "number":_loc2_,
               "login":String(_loc3_.login),
               "name":String(_loc3_.name),
               "country_code":String(InfoFetcher.country_codes[parseInt(_loc3_.country_id) - 1] + 1000).substring(1),
               "country":(!!LanguageSelector.isJapanese()?InfoFetcher.country_names[InfoFetcher.country_codes[parseInt(_loc3_.country_id) - 1]]:InfoFetcher.country_names_en[InfoFetcher.country_codes[parseInt(_loc3_.country_id) - 1]]),
               "wins":parseInt(_loc3_.wins),
               "losses":parseInt(_loc3_.losses),
               "total":parseInt(_loc3_.wins) + parseInt(_loc3_.losses),
               "percentage":(100 * parseInt(_loc3_.wins) / Math.max(1,parseInt(_loc3_.wins) + parseInt(_loc3_.losses))).toFixed(1),
               "streak_best":parseInt(_loc3_.streak_best),
               "rate":parseInt(_loc3_.rate),
               "rank":InfoFetcher.makeRankFromRating(parseInt(_loc3_.rate)),
               "rank_exp":InfoFetcher.makeRank34FromExp(parseInt(_loc3_.rate))
            };
            _loc4_.flagURL = this.IMAGE_DIRECTORY + "flags_s/" + _loc4_.country_code + ".gif";
            _loc5_ = 0;
            while(_loc5_ < InfoFetcher.titleUser.length)
            {
               if(_loc4_.login == InfoFetcher.titleUser[_loc5_])
               {
                  if(InfoFetcher.titleName[_loc5_] != "*")
                  {
                     _loc4_.title = InfoFetcher.titleName[_loc5_];
                  }
                  break;
               }
               _loc5_++;
            }
            if(_loc4_.name.toLowerCase() == _loc4_.login)
            {
               _loc4_.login = _loc4_.name;
            }
            switch(String(param1.target.bufferXML.@item))
            {
               case "wins":
                  this._ranking_wins_list.push(_loc4_);
                  continue;
               case "rate":
                  this._ranking_rate_list.push(_loc4_);
                  continue;
               case "total":
                  this._ranking_total_list.push(_loc4_);
                  continue;
               case "streak":
                  this._ranking_streak_list.push(_loc4_);
                  continue;
               case "percentage":
                  this._ranking_percentage_list.push(_loc4_);
                  continue;
               case "exp":
                  this._ranking_exp_list.push(_loc4_);
                  continue;
               default:
                  continue;
            }
         }
         if(_loc2_ == 0)
         {
            Alert.show(LanguageSelector.EJ("Data not found.","データが見つかりません。"));
            return;
         }
         this.winRankingGrid.dataProvider = this._ranking_wins_list;
         this.totalRankingGrid.dataProvider = this._ranking_total_list;
         this.streakRankingGrid.dataProvider = this._ranking_streak_list;
         this.percentageRankingGrid.dataProvider = this._ranking_percentage_list;
         this.rateRankingGrid.dataProvider = this._ranking_rate_list;
         this.expRankingGrid.dataProvider = this._ranking_exp_list;
         this._rankingTabChange();
      }
      
      private function _handleRuleSelected(param1:GameRuleEvent) : void
      {
         this._so.data.rule_base = this._newGameWindow.timeSetting.selectedValue;
         this._so.data.rule_total = this._newGameWindow.nonrated_total.selectedIndex;
         this._so.data.rule_byoyomi = this._newGameWindow.nonrated_byoyomi.selectedIndex;
         this._so.data.rule_handicap = this._newGameWindow.nonrated_handicap.selectedIndex;
         this._so.data.rule_comment = this._newGameWindow.commentTextInput.text;
         if(param1.password != "")
         {
            this._so.data.rule_password = param1.password;
         }
         this._mileForFix = param1.usedMile;
         this._waiting = true;
         this._waitForGame(param1.total,param1.byoyomi,param1.handicap,param1.tournament,param1.side,param1.comment,param1.password);
         this.startButton.label = LanguageSelector.lan.stop;
         this.startButton.soundType = 2;
      }
      
      private function _handleOption(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         GameTimer.soundType = int(this._optionWindow.RadioGroup1.selectedValue);
         Byoyomi.setVoiceType(int(this._optionWindow.RadioGroup1.selectedValue));
         this.board.setPieceType(int(this._optionWindow.RadioGroup2.selectedValue),int(this._optionWindow.RadioGroup5.selectedValue));
         if(this._board_size_type != int(this._optionWindow.RadioGroup6.selectedValue))
         {
            this._board_size_type = int(this._optionWindow.RadioGroup6.selectedValue);
            if(this._board_size_type == 0)
            {
               this.board.setSizeFactor(1);
            }
            else if(this._board_size_type == 1)
            {
               this.board.setSizeFactor(1.5);
            }
            else if(this._board_size_type == 2)
            {
               this.board.setSizeFactor(2);
            }
            this._resizeBoardView();
         }
         this._end_sound_play = this._optionWindow.gameEndSoundCheckBox.selected;
         this._chat_sound1_play = this._optionWindow.chatSound1CheckBox.selected;
         this._chat_sound2_play = this._optionWindow.chatSound2CheckBox.selected;
         MyButton.soundOn = this._optionWindow.buttonSoundCheckBox.selected;
         this.board.hold_piece = this._optionWindow.grabPieceCheckBox.selected;
         this.board.highlight_movable = this._optionWindow.highlightMovableCheckBox.selected;
         _loc2_ = Movement.listType;
         Movement.listType = int(this._optionWindow.RadioGroup3.selectedValue);
         if(Movement.listType != _loc2_ && this.mainViewStack.selectedIndex == 2)
         {
            _loc3_ = this.kifuDataGrid.selectedIndex;
            this.kifuDataGrid.scrollToIndex(0);
            this.kifuDataGrid.dataProvider = this.kifuDataGrid.dataProvider;
            this.kifuDataGrid.selectedIndex = _loc3_;
            this.kifuDataGrid.callLater(this._scrollDownKifu);
         }
         this._pmAutoOpen = this._optionWindow.pmAutoOpenCheckBox.selected;
         this._accept_arrows = this._optionWindow.acceptArrowsCheckBox.selected;
         this._arrow_color = this._optionWindow.arrowColorPicker.selectedColor;
         this._nGamesAnalysis = int(this._optionWindow.RadioGroup4.selectedValue);
         this._so.data.optionTab = this._optionWindow.optionTab.selectedIndex;
         if(this._isDuringMyGame() && !this.board.is34())
         {
            if(this.board.piece_type >= 100 && (this.board.piece_type != this._prev_piece_type || !this._notify_blind) && this._optionWindow.notifyBlindCheckBox.selected)
            {
               if(this.board.piece_type == 100)
               {
                  this._sendAutoChat("#G011");
               }
               else if(this.board.piece_type == 101)
               {
                  this._sendAutoChat("#G012");
               }
               else if(this.board.piece_type == 102)
               {
                  this._sendAutoChat("#G013");
               }
            }
            else if(this.board.piece_type < 100 && this._prev_piece_type >= 100 && this._optionWindow.notifyBlindCheckBox.selected)
            {
               this._sendAutoChat("#G010");
            }
         }
         this._notify_blind = this._optionWindow.notifyBlindCheckBox.selected;
         this._prev_piece_type = this.board.piece_type;
         this._levelStudy = this._optionWindow.levelStudyCombo.selectedIndex;
         this._levelEnglish = this._optionWindow.levelEnglishCombo.selectedIndex;
      }
      
      private function _handleLoadOptions(param1:Event) : void
      {
         var _loc2_:Object = null;
         GameTimer.soundType = 2;
         Byoyomi.setVoiceType();
         this.board.piece_type = 0;
         this.board.piece_type34 = 1;
         this._board_size_type = 0;
         MyButton.soundOn = true;
         this._chat_sound1_play = true;
         this._chat_sound2_play = true;
         this._end_sound_play = true;
         this.board.hold_piece = true;
         this.board.highlight_movable = false;
         Movement.listType = Movement.LIST_JAPANESE;
         this._pmAutoOpen = false;
         this._accept_arrows = true;
         this._arrow_color = 52224;
         this._nGamesAnalysis = 50;
         this._levelStudy = 0;
         this._levelEnglish = 0;
         this._receive_kifu_comment = false;
         this._favorite_list = [];
         this._colleague_list = [];
         this._tournament_opponent_list = [];
         for each(_loc2_ in param1.target.bufferData)
         {
            switch(_loc2_.name)
            {
               case "timer_sound_type":
                  GameTimer.soundType = parseInt(_loc2_.toString());
                  Byoyomi.setVoiceType(parseInt(_loc2_.toString()));
                  continue;
               case "piece_type":
                  this.board.piece_type = parseInt(_loc2_.toString());
                  continue;
               case "piece_type_34":
                  this.board.piece_type34 = parseInt(_loc2_.toString());
                  continue;
               case "button_sound_play":
                  MyButton.soundOn = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "lobbychat_sound_play":
                  this._chat_sound1_play = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "gamechat_sound_play":
                  this._chat_sound2_play = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "end_sound_play":
                  this._end_sound_play = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "hold_piece":
                  this.board.hold_piece = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "highlight_movable":
                  this.board.highlight_movable = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "notation_style":
                  Movement.listType = parseInt(_loc2_.toString());
                  continue;
               case "pm_auto_open":
                  this._pmAutoOpen = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "accept_arrow":
                  this._accept_arrows = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "arrow_color":
                  this._arrow_color = parseInt(_loc2_.toString());
                  continue;
               case "history_length":
                  this._nGamesAnalysis = parseInt(_loc2_.toString());
                  continue;
               case "postgame_study_level":
                  this._levelStudy = parseInt(_loc2_.toString());
                  continue;
               case "english_level":
                  this._levelEnglish = parseInt(_loc2_.toString());
                  continue;
               case "favorite":
                  this._favorite_list.push(_loc2_.toString());
                  continue;
               case "member":
                  this._colleague_list.push(_loc2_.toString());
                  continue;
               case "opponent":
                  this._tournament_opponent_list.push(_loc2_.toString());
                  continue;
               case "receive_kifu_comment":
                  this._receive_kifu_comment = Boolean(parseInt(_loc2_.toString()));
                  continue;
               case "board_size":
                  this._board_size_type = parseInt(_loc2_.toString());
                  continue;
               default:
                  continue;
            }
         }
         this.board.setPieceType(this.board.piece_type,this.board.piece_type34);
         if(this._board_size_type)
         {
            if(this._board_size_type == 1)
            {
               this.board.setSizeFactor(1.5);
            }
            else if(this._board_size_type == 2)
            {
               this.board.setSizeFactor(2);
            }
            this._resizeBoardView();
         }
      }
      
      private function _handleSendPrivateChat(param1:String) : Function
      {
         var name:String = param1;
         return function(param1:FlexEvent):void
         {
            if(_users[name].checkMobile())
            {
               return;
            }
            _sendPrivateChat(name,param1.target.text);
            param1.target.text = "";
         };
      }
      
      private function _handleKeepAlive(param1:Event) : void
      {
         this.refreshButton.enabled = true;
      }
      
      private function _handleKeepAliveComplete(param1:Event) : void
      {
         var _loc2_:* = false;
         _loc2_ = this._keepAliveTimer.repeatCount == 1;
         if(_loc2_)
         {
            this._keepAliveTimer.delay = 30000;
            this._keepAliveTimer.repeatCount = 3;
         }
         this._refresh();
         if(_loc2_)
         {
            this.refreshButton.enabled = true;
         }
      }
      
      private function _idleClear(param1:Boolean) : Function
      {
         var mouse:Boolean = param1;
         return function(param1:Event):void
         {
            if(_leaving)
            {
               return;
            }
            if(mouse)
            {
               _mouseX = MouseEvent(param1).stageX;
               _mouseY = MouseEvent(param1).stageY;
            }
            _idleTimer.reset();
            _idleTimer.start();
            _client.idle(false);
         };
      }
      
      private function _handleIdleTimer(param1:TimerEvent) : void
      {
         this._client.idle(true);
      }
      
      private function _handleHourMileTimer(param1:TimerEvent) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this._user_list)
         {
            if(_loc2_.name.toLowerCase() == this.login_name.toLowerCase())
            {
               if(_loc2_.name == this.login_name)
               {
                  this._client.mileage([5,8,10,10,12,12,12,12][param1.target.currentCount - 1]);
               }
               return;
            }
         }
      }
      
      private function _handleChallengeCancelTimer(param1:TimerEvent) : void
      {
         if(this._challenging)
         {
            this._challenging = false;
            this._writeUserMessage(LanguageSelector.EJ("Communication could not be established with this opponent. The challenge is canceled.\n","相手との通信が確認できないため挑戦をキャンセルします。\n"),1,"#008800",true);
            this._client.decline("C006");
         }
      }
      
      private function _handleAcceptedCancelTimer(param1:TimerEvent) : void
      {
         if(this._gameAccepted)
         {
            this._gameAccepted = false;
         }
      }
      
      private function _handlePmRingTimer(param1:TimerEvent) : void
      {
         this._pmRingBuffer = [];
      }
      
      private function _writeUserMessage(param1:String, param2:int, param3:String, param4:Boolean = false) : void
      {
         var _loc5_:Array = null;
         param1 = param1.replace(/</g,"&lt;");
         param1 = param1.replace(/&lt;a\shref=\"event:/g,"<a href=\"event:");
         param1 = param1.replace(/&lt;\/a>/g,"</a>");
         param1 = param1.replace(/(https?\:\/\/[^\"^\s^\\]+)/g,"<u><a href=\"$1\" target=\"_blank\">$1</a></u>");
         param1 = "<font color=\'" + param3 + "\'>" + (!!param4?"<b>":"") + param1 + (!!param4?"</b>":"") + "</font>";
         param1 = param1.replace(/\\n/g,"\n     ");
         switch(param2)
         {
            case 1:
               this._userMessageScrollPos1 = this.userMessage1.verticalScrollPosition;
               this.userMessage1.htmlText = this.userMessage1.htmlText + param1;
               this.userMessage1.callLater(this._scrollDown1);
               break;
            case 2:
               this._userMessageScrollPos2 = this.userMessage2.verticalScrollPosition;
               this.userMessage2.htmlText = this.userMessage2.htmlText + param1;
               this.userMessage2.callLater(this._scrollDown2);
         }
      }
      
      private function _handleTextClick(param1:TextEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:URLLoader = null;
         if(_loc2_ = param1.text.match(/^name,(.+)$/))
         {
            this._openPlayerInfo(_loc2_[1]);
            if(this.mainViewStack.selectedIndex != 1)
            {
               return;
            }
            _loc3_ = 0;
            while(_loc3_ < this._user_list.length)
            {
               if(this._user_list[_loc3_].name == _loc2_[1])
               {
                  this.userListGrid.selectedIndex = _loc3_;
                  this.userListGrid.scrollToIndex(_loc3_);
                  break;
               }
               _loc3_++;
            }
         }
         else if(_loc2_ = param1.text.match(/^game,(.+)$/))
         {
            if(this._game_name)
            {
               Alert.show(LanguageSelector.EJ("You are still in the game room, and only seeing the Lobby. Go back to the game room and press Exit button to enter other games.","あなたはまだ対局室内にいます。(ロビー確認用のボタンでロビーを覗いています)\n他の対局室に入るには、現在の対局室に戻り、退室ボタンを押して下さい。"),"",4,this.gameListGrid);
               return;
            }
            this._watch_game = null;
            for each(_loc4_ in this._games)
            {
               if(_loc4_.id == _loc2_[1])
               {
                  this._watch_game = _loc4_;
                  break;
               }
            }
            if(this._watch_game)
            {
               if(this._watch_game.password != "" && !this._watch_game.isStudyHost(this.login_name) && !InfoFetcher.isAdminLv1(this.login_name))
               {
                  this._openInputDialog(LanguageSelector.lan.private_room,LanguageSelector.lan.enter_pass,this._enterPrivateRoom,this.gameListGrid);
               }
               else
               {
                  this._execute_watch();
               }
            }
         }
         else if(_loc2_ = param1.text.match(/^(good|bad),(.+)$/))
         {
            if(_loc2_[1] == "good")
            {
               _loc5_ = true;
            }
            else if(_loc2_[1] == "bad")
            {
               _loc5_ = false;
            }
            _loc6_ = {
               "like":_loc5_,
               "name":this.login_name.toLowerCase(),
               "opponent":_loc2_[2]
            };
            this._api.evaluate(_loc6_);
         }
         else if(param1.text.match(/^mile/))
         {
            navigateToURL(new URLRequest("https://81dojo.com/documents/" + LanguageSelector.EJ("81Dojo_Mileage","81%E9%81%93%E5%A0%B4%E3%83%9E%E3%82%A4%E3%83%AC%E3%83%BC%E3%82%B8")));
         }
         else if(_loc2_ = param1.text.match(/^allow,(.+)$/))
         {
            this._client.privateChat(_loc2_[1],"[##VOICE]ALLOW");
         }
         else if(_loc2_ = param1.text.match(/^survey,(.+)$/))
         {
            if(this._users[this.login_name].isProvisional)
            {
               Alert.show("レート確定後に回答をお願い致します。","",4);
               return;
            }
            _loc7_ = new URLLoader();
            _loc7_.load(new URLRequest("https://81dojo.com/dojo/users/rank_survey.php?name=" + this.login_name + "&games=" + String(this._users[this.login_name].wins + this._users[this.login_name].losses) + "&rate=" + String(this._users[this.login_name].rating) + "&rank=" + _loc2_[1]));
            Alert.show("ご協力有難うございます。\n(繰り返し回答された場合は、最も新しい回答のみを参考とさせて頂きます。)","回答を受け付けました",4);
         }
      }
      
      private function _handleEvaluated(param1:Event) : void
      {
         Alert.show(LanguageSelector.EJ("Evaluation received. (Only your last evaluation is valid　for the same user.)","評価を受け付けました。(同一ユーザに対しては最新の評価のみ有効となります。)"),"",4);
      }
      
      private function _interpretCommunicationCode(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean) : void
      {
         this._writeUserMessage(param1 + LanguageSelector.lan[param2] + "\n",param3,"#008800",param4);
         if(param5 && this._chat_sound2_play)
         {
            this._sound_chat2.play();
         }
      }
      
      private function _imgUserMessage(param1:String, param2:int) : void
      {
         switch(param2)
         {
            case 1:
               this.userMessage1.htmlText = this.userMessage1.htmlText + ("<img src=\"" + param1 + "\" align=\"right\">");
               break;
            case 2:
               this.userMessage2.htmlText = this.userMessage2.htmlText + ("<img src=\"" + param1 + "\" align=\"right\">");
         }
      }
      
      private function _writePmLog(param1:String, param2:String, param3:String, param4:Boolean = false) : void
      {
         var _loc5_:Array = null;
         param2 = param2.replace(/</g,"&lt;");
         if(_loc5_ = param2.match(/(https?\:\/\/[^\"^\s]+)/))
         {
            param2 = param2.replace(/https?\:\/\/[^\"^\s]+/,"<u><a href=\"" + _loc5_[1] + "\" target=\"_blank\">" + _loc5_[1] + "</a></u>");
         }
         param2 = "<font color=\'" + param3 + "\'>" + (!!param4?"<b>":"") + param2 + (!!param4?"</b>":"") + "</font>";
         if(!this._pmLog[param1])
         {
            this._pmLog[param1] = "";
         }
         this._pmLog[param1] = this._pmLog[param1] + (param2 + "\n");
      }
      
      private function _scrollDown1() : void
      {
         if(this._chat_auto_scroll1)
         {
            this.userMessage1.verticalScrollPosition = this.userMessage1.maxVerticalScrollPosition;
         }
         else
         {
            this.userMessage1.verticalScrollPosition = this._userMessageScrollPos1;
         }
      }
      
      private function _scrollDown2() : void
      {
         if(this._chat_auto_scroll2)
         {
            this.userMessage2.verticalScrollPosition = this.userMessage2.maxVerticalScrollPosition;
         }
         else
         {
            this.userMessage2.verticalScrollPosition = this._userMessageScrollPos2;
         }
      }
      
      private function _toggleAutoScroll1() : void
      {
         this._chat_auto_scroll1 = this.userMessage1.verticalScrollPosition >= this.userMessage1.maxVerticalScrollPosition - 2;
      }
      
      private function _toggleAutoScroll2() : void
      {
         this._chat_auto_scroll2 = this.userMessage2.verticalScrollPosition >= this.userMessage2.maxVerticalScrollPosition - 2;
      }
      
      private function _playerMove(param1:Point, param2:Point, param3:Boolean) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc4_ = this.board.position.generateMovementFromCoordinates(param1,param2,param3).toCSA();
         if(!this.board.onListen || this.board.onListen && this.board.isSubHost)
         {
            _loc5_ = this.kifuDataGrid.selectedIndex;
            if(this.kifuDataGrid.dataProvider.length > _loc5_ + 1 && this.kifuDataGrid.dataProvider[_loc5_ + 1].replayable() && this.kifuDataGrid.dataProvider[_loc5_ + 1].toCSA() == _loc4_)
            {
               this.replayByButton(1);
               if(this.board.isStudyHost)
               {
                  this.board.playOnlyPieceSoundForReplay(this.kifuDataGrid.dataProvider[_loc5_ + 1]);
               }
               return;
            }
            this.board.clearArrows(Board.ARROWS_SELF);
            this.board.cancelSquareSelect();
            if(this.board.isStudyHost || this.board.onListen && this.board.isSubHost)
            {
               if(!this.kifuDataGrid.selectedItem.branch)
               {
                  this._writeUserMessage(this.login_name + LanguageSelector.EJ(": Studying a branch from move #" + _loc5_ + "\n",": " + _loc5_ + "手目からの分岐手順を検討\n"),2,"#008800");
               }
            }
            if(this.board.kifu_list_self.length == 0)
            {
               _loc6_ = 0;
               while(_loc6_ <= _loc5_)
               {
                  this.board.kifu_list_self.push(this.board.kifu_list[_loc6_]);
                  _loc6_++;
               }
            }
            while(this.board.kifu_list_self.length - 1 > _loc5_)
            {
               this.board.kifu_list_self.pop();
            }
            if(this.board.isStudyHost)
            {
               this.board.makeMove(_loc4_ + ",T0",false,true);
            }
            else
            {
               this.board.makeMove(_loc4_ + ",T0",false,false);
            }
            this.kifuDataGrid.dataProvider = this.board.kifu_list_self;
            this.kifuDataGrid.selectedIndex = this.board.kifu_list_self.length - 1;
            this.kifuDataGrid.scrollToIndex(this.board.kifu_list_self.length - 1);
            if(this.board.isStudyHost || this.board.onListen && this.board.isSubHost)
            {
               this._sendStudy(false);
            }
         }
         else
         {
            this._client.move(_loc4_);
            if(this.board.since_last_move > 0)
            {
               this.board.timers[this.board.my_turn == this.board.last_pos.turn?0:1].accumulateTime(-this.board.since_last_move);
               this.board.since_last_move = 0;
            }
            this.board.makeMove(_loc4_ + ",T0",true,true);
            this._myMoveSent = true;
            this._myMoveSentTimer.reset();
            this._myMoveSentTimer.start();
         }
         this.board.checkIllegal();
      }
      
      private function _handleMyMoveSentTimer(param1:TimerEvent) : void
      {
         if(param1.target.currentCount == 1)
         {
            this._writeUserMessage(LanguageSelector.EJ("Your connection seems unstable!\n","WARNING: 接続が不安定になっています\n"),2,"#FF0000",true);
         }
         else if(param1.target.currentCount == 2)
         {
            this._client.logout();
         }
      }
      
      private function _addMyArrow(param1:int, param2:Point, param3:Point) : void
      {
         if(this._isGuest)
         {
            return;
         }
         if(this.board.isStudyHost || this.board.onListen)
         {
            this._client.gameChat(this._game_name,"[##ARROW]" + param1 + "," + param2.x + "," + param2.y + "," + param3.x + "," + param3.y + ",0x" + this._arrow_color.toString(16));
         }
         else
         {
            this.board.addArrow(param1,param2,param3,this._arrow_color,"",Board.ARROWS_SELF,true);
         }
      }
      
      private function _toggleHostStatus(param1:Boolean) : void
      {
         if(param1)
         {
            this.board.isStudyHost = true;
            this.board.isSubHost = false;
            this._writeUserMessage(LanguageSelector.lan.msg_host + "\n",2,"#008800",true);
            this.board.onListen = false;
            this.radioKifuReplay.selected = true;
            this.radioKifuListen.enabled = false;
            this._switchListenColor(false);
            if(this.board.isPlayer)
            {
               this.giveHostButton.enabled = true;
            }
            this._sendStudy(false);
         }
         else
         {
            this.board.isStudyHost = false;
            this.board.isSubHost = true;
            this._writeUserMessage(LanguageSelector.lan.msg_subhost + "\n",2,"#008800",true);
            this.radioKifuListen.selected = true;
            this.radioKifuListen.enabled = true;
            this.board.onListen = true;
            this.giveHostButton.enabled = false;
            this._switchListenColor(true);
         }
      }
      
      private function _sendStudy(param1:Boolean, param2:String = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         _loc3_ = "";
         _loc4_ = this.kifuDataGrid.selectedIndex;
         while(_loc4_ >= 0)
         {
            if(this.kifuDataGrid.dataProvider[_loc4_].branch)
            {
               _loc3_ = "/" + this.kifuDataGrid.dataProvider[_loc4_].toCSA() + _loc3_;
               _loc4_--;
               continue;
            }
            _loc3_ = _loc4_ + _loc3_;
            break;
         }
         if(!_loc3_.match(/\//))
         {
            _loc3_ = _loc3_ + "/*";
         }
         _loc3_ = "[##STUDY]" + _loc3_;
         if(param2)
         {
            this._client.privateChat(param2,_loc3_);
         }
         else if(param1)
         {
            if(!this._sendStudyTimer.running)
            {
               this._sendStudyTimer.reset();
               this._sendStudyTimer.start();
            }
            this._sendStudyText = _loc3_;
         }
         else
         {
            this._sendStudyTimer.stop();
            this._client.gameChat(this._game_name,_loc3_);
         }
      }
      
      private function _handleSendStudyTimer(param1:TimerEvent) : void
      {
         if(this._game_name)
         {
            this._client.gameChat(this._game_name,this._sendStudyText);
         }
      }
      
      private function _checkRelaySwitch() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         if((this.board.kifu_list.length + 10) % 20 == 0)
         {
            _loc1_ = "Black";
            _loc2_ = (this.board.kifu_list.length + 10) / 20;
         }
         else if((this.board.kifu_list.length - 1) % 20 == 0)
         {
            _loc1_ = "White";
            _loc2_ = (this.board.kifu_list.length - 1) / 20;
         }
         else
         {
            return;
         }
         if(!this.board.kifu_list[this.board.kifu_list.length - 1].replayable())
         {
            return;
         }
         this._writeUserMessage("### " + _loc1_ + LanguageSelector.EJ(" team, switch players in 60 seconds ###\n","チームは対局者を交代して下さい。(60秒以内) ###\n"),2,"#FF0000",true);
         switch(_loc2_ % 4)
         {
            case 1:
               this._writeUserMessage("   (1st player -> 2nd player)\n",2,"#FF0000");
               break;
            case 2:
               this._writeUserMessage("   (2nd player -> 3rd player)\n",2,"#FF0000");
               break;
            case 3:
               this._writeUserMessage("   (3rd player -> 4th player)\n",2,"#FF0000");
               break;
            case 0:
               this._writeUserMessage("   (4th player -> 1st player)\n",2,"#FF0000");
         }
         this._sound_chat3.play();
      }
      
      private function _checkTimeout(param1:int) : void
      {
         if(this.board.last_pos.turn == this.board.my_turn)
         {
            this.board.clientTimeout();
            this._client.checkTimeout();
         }
         else if(!this._disconnectAlertWindow)
         {
            if(param1 == -90)
            {
               this._client.checkTimeout();
            }
         }
      }
      
      private function _checkTimerLag() : void
      {
         this._writeUserMessage(LanguageSelector.lan.msg_lag + "\n",2,"#FF0000",true);
         this._sound_chat3.play();
      }
      
      private function _guestGamesExpired() : Boolean
      {
         var _loc1_:Date = null;
         if(this.serverName == "MOON")
         {
            return false;
         }
         _loc1_ = new Date();
         if(this._so.data.guest_game_period && this._so.data.guest_game_period == _loc1_.toDateString() && this._so.data.guest_game_num >= 3)
         {
            return true;
         }
         return false;
      }
      
      private function _sendPrivateChat(param1:String, param2:String) : void
      {
         if(!this._isDuringMyGame())
         {
            if(this._users[param1] && this._users[param1].status == "game")
            {
               if(this._game_name && this._monitoring && param1 == this.board.playerInfos[0].name)
               {
                  param2 = "[##URGENT]" + param2;
                  this._client.privateChat(this.board.playerInfos[1].name,"[auto-PM] #P000");
               }
               else if(this._game_name && this._monitoring && param1 == this.board.playerInfos[1].name)
               {
                  param2 = "[##URGENT]" + param2;
                  this._client.privateChat(this.board.playerInfos[0].name,"[auto-PM] #P000");
               }
               else
               {
                  Alert.show(LanguageSelector.EJ("The user is now playing. The message is saved and will be sent when the game has ended.","相手が対局中です。メッセージは保存され、対局終了後に送信されます。"));
               }
            }
            this._client.privateChat(param1,param2);
            param2 = param2.replace(/\[\#\#URGENT\]/,"");
            this._writePmLog(param1,param2,"#0033DD");
            if(this._playerInfoWindows[param1])
            {
               this._playerInfoWindows[param1].pmText = this._pmLog[param1];
               this._playerInfoWindows[param1].pmCheckBox.selected = true;
               this._playerInfoWindows[param1].togglePM();
               this._playerInfoWindows[param1].callLater(this._playerInfoWindows[param1].scrollDown);
               if(this._chat_sound1_play || this._chat_sound2_play)
               {
                  this._sound_chat1.play();
               }
            }
            else if(this.mainViewStack.selectedIndex == 1)
            {
               this._writeUserMessage("PM To " + param1 + ": " + param2 + "\n",1,"#0033DD");
               if(this._chat_sound1_play)
               {
                  this._sound_chat1.play();
               }
            }
            else
            {
               this._writeUserMessage("PM To " + param1 + ": " + param2 + "\n",2,"#0033DD");
               if(this._chat_sound2_play)
               {
                  this._sound_chat2.play();
               }
            }
         }
      }
      
      private function _sendAutoChat(param1:String) : void
      {
         if(this._game_name)
         {
            this._client.gameChat(this._game_name,"[auto-chat] " + param1);
         }
         else
         {
            this._client.chat("[auto-chat] " + param1);
         }
      }
      
      private function _updateList(param1:DataGrid, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(!param1.dataProvider)
         {
            return;
         }
         _loc3_ = param1.verticalScrollPosition;
         param1.dataProvider.refresh();
         param1.verticalScrollPosition = _loc3_;
      }
      
      private function _name2link(param1:String) : String
      {
         return "<a href=\"event:name," + param1 + "\">" + param1 + "</a>";
      }
      
      private function _isDuringMyGame() : Boolean
      {
         return this.board.inGame;
      }
      
      private function _handleVoiceEvent(param1:ServerMessageEvent) : void
      {
         var _loc2_:Array = null;
         if(_loc2_ = param1.message.match(/^([A-Z]\d{3}),(.*)/))
         {
            this._interpretCommunicationCode(_loc2_[2],_loc2_[1],2,true,true);
         }
         else if(_loc2_ = param1.message.match(/^@(.+),(.+)/))
         {
            this._client.privateChat(_loc2_[1],"[##VOICE]" + _loc2_[2]);
         }
         else if(_loc2_ = param1.message.match(/^DEBUG,(.+)$/))
         {
            this._writeUserMessage(_loc2_[1] + "\n",2,"#000000");
         }
         else if(this._game_name)
         {
            this._client.gameChat(this._game_name,"[##VOICE]" + param1.message);
         }
      }
      
      private function _handleVolumeEvent(param1:ServerMessageEvent) : void
      {
         this.voiceBar.width = this.chatMessage2.width * parseInt(param1.message) / 100;
      }
      
      private function _clearAllTags() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this._users)
         {
            _loc1_.clearTags();
         }
      }
      
      private function _updateStatusMarks(param1:String = "") : void
      {
         if(!this._game_name)
         {
            return;
         }
         this.watcherListGrid.dataProvider = this._watcher_list;
         if(this.board.playerInfos[0] == null)
         {
            return;
         }
         if(param1 == "")
         {
            if(this._users[this.board.playerInfos[0].name])
            {
               this.board.updateStatusMark(this._users[this.board.playerInfos[0].name]);
            }
            if(this._users[this.board.playerInfos[1].name])
            {
               this.board.updateStatusMark(this._users[this.board.playerInfos[1].name]);
            }
         }
         else if(this._users[param1])
         {
            this.board.updateStatusMark(this._users[param1]);
         }
      }
      
      private function _openInputDialog(param1:String, param2:String, param3:Function, param4:DisplayObject) : void
      {
         var _loc5_:InputDialog = null;
         _loc5_ = InputDialog(PopUpManager.createPopUp(param4,InputDialog,true));
         PopUpManager.centerPopUp(_loc5_);
         _loc5_.headerTitle = param1;
         _loc5_.caption = param2;
         _loc5_.addEventListener("enter",param3);
      }
      
      private function _EightyOneShogi_RadioButtonGroup2_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = null;
         _loc1_ = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__RadioGroupKifu_change);
         _loc1_.initialized(this,"RadioGroupKifu");
         this.RadioGroupKifu = _loc1_;
         BindingManager.executeBindings(this,"RadioGroupKifu",this.RadioGroupKifu);
         return _loc1_;
      }
      
      public function __RadioGroupKifu_change(param1:Event) : void
      {
         this._toggleListen();
      }
      
      private function _EightyOneShogi_RadioButtonGroup3_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = null;
         _loc1_ = new RadioButtonGroup();
         _loc1_.initialized(this,"expRankingGroup");
         this.expRankingGroup = _loc1_;
         BindingManager.executeBindings(this,"expRankingGroup",this.expRankingGroup);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory2_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass1;
         _loc1_.properties = {"outerDocument":this};
         this.gameListBlackRenderer = _loc1_;
         BindingManager.executeBindings(this,"gameListBlackRenderer",this.gameListBlackRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory4_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass3;
         _loc1_.properties = {"outerDocument":this};
         this.gameListStatusRenderer = _loc1_;
         BindingManager.executeBindings(this,"gameListStatusRenderer",this.gameListStatusRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory5_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass4;
         _loc1_.properties = {"outerDocument":this};
         this.gameListWatchersRenderer = _loc1_;
         BindingManager.executeBindings(this,"gameListWatchersRenderer",this.gameListWatchersRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory3_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass2;
         _loc1_.properties = {"outerDocument":this};
         this.gameListWhiteRenderer = _loc1_;
         BindingManager.executeBindings(this,"gameListWhiteRenderer",this.gameListWhiteRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_Fade2_i() : Fade
      {
         var _loc1_:Fade = null;
         _loc1_ = new Fade();
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 0;
         _loc1_.duration = 1500;
         _loc1_.addEventListener("effectEnd",this.__hideLogin_effectEnd);
         this.hideLogin = _loc1_;
         BindingManager.executeBindings(this,"hideLogin",this.hideLogin);
         return _loc1_;
      }
      
      public function __hideLogin_effectEnd(param1:EffectEvent) : void
      {
         this.mainViewStack.selectedIndex = 1;
      }
      
      private function _EightyOneShogi_ClassFactory11_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass10;
         _loc1_.properties = {"outerDocument":this};
         this.kifuSearchBlackRenderer = _loc1_;
         BindingManager.executeBindings(this,"kifuSearchBlackRenderer",this.kifuSearchBlackRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory12_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass11;
         _loc1_.properties = {"outerDocument":this};
         this.kifuSearchWhiteRenderer = _loc1_;
         BindingManager.executeBindings(this,"kifuSearchWhiteRenderer",this.kifuSearchWhiteRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = null;
         _loc1_ = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__loginTypeGroup_change);
         _loc1_.initialized(this,"loginTypeGroup");
         this.loginTypeGroup = _loc1_;
         BindingManager.executeBindings(this,"loginTypeGroup",this.loginTypeGroup);
         return _loc1_;
      }
      
      public function __loginTypeGroup_change(param1:Event) : void
      {
         this._toggleLoginType();
      }
      
      private function _EightyOneShogi_ClassFactory7_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass6;
         _loc1_.properties = {"outerDocument":this};
         this.playerListCountryRenderer = _loc1_;
         BindingManager.executeBindings(this,"playerListCountryRenderer",this.playerListCountryRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory8_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass7;
         _loc1_.properties = {"outerDocument":this};
         this.playerListFlagAndNameRenderer = _loc1_;
         BindingManager.executeBindings(this,"playerListFlagAndNameRenderer",this.playerListFlagAndNameRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory6_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass5;
         _loc1_.properties = {"outerDocument":this};
         this.playerListNameRenderer = _loc1_;
         BindingManager.executeBindings(this,"playerListNameRenderer",this.playerListNameRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory10_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass9;
         _loc1_.properties = {"outerDocument":this};
         this.rankRenderer = _loc1_;
         BindingManager.executeBindings(this,"rankRenderer",this.rankRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.serverListRenderer = _loc1_;
         BindingManager.executeBindings(this,"serverListRenderer",this.serverListRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_Fade1_i() : Fade
      {
         var _loc1_:Fade = null;
         _loc1_ = new Fade();
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         _loc1_.duration = 2000;
         this.showLogin = _loc1_;
         BindingManager.executeBindings(this,"showLogin",this.showLogin);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory9_i() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = EightyOneShogiInnerClass8;
         _loc1_.properties = {"outerDocument":this};
         this.waiterListNameRenderer = _loc1_;
         BindingManager.executeBindings(this,"waiterListNameRenderer",this.waiterListNameRenderer);
         return _loc1_;
      }
      
      private function _EightyOneShogi_BasicLayout1_c() : BasicLayout
      {
         var _loc1_:BasicLayout = null;
         _loc1_ = new BasicLayout();
         return _loc1_;
      }
      
      private function _EightyOneShogi_Array1_c() : Array
      {
         var _loc1_:Array = null;
         _loc1_ = [this._EightyOneShogi_BitmapImage1_i(),this._EightyOneShogi_ViewStack1_i()];
         return _loc1_;
      }
      
      private function _EightyOneShogi_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = null;
         _loc1_ = new BitmapImage();
         _loc1_.source = this._embed_mxml_images_back_tile4_png_1668398100;
         _loc1_.fillMode = "repeat";
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.initialized(this,"backgroundBitmap");
         this.backgroundBitmap = _loc1_;
         BindingManager.executeBindings(this,"backgroundBitmap",this.backgroundBitmap);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ViewStack1_i() : ViewStack
      {
         var temp:ViewStack = null;
         temp = new ViewStack();
         temp.creationPolicy = "all";
         temp.percentWidth = 100;
         temp.percentHeight = 100;
         temp.id = "mainViewStack";
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.mx_internal::_documentDescriptor = new UIComponentDescriptor({
            "type":ViewStack,
            "id":"mainViewStack",
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"_EightyOneShogi_VBox1",
                  "stylesFactory":function():void
                  {
                     this.backgroundImage = "https://81dojo.com/dojo/images/login_background.jpg";
                     this.backgroundSize = "100%";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":VBox,
                        "id":"loginBox",
                        "stylesFactory":function():void
                        {
                           this.horizontalAlign = "center";
                           this.verticalAlign = "middle";
                           this.fontSize = 11;
                           this.verticalGap = 4;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "height":690,
                              "alpha":0,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":HBox,
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalAlign = "right";
                                    this.horizontalGap = 5;
                                    this.paddingBottom = 5;
                                    this.paddingTop = 0;
                                    this.paddingRight = 0;
                                    this.paddingLeft = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":672,
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_EightyOneShogi_Label1",
                                          "stylesFactory":function():void
                                          {
                                             this.fontSize = 12;
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":LanguageSelector,
                                          "id":"languageSelector"
                                       }),new UIComponentDescriptor({
                                          "type":Image,
                                          "propertiesFactory":function():Object
                                          {
                                             return {"source":_embed_mxml_images_icon_mute_png_2038353292};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":CheckBox,
                                          "id":"noMusicCheckBox",
                                          "events":{"change":"__noMusicCheckBox_change"}
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"titleBanner"
                              }),new UIComponentDescriptor({
                                 "type":HBox,
                                 "stylesFactory":function():void
                                 {
                                    this.horizontalGap = 60;
                                    this.paddingTop = 50;
                                    this.paddingBottom = 15;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":Form,
                                       "stylesFactory":function():void
                                       {
                                          this.paddingTop = 0;
                                          this.paddingBottom = 0;
                                          this.verticalGap = 4;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":FormItem,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":HBox,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"childDescriptors":[new UIComponentDescriptor({
                                                         "type":RadioButton,
                                                         "id":"loginTypeRegistered",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "groupName":"loginTypeGroup",
                                                               "selected":true
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":RadioButton,
                                                         "id":"loginTypeGuest",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"groupName":"loginTypeGroup"};
                                                         }
                                                      })]};
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FormItem,
                                             "id":"_EightyOneShogi_FormItem2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":TextInput,
                                                   "id":"loginname",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"width":150};
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FormItem,
                                             "id":"_EightyOneShogi_FormItem3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":TextInput,
                                                   "id":"password",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "width":150,
                                                         "displayAsPassword":true
                                                      };
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FormItem,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":"",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"savelogin",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"selected":false};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FormItem,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":MyButton,
                                                   "id":"loginButton",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":400,
                                                         "enabled":false
                                                      };
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FormItem,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"loginMessage",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.paddingTop = -2;
                                                      this.paddingBottom = 0;
                                                      this.color = 6723874;
                                                      this.fontSize = 10;
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"errorMessage",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.paddingTop = -2;
                                                      this.paddingBottom = 0;
                                                      this.color = 15628083;
                                                      this.fontSize = 10;
                                                   }
                                                })]};
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":DataGrid,
                                       "id":"serverListGrid",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "sortableColumns":false,
                                             "height":155,
                                             "columns":[_EightyOneShogi_DataGridColumn1_i(),_EightyOneShogi_DataGridColumn2_i(),_EightyOneShogi_DataGridColumn3_i()],
                                             "filters":[_EightyOneShogi_DropShadowFilter1_c()]
                                          };
                                       }
                                    })]};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":VBox,
                                 "stylesFactory":function():void
                                 {
                                    this.verticalGap = 0;
                                    this.horizontalAlign = "center";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"versionLabel",
                                       "events":{"click":"__versionLabel_click"}
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 13;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"text":"(c) Programmer: Kota / Hidetchi"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"text":"powered by shogi-server, and"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___EightyOneShogi_LinkButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = -2;
                                                this.paddingBottom = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"label":"shineleckoma - しんえれ外部駒"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___EightyOneShogi_LinkButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = -2;
                                                this.paddingBottom = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"label":"piecodesign"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___EightyOneShogi_LinkButton3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = -2;
                                                this.paddingBottom = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"label":"H/MIX GALLERY"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___EightyOneShogi_LinkButton4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = -2;
                                                this.paddingBottom = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"label":"otosozai.com"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "events":{"click":"___EightyOneShogi_LinkButton5_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = -2;
                                                this.paddingBottom = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"label":"National flag and Road sign Mt."};
                                             }
                                          })]};
                                       }
                                    })]};
                                 }
                              })]
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"lobbyBox",
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                     this.fontSize = 11;
                     this.verticalGap = 10;
                     this.verticalAlign = "top";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.backgroundColor = 7851059;
                              this.verticalAlign = "middle";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "id":"lobbyMenuBar",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"myMenuBar",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"refreshButton",
                                             "events":{"click":"__refreshButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_refresh_png_463066594;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"startButton",
                                             "events":{"click":"__startButton_click"}
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"optionButton1",
                                             "events":{"click":"__optionButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_gear_png_520012672;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"enabled":true};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"webSystemButton",
                                             "events":{"click":"__webSystemButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_web2_png_107132642;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"logoutButton",
                                             "events":{"click":"__logoutButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {"soundType":1};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"adminButton",
                                             "events":{"click":"__adminButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":"",
                                                   "includeInLayout":false,
                                                   "visible":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalAlign = "right";
                                       this.verticalAlign = "middle";
                                       this.paddingRight = 5;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"showBots",
                                             "events":{"change":"__showBots_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":21,
                                                   "selected":true,
                                                   "visible":false,
                                                   "includeInLayout":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"serverImage"
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalGap = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"serverLabel",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.paddingBottom = -3;
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_EightyOneShogi_Label8",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.paddingTop = -3;
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"source":_embed_mxml_images_favicon_gif_644301900};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"backToGameButton",
                                             "events":{"click":"__backToGameButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderColor = 16746496;
                                                this.themeColor = 16746496;
                                                this.icon = _embed_mxml_images_icon_right_png_1728675412;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":35,
                                                   "visible":false,
                                                   "includeInLayout":false,
                                                   "labelPlacement":"left"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"lobbyHBox",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 13;
                              this.horizontalAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentHeight":100,
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VDividedBox,
                                    "id":"lobbyPane_L",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "liveDragging":true,
                                          "percentHeight":100,
                                          "width":369,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"userListGrid",
                                             "events":{
                                                "change":"__userListGrid_change",
                                                "doubleClick":"__userListGrid_doubleClick",
                                                "click":"__userListGrid_click"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = 0;
                                                this.paddingBottom = 0;
                                                this.verticalAlign = "middle";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "headerHeight":21,
                                                   "rowHeight":20,
                                                   "doubleClickEnabled":true,
                                                   "columns":[_EightyOneShogi_DataGridColumn4_i(),_EightyOneShogi_DataGridColumn5_i(),_EightyOneShogi_DataGridColumn6_i(),_EightyOneShogi_DataGridColumn7_i(),_EightyOneShogi_DataGridColumn8_i(),_EightyOneShogi_DataGridColumn9_i(),_EightyOneShogi_DataGridColumn10_i(),_EightyOneShogi_DataGridColumn11_i()]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"waiterListGrid",
                                             "events":{
                                                "change":"__waiterListGrid_change",
                                                "doubleClick":"__waiterListGrid_doubleClick",
                                                "click":"__waiterListGrid_click"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = 0;
                                                this.paddingBottom = 0;
                                                this.verticalAlign = "middle";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "headerHeight":21,
                                                   "rowHeight":20,
                                                   "doubleClickEnabled":true,
                                                   "verticalScrollPolicy":"on",
                                                   "columns":[_EightyOneShogi_DataGridColumn12_i(),_EightyOneShogi_DataGridColumn13_i(),_EightyOneShogi_DataGridColumn14_i(),_EightyOneShogi_DataGridColumn15_c(),_EightyOneShogi_DataGridColumn16_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VDividedBox,
                                    "id":"lobbyPane_R",
                                    "events":{"dividerRelease":"__lobbyPane_R_dividerRelease"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":574,
                                          "liveDragging":true,
                                          "percentHeight":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"gameListGrid",
                                             "events":{
                                                "change":"__gameListGrid_change",
                                                "doubleClick":"__gameListGrid_doubleClick",
                                                "click":"__gameListGrid_click"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = 0;
                                                this.paddingBottom = 0;
                                                this.verticalAlign = "middle";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "headerHeight":21,
                                                   "rowHeight":20,
                                                   "doubleClickEnabled":true,
                                                   "verticalScrollPolicy":"on",
                                                   "columns":[_EightyOneShogi_DataGridColumn17_c(),_EightyOneShogi_DataGridColumn18_i(),_EightyOneShogi_DataGridColumn19_i(),_EightyOneShogi_DataGridColumn20_i(),_EightyOneShogi_DataGridColumn21_i(),_EightyOneShogi_DataGridColumn22_i(),_EightyOneShogi_DataGridColumn23_i()]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "id":"lobbyChatVBox",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":574,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"userMessage1",
                                                      "events":{"scroll":"__userMessage1_scroll"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.fontFamily = "Meiryo UI";
                                                         this.leading = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "wordWrap":true,
                                                            "editable":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":HBox,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "percentWidth":100,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"_EightyOneShogi_Label9"
                                                            }),new UIComponentDescriptor({
                                                               "type":TextInput,
                                                               "id":"chatMessage1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontFamily = "Meiryo UI";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"percentWidth":100};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":WorldClockGadget,
                           "id":"clock",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":975,
                                 "height":50
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"boardBox",
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                     this.fontSize = 11;
                     this.verticalGap = 0;
                     this.verticalAlign = "top";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.backgroundColor = 7851059;
                              this.verticalAlign = "middle";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "id":"boardMenuBar1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"myMenuBar",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"checkLobbyButton",
                                             "events":{"click":"__checkLobbyButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_left_png_1055100592;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "enabled":true,
                                                   "soundType":-1
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"resignButton",
                                             "events":{"click":"__resignButton_click"}
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"impasseButton",
                                             "events":{"click":"__impasseButton_click"}
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"reverseButton",
                                             "events":{"click":"__reverseButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_flip_png_1048654732;
                                                this.disabledIcon = _embed_mxml_images_icon_flip_grey_png_2047763666;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"_EightyOneShogi_MyMenuButton11",
                                             "events":{"click":"___EightyOneShogi_MyMenuButton11_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_eraser_png_1471600754;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"queryButton",
                                             "events":{"click":"__queryButton_click"}
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"kifuButton",
                                             "events":{"click":"__kifuButton_click"}
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"giveHostButton",
                                             "events":{"click":"__giveHostButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_hat2_png_22818128;
                                                this.disabledIcon = _embed_mxml_images_icon_hat2_grey_png_2066373442;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"enabled":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"rematchButton",
                                             "events":{"click":"__rematchButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_one_png_1166098304;
                                                this.disabledIcon = _embed_mxml_images_icon_one_grey_png_2024128242;
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "id":"boardMenuBar2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 0;
                                       this.horizontalAlign = "right";
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "styleName":"myMenuBar",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"optionButton2",
                                             "events":{"click":"__optionButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_gear_png_520012672;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":MyMenuButton,
                                             "id":"closeButton",
                                             "events":{"click":"__closeButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.icon = _embed_mxml_images_icon_door_png_24956542;
                                                this.disabledIcon = _embed_mxml_images_icon_door_grey_png_1173725868;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "enabled":false,
                                                   "soundType":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.paddingBottom = 7;
                              this.horizontalGap = 5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"boardPane_L",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 5;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Box,
                                             "id":"boardWrapper",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingTop = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":Board,
                                                   "id":"board",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "horizontalScrollPolicy":"off",
                                                         "verticalScrollPolicy":"off"
                                                      };
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "id":"boardPane_B",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 5;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.verticalGap = 0;
                                                         this.backgroundColor = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":210,
                                                            "percentHeight":100,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":CheckBox,
                                                               "id":"allowWatcherChatCheckbox",
                                                               "events":{"click":"__allowWatcherChatCheckbox_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.paddingLeft = 2;
                                                                  this.paddingTop = 0;
                                                                  this.paddingBottom = 0;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":DataGrid,
                                                               "id":"watcherListGrid",
                                                               "events":{"doubleClick":"__watcherListGrid_doubleClick"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.paddingTop = 0;
                                                                  this.paddingBottom = 0;
                                                                  this.verticalAlign = "middle";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "percentWidth":100,
                                                                     "percentHeight":100,
                                                                     "rowHeight":20,
                                                                     "headerHeight":21,
                                                                     "doubleClickEnabled":true,
                                                                     "columns":[_EightyOneShogi_DataGridColumn24_i(),_EightyOneShogi_DataGridColumn25_i(),_EightyOneShogi_DataGridColumn26_i()]
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "id":"lobbyChatVBox2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":TextArea,
                                                               "id":"userMessage2",
                                                               "events":{"scroll":"__userMessage2_scroll"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.fontFamily = "Meiryo UI";
                                                                  this.leading = 0;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "wordWrap":true,
                                                                     "editable":false,
                                                                     "percentWidth":100,
                                                                     "percentHeight":100
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":HBox,
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "percentWidth":100,
                                                                     "childDescriptors":[new UIComponentDescriptor({
                                                                        "type":Label,
                                                                        "id":"_EightyOneShogi_Label10"
                                                                     }),new UIComponentDescriptor({
                                                                        "type":VBox,
                                                                        "stylesFactory":function():void
                                                                        {
                                                                           this.verticalGap = 0;
                                                                        },
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {
                                                                              "percentWidth":100,
                                                                              "childDescriptors":[new UIComponentDescriptor({
                                                                                 "type":Canvas,
                                                                                 "id":"voiceBar",
                                                                                 "stylesFactory":function():void
                                                                                 {
                                                                                    this.backgroundColor = 3407667;
                                                                                 },
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {"height":22};
                                                                                 }
                                                                              }),new UIComponentDescriptor({
                                                                                 "type":Spacer,
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {"height":-22};
                                                                                 }
                                                                              }),new UIComponentDescriptor({
                                                                                 "type":TextInput,
                                                                                 "id":"chatMessage2",
                                                                                 "stylesFactory":function():void
                                                                                 {
                                                                                    this.fontFamily = "Meiryo UI";
                                                                                    this.backgroundAlpha = 0.7;
                                                                                 },
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {"percentWidth":100};
                                                                                 }
                                                                              })]
                                                                           };
                                                                        }
                                                                     }),new UIComponentDescriptor({
                                                                        "type":GreetButton,
                                                                        "id":"greetButton",
                                                                        "events":{"click":"__greetButton_click"},
                                                                        "stylesFactory":function():void
                                                                        {
                                                                           this.icon = _embed_mxml_images_icon_greet_png_2025193794;
                                                                           this.paddingLeft = 0;
                                                                           this.paddingRight = 0;
                                                                        },
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {"width":35};
                                                                        }
                                                                     }),new UIComponentDescriptor({
                                                                        "type":VoiceButton,
                                                                        "id":"voiceButton",
                                                                        "events":{"click":"__voiceButton_click"},
                                                                        "stylesFactory":function():void
                                                                        {
                                                                           this.icon = _embed_mxml_images_icon_voice_png_411714000;
                                                                           this.paddingLeft = 0;
                                                                           this.paddingRight = 0;
                                                                        },
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {"width":35};
                                                                        }
                                                                     })]
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VDividedBox,
                                    "id":"boardPane_R",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentHeight":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":VBox,
                                             "id":"sidePanel",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                                this.borderThickness = 4;
                                                this.verticalGap = 2;
                                                this.backgroundColor = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":170,
                                                   "percentHeight":100,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "id":"radioKifuReplay",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 5;
                                                         this.paddingTop = 4;
                                                         this.paddingBottom = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"groupName":"RadioGroupKifu"};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RadioButton,
                                                      "id":"radioKifuListen",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 5;
                                                         this.paddingTop = 0;
                                                         this.paddingBottom = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"groupName":"RadioGroupKifu"};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":HBox,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalAlign = "center";
                                                         this.paddingBottom = 3;
                                                         this.horizontalGap = 2;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "percentWidth":100,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Button,
                                                               "id":"rewindAllButton",
                                                               "events":{"click":"__rewindAllButton_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "label":"|<",
                                                                     "enabled":false
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Button,
                                                               "id":"rewindOneButton",
                                                               "events":{"click":"__rewindOneButton_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "label":"<",
                                                                     "enabled":false
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Button,
                                                               "id":"forwardOneButton",
                                                               "events":{"click":"__forwardOneButton_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "label":">",
                                                                     "enabled":false
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Button,
                                                               "id":"forwardAllButton",
                                                               "events":{"click":"__forwardAllButton_click"},
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "label":">|",
                                                                     "enabled":false
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"kifuDataGrid",
                                                      "events":{"change":"__kifuDataGrid_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 0;
                                                         this.paddingBottom = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "sortableColumns":false,
                                                            "percentWidth":100,
                                                            "percentHeight":100,
                                                            "selectable":false,
                                                            "rowHeight":20,
                                                            "columns":[_EightyOneShogi_DataGridColumn27_i(),_EightyOneShogi_DataGridColumn28_i(),_EightyOneShogi_DataGridColumn29_i()]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 10;
                     this.paddingTop = 10;
                     this.fontFamily = "Meiryo UI";
                     this.horizontalAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Panel,
                           "id":"searchPanel",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 10;
                              this.paddingTop = 10;
                              this.paddingBottom = 10;
                              this.paddingRight = 10;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":HBox,
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":Accordion,
                                       "id":"searchAccordion",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":820,
                                             "selectedIndex":2,
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "id":"kifuSearchHBox",
                                                "stylesFactory":function():void
                                                {
                                                   this.paddingTop = 8;
                                                   this.paddingLeft = 8;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "percentWidth":100,
                                                      "percentHeight":100,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":VBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":HBox,
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"childDescriptors":[new UIComponentDescriptor({
                                                                     "type":Label,
                                                                     "id":"_EightyOneShogi_Label11"
                                                                  }),new UIComponentDescriptor({
                                                                     "type":TextInput,
                                                                     "id":"kifuSearchPlayerText",
                                                                     "propertiesFactory":function():Object
                                                                     {
                                                                        return {"width":85};
                                                                     }
                                                                  })]};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":HBox,
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"childDescriptors":[new UIComponentDescriptor({
                                                                     "type":Label,
                                                                     "id":"_EightyOneShogi_Label12"
                                                                  }),new UIComponentDescriptor({
                                                                     "type":TextInput,
                                                                     "id":"kifuSearchOpponentText",
                                                                     "propertiesFactory":function():Object
                                                                     {
                                                                        return {"width":85};
                                                                     }
                                                                  })]};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"_EightyOneShogi_Label13"
                                                            }),new UIComponentDescriptor({
                                                               "type":DateChooser,
                                                               "id":"kifuSearchFromChooser",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"showToday":false};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":DateChooser,
                                                               "id":"kifuSearchToChooser",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"showToday":false};
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":VBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":HBox,
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"childDescriptors":[new UIComponentDescriptor({
                                                                     "type":MyButton,
                                                                     "id":"searchKifuButton",
                                                                     "events":{"click":"__searchKifuButton_click"},
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.icon = _embed_mxml_images_icon_search_png_1106458674;
                                                                     }
                                                                  }),new UIComponentDescriptor({
                                                                     "type":MyButton,
                                                                     "id":"_EightyOneShogi_MyButton3",
                                                                     "events":{"click":"___EightyOneShogi_MyButton3_click"},
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.fontSize = 11;
                                                                     },
                                                                     "propertiesFactory":function():Object
                                                                     {
                                                                        return {"soundType":2};
                                                                     }
                                                                  }),new UIComponentDescriptor({
                                                                     "type":Label,
                                                                     "id":"searchKifuCountLabel",
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.fontSize = 13;
                                                                        this.fontWeight = "bold";
                                                                     },
                                                                     "propertiesFactory":function():Object
                                                                     {
                                                                        return {"width":400};
                                                                     }
                                                                  }),new UIComponentDescriptor({
                                                                     "type":MyButton,
                                                                     "id":"shareKifuButton3",
                                                                     "events":{"click":"__shareKifuButton3_click"},
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.icon = _embed_mxml_images_icon_share_png_2073149102;
                                                                        this.fontSize = 11;
                                                                     }
                                                                  })]};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":DataGrid,
                                                               "id":"kifuSearchGrid",
                                                               "events":{"doubleClick":"__kifuSearchGrid_doubleClick"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.paddingTop = 0;
                                                                  this.paddingBottom = 0;
                                                                  this.verticalAlign = "middle";
                                                                  this.fontSize = 11;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "width":615,
                                                                     "rowHeight":21,
                                                                     "headerHeight":21,
                                                                     "doubleClickEnabled":true,
                                                                     "columns":[_EightyOneShogi_DataGridColumn30_i(),_EightyOneShogi_DataGridColumn31_i(),_EightyOneShogi_DataGridColumn32_i(),_EightyOneShogi_DataGridColumn33_i(),_EightyOneShogi_DataGridColumn34_i(),_EightyOneShogi_DataGridColumn35_i(),_EightyOneShogi_DataGridColumn36_i(),_EightyOneShogi_DataGridColumn37_i(),_EightyOneShogi_DataGridColumn38_i()]
                                                                  };
                                                               }
                                                            })]};
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "id":"playerSearchHBox",
                                                "stylesFactory":function():void
                                                {
                                                   this.paddingTop = 10;
                                                   this.paddingLeft = 10;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "percentWidth":100,
                                                      "percentHeight":100,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"_EightyOneShogi_Label15"
                                                            }),new UIComponentDescriptor({
                                                               "type":TextInput,
                                                               "id":"playerSearchNameText"
                                                            }),new UIComponentDescriptor({
                                                               "type":MyButton,
                                                               "id":"searchPlayerButton",
                                                               "events":{"click":"__searchPlayerButton_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.icon = _embed_mxml_images_icon_search_png_1106458674;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":MyButton,
                                                               "id":"_EightyOneShogi_MyButton6",
                                                               "events":{"click":"___EightyOneShogi_MyButton6_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 11;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"soundType":2};
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":DataGrid,
                                                         "id":"playerSearchGrid",
                                                         "events":{"doubleClick":"__playerSearchGrid_doubleClick"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":755,
                                                               "rowHeight":21,
                                                               "doubleClickEnabled":true,
                                                               "columns":[_EightyOneShogi_DataGridColumn39_i(),_EightyOneShogi_DataGridColumn40_i(),_EightyOneShogi_DataGridColumn41_i(),_EightyOneShogi_DataGridColumn42_c(),_EightyOneShogi_DataGridColumn43_i(),_EightyOneShogi_DataGridColumn44_i(),_EightyOneShogi_DataGridColumn45_i(),_EightyOneShogi_DataGridColumn46_i(),_EightyOneShogi_DataGridColumn47_i(),_EightyOneShogi_DataGridColumn48_i(),_EightyOneShogi_DataGridColumn49_i(),_EightyOneShogi_DataGridColumn50_i(),_EightyOneShogi_DataGridColumn51_i()]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "id":"rankingSearchHBox",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalAlign = "center";
                                                   this.horizontalGap = 20;
                                                   this.paddingTop = 10;
                                                   this.paddingLeft = 10;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "percentWidth":100,
                                                      "percentHeight":99,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":VBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalAlign = "left";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":SWFLoader,
                                                               "id":"rankingFlagLoader",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "width":56,
                                                                     "height":44
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":MyButton,
                                                               "id":"searchRankingButton",
                                                               "events":{"click":"__searchRankingButton_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.icon = _embed_mxml_images_icon_search_png_1106458674;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":MyButton,
                                                               "id":"_EightyOneShogi_MyButton8",
                                                               "events":{"click":"___EightyOneShogi_MyButton8_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 11;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"soundType":2};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Spacer,
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"height":20};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":List,
                                                               "id":"rankingCountryList",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":150};
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":TabNavigator,
                                                         "id":"rankingTabNavigator",
                                                         "events":{"change":"__rankingTabNavigator_change"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.paddingTop = 8;
                                                            this.paddingLeft = 8;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":580,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":VBox,
                                                                  "id":"_EightyOneShogi_VBox18",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {"childDescriptors":[new UIComponentDescriptor({
                                                                        "type":DataGrid,
                                                                        "id":"rateRankingGrid",
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {
                                                                              "width":550,
                                                                              "percentHeight":100,
                                                                              "rowHeight":21,
                                                                              "sortableColumns":false,
                                                                              "columns":[_EightyOneShogi_DataGridColumn52_c(),_EightyOneShogi_DataGridColumn53_i(),_EightyOneShogi_DataGridColumn54_i(),_EightyOneShogi_DataGridColumn55_c(),_EightyOneShogi_DataGridColumn56_i(),_EightyOneShogi_DataGridColumn57_i(),_EightyOneShogi_DataGridColumn58_i(),_EightyOneShogi_DataGridColumn59_i(),_EightyOneShogi_DataGridColumn60_i(),_EightyOneShogi_DataGridColumn61_i()]
                                                                           };
                                                                        }
                                                                     })]};
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":VBox,
                                                                  "id":"_EightyOneShogi_VBox19",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {"childDescriptors":[new UIComponentDescriptor({
                                                                        "type":DataGrid,
                                                                        "id":"streakRankingGrid",
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {
                                                                              "width":550,
                                                                              "percentHeight":100,
                                                                              "rowHeight":21,
                                                                              "sortableColumns":false,
                                                                              "columns":[_EightyOneShogi_DataGridColumn62_c(),_EightyOneShogi_DataGridColumn63_i(),_EightyOneShogi_DataGridColumn64_i(),_EightyOneShogi_DataGridColumn65_c(),_EightyOneShogi_DataGridColumn66_i(),_EightyOneShogi_DataGridColumn67_i(),_EightyOneShogi_DataGridColumn68_i(),_EightyOneShogi_DataGridColumn69_i(),_EightyOneShogi_DataGridColumn70_i(),_EightyOneShogi_DataGridColumn71_i()]
                                                                           };
                                                                        }
                                                                     })]};
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":VBox,
                                                                  "id":"_EightyOneShogi_VBox20",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {"childDescriptors":[new UIComponentDescriptor({
                                                                        "type":DataGrid,
                                                                        "id":"percentageRankingGrid",
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {
                                                                              "width":550,
                                                                              "percentHeight":100,
                                                                              "rowHeight":21,
                                                                              "sortableColumns":false,
                                                                              "columns":[_EightyOneShogi_DataGridColumn72_c(),_EightyOneShogi_DataGridColumn73_i(),_EightyOneShogi_DataGridColumn74_i(),_EightyOneShogi_DataGridColumn75_c(),_EightyOneShogi_DataGridColumn76_i(),_EightyOneShogi_DataGridColumn77_i(),_EightyOneShogi_DataGridColumn78_i(),_EightyOneShogi_DataGridColumn79_i(),_EightyOneShogi_DataGridColumn80_i(),_EightyOneShogi_DataGridColumn81_i()]
                                                                           };
                                                                        }
                                                                     })]};
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":VBox,
                                                                  "id":"_EightyOneShogi_VBox21",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {"childDescriptors":[new UIComponentDescriptor({
                                                                        "type":DataGrid,
                                                                        "id":"winRankingGrid",
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {
                                                                              "width":550,
                                                                              "percentHeight":100,
                                                                              "rowHeight":21,
                                                                              "sortableColumns":false,
                                                                              "columns":[_EightyOneShogi_DataGridColumn82_c(),_EightyOneShogi_DataGridColumn83_i(),_EightyOneShogi_DataGridColumn84_i(),_EightyOneShogi_DataGridColumn85_c(),_EightyOneShogi_DataGridColumn86_i(),_EightyOneShogi_DataGridColumn87_i(),_EightyOneShogi_DataGridColumn88_i(),_EightyOneShogi_DataGridColumn89_i(),_EightyOneShogi_DataGridColumn90_i(),_EightyOneShogi_DataGridColumn91_i()]
                                                                           };
                                                                        }
                                                                     })]};
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":VBox,
                                                                  "id":"_EightyOneShogi_VBox22",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {"childDescriptors":[new UIComponentDescriptor({
                                                                        "type":DataGrid,
                                                                        "id":"totalRankingGrid",
                                                                        "propertiesFactory":function():Object
                                                                        {
                                                                           return {
                                                                              "width":550,
                                                                              "percentHeight":100,
                                                                              "rowHeight":21,
                                                                              "sortableColumns":false,
                                                                              "columns":[_EightyOneShogi_DataGridColumn92_c(),_EightyOneShogi_DataGridColumn93_i(),_EightyOneShogi_DataGridColumn94_i(),_EightyOneShogi_DataGridColumn95_c(),_EightyOneShogi_DataGridColumn96_i(),_EightyOneShogi_DataGridColumn97_i(),_EightyOneShogi_DataGridColumn98_i(),_EightyOneShogi_DataGridColumn99_i(),_EightyOneShogi_DataGridColumn100_i(),_EightyOneShogi_DataGridColumn101_i()]
                                                                           };
                                                                        }
                                                                     })]};
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":VBox,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "label":"EXP",
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":HBox,
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {"childDescriptors":[new UIComponentDescriptor({
                                                                                 "type":RadioButton,
                                                                                 "id":"_EightyOneShogi_RadioButton5",
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {
                                                                                       "groupName":"expRankingGroup",
                                                                                       "value":10,
                                                                                       "selected":true
                                                                                    };
                                                                                 }
                                                                              }),new UIComponentDescriptor({
                                                                                 "type":RadioButton,
                                                                                 "id":"_EightyOneShogi_RadioButton6",
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {
                                                                                       "groupName":"expRankingGroup",
                                                                                       "value":56
                                                                                    };
                                                                                 }
                                                                              }),new UIComponentDescriptor({
                                                                                 "type":RadioButton,
                                                                                 "id":"_EightyOneShogi_RadioButton7",
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {
                                                                                       "groupName":"expRankingGroup",
                                                                                       "value":34
                                                                                    };
                                                                                 }
                                                                              }),new UIComponentDescriptor({
                                                                                 "type":RadioButton,
                                                                                 "id":"_EightyOneShogi_RadioButton8",
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {
                                                                                       "groupName":"expRankingGroup",
                                                                                       "value":55
                                                                                    };
                                                                                 }
                                                                              }),new UIComponentDescriptor({
                                                                                 "type":RadioButton,
                                                                                 "id":"_EightyOneShogi_RadioButton9",
                                                                                 "propertiesFactory":function():Object
                                                                                 {
                                                                                    return {
                                                                                       "groupName":"expRankingGroup",
                                                                                       "value":"_ky"
                                                                                    };
                                                                                 }
                                                                              })]};
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":DataGrid,
                                                                           "id":"expRankingGrid",
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":550,
                                                                                 "percentHeight":100,
                                                                                 "rowHeight":21,
                                                                                 "sortableColumns":false,
                                                                                 "columns":[_EightyOneShogi_DataGridColumn102_c(),_EightyOneShogi_DataGridColumn103_c(),_EightyOneShogi_DataGridColumn104_i(),_EightyOneShogi_DataGridColumn105_c(),_EightyOneShogi_DataGridColumn106_i(),_EightyOneShogi_DataGridColumn107_i(),_EightyOneShogi_DataGridColumn108_i(),_EightyOneShogi_DataGridColumn109_i(),_EightyOneShogi_DataGridColumn110_i(),_EightyOneShogi_DataGridColumn111_i()]
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]};
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         temp.mx_internal::_documentDescriptor.document = this;
         this.mainViewStack = temp;
         BindingManager.executeBindings(this,"mainViewStack",this.mainViewStack);
         return temp;
      }
      
      public function __noMusicCheckBox_change(param1:Event) : void
      {
         this._toggleLoginMusic();
      }
      
      private function _EightyOneShogi_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 90;
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn1 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn1",this._EightyOneShogi_DataGridColumn1);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "description";
         _loc1_.width = 110;
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn2 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn2",this._EightyOneShogi_DataGridColumn2);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "population";
         _loc1_.width = 60;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn3 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn3",this._EightyOneShogi_DataGridColumn3);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = null;
         _loc1_ = new DropShadowFilter();
         _loc1_.alpha = 0.3;
         _loc1_.angle = 90;
         _loc1_.color = 0;
         _loc1_.distance = 1;
         return _loc1_;
      }
      
      public function __versionLabel_click(param1:MouseEvent) : void
      {
         this._incrementDebugClick();
      }
      
      public function ___EightyOneShogi_LinkButton1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://shineleckoma.web.fc2.com/"),"quote");
      }
      
      public function ___EightyOneShogi_LinkButton2_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://piecodesign.jp/"),"quote");
      }
      
      public function ___EightyOneShogi_LinkButton3_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.hmix.net/"),"quote");
      }
      
      public function ___EightyOneShogi_LinkButton4_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.otosozai.com/"),"quote");
      }
      
      public function ___EightyOneShogi_LinkButton5_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://nflagrsign.xrea.jp/"),"quote");
      }
      
      public function __refreshButton_click(param1:MouseEvent) : void
      {
         this._refresh();
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         this._newGameForm();
      }
      
      public function __optionButton1_click(param1:MouseEvent) : void
      {
         this._openOptionMenu();
      }
      
      public function __webSystemButton_click(param1:MouseEvent) : void
      {
         this._openWebSystemMenu();
      }
      
      public function __logoutButton_click(param1:MouseEvent) : void
      {
         this._logout();
      }
      
      public function __adminButton_click(param1:MouseEvent) : void
      {
         this._openAdminPanel();
      }
      
      public function __showBots_change(param1:Event) : void
      {
         this._refreshWaiterList();
      }
      
      public function __backToGameButton_click(param1:MouseEvent) : void
      {
         this._backToGame();
      }
      
      private function _EightyOneShogi_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "statusMark";
         _loc1_.width = 34;
         _loc1_.showDataTips = true;
         _loc1_.dataTipField = "statusMarkTip";
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn4 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn4",this._EightyOneShogi_DataGridColumn4);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "titleName";
         _loc1_.showDataTips = true;
         _loc1_.dataTipField = "titleSubName";
         _loc1_.width = 60;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn5 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn5",this._EightyOneShogi_DataGridColumn5);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 52;
         _loc1_.sortable = false;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn6 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn6",this._EightyOneShogi_DataGridColumn6);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 130;
         _loc1_.sortCompareFunction = this._sortName;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("fontSize",12);
         _loc1_.setStyle("paddingLeft",1);
         this._EightyOneShogi_DataGridColumn7 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn7",this._EightyOneShogi_DataGridColumn7);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 62;
         _loc1_.sortCompareFunction = this._sortCountry;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",2);
         this._EightyOneShogi_DataGridColumn8 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn8",this._EightyOneShogi_DataGridColumn8);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rateStr";
         _loc1_.width = 49;
         _loc1_.sortCompareFunction = this._sortRate;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingRight",3);
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","right");
         this._EightyOneShogi_DataGridColumn9 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn9",this._EightyOneShogi_DataGridColumn9);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.headerText = "W";
         _loc1_.width = 5;
         _loc1_.visible = false;
         this.winsColumn = _loc1_;
         BindingManager.executeBindings(this,"winsColumn",this.winsColumn);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.headerText = "L";
         _loc1_.width = 5;
         _loc1_.visible = false;
         this.lossesColumn = _loc1_;
         BindingManager.executeBindings(this,"lossesColumn",this.lossesColumn);
         return _loc1_;
      }
      
      public function __userListGrid_change(param1:ListEvent) : void
      {
         this._userSelected();
      }
      
      public function __userListGrid_doubleClick(param1:MouseEvent) : void
      {
         this._openPlayerInfo(this.userListGrid.selectedItem.name);
      }
      
      public function __userListGrid_click(param1:MouseEvent) : void
      {
         this._holdRefresh();
      }
      
      private function _EightyOneShogi_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 120;
         _loc1_.sortable = false;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",2);
         this._EightyOneShogi_DataGridColumn12 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn12",this._EightyOneShogi_DataGridColumn12);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rateStr";
         _loc1_.width = 38;
         _loc1_.sortCompareFunction = this._sortRate;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingRight",3);
         _loc1_.setStyle("textAlign","right");
         this._EightyOneShogi_DataGridColumn13 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn13",this._EightyOneShogi_DataGridColumn13);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "gameDescriptionTime";
         _loc1_.dataTipField = "gameDescriptionTimeTip";
         _loc1_.width = 45;
         _loc1_.showDataTips = true;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn14 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn14",this._EightyOneShogi_DataGridColumn14);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn15_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "gameDescriptionRated";
         _loc1_.headerText = "R?";
         _loc1_.width = 22;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn16_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "gameDescriptionHandicap";
         _loc1_.width = 64;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn16 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn16",this._EightyOneShogi_DataGridColumn16);
         return _loc1_;
      }
      
      public function __waiterListGrid_change(param1:ListEvent) : void
      {
         this._waiterSelected();
      }
      
      public function __waiterListGrid_doubleClick(param1:MouseEvent) : void
      {
         this._openPlayerInfo(this.waiterListGrid.selectedItem.name);
      }
      
      public function __waiterListGrid_click(param1:MouseEvent) : void
      {
         this._holdRefresh();
      }
      
      public function __lobbyPane_R_dividerRelease(param1:DividerEvent) : void
      {
         this.userMessage1.callLater(this._scrollDown1);
      }
      
      private function _EightyOneShogi_DataGridColumn17_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "tag";
         _loc1_.headerText = "No.";
         _loc1_.width = 23;
         _loc1_.sortable = false;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn18_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 174;
         _loc1_.sortable = false;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn18 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn18",this._EightyOneShogi_DataGridColumn18);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn19_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 176;
         _loc1_.sortable = false;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn19 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn19",this._EightyOneShogi_DataGridColumn19);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn20_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "description";
         _loc1_.dataTipField = "descriptionTip";
         _loc1_.width = 72;
         _loc1_.showDataTips = true;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",3);
         this._EightyOneShogi_DataGridColumn20 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn20",this._EightyOneShogi_DataGridColumn20);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn21_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 37;
         _loc1_.sortCompareFunction = this._sortGameStatus;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn21 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn21",this._EightyOneShogi_DataGridColumn21);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn22_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 37;
         _loc1_.sortCompareFunction = this._sortGameWatchers;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn22 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn22",this._EightyOneShogi_DataGridColumn22);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn23_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "openingJp";
         _loc1_.width = 55;
         _loc1_.showDataTips = true;
         _loc1_.dataTipField = "openingTip";
         _loc1_.sortDescending = true;
         _loc1_.setStyle("headerStyleName","header81");
         _loc1_.setStyle("fontFamily","Meiryo UI");
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("textAlign","center");
         this._EightyOneShogi_DataGridColumn23 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn23",this._EightyOneShogi_DataGridColumn23);
         return _loc1_;
      }
      
      public function __gameListGrid_change(param1:ListEvent) : void
      {
         this._gameSelected();
      }
      
      public function __gameListGrid_doubleClick(param1:MouseEvent) : void
      {
         this._watchDialog();
      }
      
      public function __gameListGrid_click(param1:MouseEvent) : void
      {
         this._holdRefresh();
      }
      
      public function __userMessage1_scroll(param1:ScrollEvent) : void
      {
         this._toggleAutoScroll1();
      }
      
      public function __checkLobbyButton_click(param1:MouseEvent) : void
      {
         this._checkLobby();
      }
      
      public function __resignButton_click(param1:MouseEvent) : void
      {
         this._resignAlert();
      }
      
      public function __impasseButton_click(param1:MouseEvent) : void
      {
         this._showImpasse();
      }
      
      public function __reverseButton_click(param1:MouseEvent) : void
      {
         this.board.flipBoard();
      }
      
      public function ___EightyOneShogi_MyMenuButton11_click(param1:MouseEvent) : void
      {
         this._clearArrows();
      }
      
      public function __queryButton_click(param1:MouseEvent) : void
      {
         this._openPositionMenu();
      }
      
      public function __kifuButton_click(param1:MouseEvent) : void
      {
         this._openKifuMenu();
      }
      
      public function __giveHostButton_click(param1:MouseEvent) : void
      {
         this._handOverHost();
      }
      
      public function __rematchButton_click(param1:MouseEvent) : void
      {
         this._rematch();
      }
      
      public function __optionButton2_click(param1:MouseEvent) : void
      {
         this._openOptionMenu();
      }
      
      public function __closeButton_click(param1:MouseEvent) : void
      {
         this._closeGame();
      }
      
      public function __allowWatcherChatCheckbox_click(param1:MouseEvent) : void
      {
         this._toggleWatcherChat();
      }
      
      private function _EightyOneShogi_DataGridColumn24_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 120;
         _loc1_.sortCompareFunction = this._sortName;
         _loc1_.setStyle("paddingLeft",2);
         this._EightyOneShogi_DataGridColumn24 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn24",this._EightyOneShogi_DataGridColumn24);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn25_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 50;
         _loc1_.sortCompareFunction = this._sortCountry;
         _loc1_.setStyle("paddingLeft",2);
         this._EightyOneShogi_DataGridColumn25 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn25",this._EightyOneShogi_DataGridColumn25);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn26_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rateStr";
         _loc1_.width = 40;
         _loc1_.sortCompareFunction = this._sortRate;
         _loc1_.sortDescending = true;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("textAlign","right");
         this._EightyOneShogi_DataGridColumn26 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn26",this._EightyOneShogi_DataGridColumn26);
         return _loc1_;
      }
      
      public function __watcherListGrid_doubleClick(param1:MouseEvent) : void
      {
         this._openPlayerInfo(this.watcherListGrid.selectedItem.name);
      }
      
      public function __userMessage2_scroll(param1:ScrollEvent) : void
      {
         this._toggleAutoScroll2();
      }
      
      public function __greetButton_click(param1:MouseEvent) : void
      {
         this.greetButton.click();
      }
      
      public function __voiceButton_click(param1:MouseEvent) : void
      {
         this.voiceButton.click();
      }
      
      public function __rewindAllButton_click(param1:MouseEvent) : void
      {
         this.replayByButton(-2);
      }
      
      public function __rewindOneButton_click(param1:MouseEvent) : void
      {
         this.replayByButton(-1);
      }
      
      public function __forwardOneButton_click(param1:MouseEvent) : void
      {
         this.replayByButton(1);
      }
      
      public function __forwardAllButton_click(param1:MouseEvent) : void
      {
         this.replayByButton(2);
      }
      
      private function _EightyOneShogi_DataGridColumn27_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "numStr";
         _loc1_.width = 35;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",3);
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn27 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn27",this._EightyOneShogi_DataGridColumn27);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn28_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "toListString";
         _loc1_.setStyle("paddingLeft",2);
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn28 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn28",this._EightyOneShogi_DataGridColumn28);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn29_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "timeString";
         _loc1_.width = 40;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",3);
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn29 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn29",this._EightyOneShogi_DataGridColumn29);
         return _loc1_;
      }
      
      public function __kifuDataGrid_change(param1:ListEvent) : void
      {
         this.kifuListSelected();
      }
      
      public function __searchKifuButton_click(param1:MouseEvent) : void
      {
         this._sendKifuSearch();
      }
      
      public function ___EightyOneShogi_MyButton3_click(param1:MouseEvent) : void
      {
         this.mainViewStack.selectedIndex = 1;
      }
      
      public function __shareKifuButton3_click(param1:MouseEvent) : void
      {
         this._shareKifu3();
      }
      
      private function _EightyOneShogi_DataGridColumn30_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "winner";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn30 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn30",this._EightyOneShogi_DataGridColumn30);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn31_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 100;
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn31 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn31",this._EightyOneShogi_DataGridColumn31);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn32_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "blackMouseOut";
         _loc1_.headerText = "M";
         _loc1_.width = 5;
         _loc1_.visible = false;
         this.blackMouseOutColumn = _loc1_;
         BindingManager.executeBindings(this,"blackMouseOutColumn",this.blackMouseOutColumn);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn33_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.width = 100;
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn33 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn33",this._EightyOneShogi_DataGridColumn33);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn34_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "whiteMouseOut";
         _loc1_.headerText = "M";
         _loc1_.width = 5;
         _loc1_.visible = false;
         this.whiteMouseOutColumn = _loc1_;
         BindingManager.executeBindings(this,"whiteMouseOutColumn",this.whiteMouseOutColumn);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn35_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rule";
         _loc1_.width = 110;
         _loc1_.setStyle("paddingLeft",2);
         this._EightyOneShogi_DataGridColumn35 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn35",this._EightyOneShogi_DataGridColumn35);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn36_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "opening_jp";
         _loc1_.width = 120;
         _loc1_.setStyle("paddingLeft",2);
         this._EightyOneShogi_DataGridColumn36 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn36",this._EightyOneShogi_DataGridColumn36);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn37_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "moves";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn37 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn37",this._EightyOneShogi_DataGridColumn37);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn38_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "date";
         this._EightyOneShogi_DataGridColumn38 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn38",this._EightyOneShogi_DataGridColumn38);
         return _loc1_;
      }
      
      public function __kifuSearchGrid_doubleClick(param1:MouseEvent) : void
      {
         this._kifuSearchSelected();
      }
      
      public function __searchPlayerButton_click(param1:MouseEvent) : void
      {
         this._sendPlayerSearch();
      }
      
      public function ___EightyOneShogi_MyButton6_click(param1:MouseEvent) : void
      {
         this.mainViewStack.selectedIndex = 1;
      }
      
      private function _EightyOneShogi_DataGridColumn39_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn39 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn39",this._EightyOneShogi_DataGridColumn39);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn40_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn40 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn40",this._EightyOneShogi_DataGridColumn40);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn41_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 95;
         this._EightyOneShogi_DataGridColumn41 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn41",this._EightyOneShogi_DataGridColumn41);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn42_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory13_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory13_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn43_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 80;
         this._EightyOneShogi_DataGridColumn43 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn43",this._EightyOneShogi_DataGridColumn43);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn44_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn44 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn44",this._EightyOneShogi_DataGridColumn44);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn45_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 43;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn45 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn45",this._EightyOneShogi_DataGridColumn45);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn46_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.width = 43;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn46 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn46",this._EightyOneShogi_DataGridColumn46);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn47_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "total";
         _loc1_.width = 43;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn47 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn47",this._EightyOneShogi_DataGridColumn47);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn48_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "percentage";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn48 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn48",this._EightyOneShogi_DataGridColumn48);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn49_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "streak_best";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn49 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn49",this._EightyOneShogi_DataGridColumn49);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn50_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "created_at";
         _loc1_.width = 90;
         this._EightyOneShogi_DataGridColumn50 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn50",this._EightyOneShogi_DataGridColumn50);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn51_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "updated_at";
         this._EightyOneShogi_DataGridColumn51 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn51",this._EightyOneShogi_DataGridColumn51);
         return _loc1_;
      }
      
      public function __playerSearchGrid_doubleClick(param1:MouseEvent) : void
      {
         this._openInfoFromPlayerSearch(this.playerSearchGrid.selectedItem);
      }
      
      public function __searchRankingButton_click(param1:MouseEvent) : void
      {
         this._sendRankingSearch();
      }
      
      public function ___EightyOneShogi_MyButton8_click(param1:MouseEvent) : void
      {
         this.mainViewStack.selectedIndex = 1;
      }
      
      public function __rankingTabNavigator_change(param1:IndexChangedEvent) : void
      {
         this._rankingTabChange();
      }
      
      private function _EightyOneShogi_DataGridColumn52_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "number";
         _loc1_.headerText = "No.";
         _loc1_.width = 28;
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn53_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn53 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn53",this._EightyOneShogi_DataGridColumn53);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn54_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 100;
         this._EightyOneShogi_DataGridColumn54 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn54",this._EightyOneShogi_DataGridColumn54);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn55_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory14_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory14_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn56_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 80;
         this._EightyOneShogi_DataGridColumn56 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn56",this._EightyOneShogi_DataGridColumn56);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn57_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn57 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn57",this._EightyOneShogi_DataGridColumn57);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn58_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn58 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn58",this._EightyOneShogi_DataGridColumn58);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn59_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn59 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn59",this._EightyOneShogi_DataGridColumn59);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn60_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn60 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn60",this._EightyOneShogi_DataGridColumn60);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn61_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "percentage";
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn61 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn61",this._EightyOneShogi_DataGridColumn61);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn62_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "number";
         _loc1_.headerText = "No.";
         _loc1_.width = 28;
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn63_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "streak_best";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn63 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn63",this._EightyOneShogi_DataGridColumn63);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn64_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 100;
         this._EightyOneShogi_DataGridColumn64 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn64",this._EightyOneShogi_DataGridColumn64);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn65_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory15_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory15_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn66_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 80;
         this._EightyOneShogi_DataGridColumn66 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn66",this._EightyOneShogi_DataGridColumn66);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn67_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn67 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn67",this._EightyOneShogi_DataGridColumn67);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn68_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn68 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn68",this._EightyOneShogi_DataGridColumn68);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn69_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn69 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn69",this._EightyOneShogi_DataGridColumn69);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn70_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn70 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn70",this._EightyOneShogi_DataGridColumn70);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn71_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn71 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn71",this._EightyOneShogi_DataGridColumn71);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn72_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "number";
         _loc1_.headerText = "No.";
         _loc1_.width = 28;
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn73_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "percentage";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn73 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn73",this._EightyOneShogi_DataGridColumn73);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn74_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 100;
         this._EightyOneShogi_DataGridColumn74 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn74",this._EightyOneShogi_DataGridColumn74);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn75_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory16_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory16_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn76_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 80;
         this._EightyOneShogi_DataGridColumn76 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn76",this._EightyOneShogi_DataGridColumn76);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn77_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn77 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn77",this._EightyOneShogi_DataGridColumn77);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn78_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn78 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn78",this._EightyOneShogi_DataGridColumn78);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn79_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn79 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn79",this._EightyOneShogi_DataGridColumn79);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn80_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn80 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn80",this._EightyOneShogi_DataGridColumn80);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn81_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn81 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn81",this._EightyOneShogi_DataGridColumn81);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn82_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "number";
         _loc1_.headerText = "No.";
         _loc1_.width = 28;
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn83_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn83 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn83",this._EightyOneShogi_DataGridColumn83);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn84_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 100;
         this._EightyOneShogi_DataGridColumn84 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn84",this._EightyOneShogi_DataGridColumn84);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn85_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory17_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory17_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn86_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 80;
         this._EightyOneShogi_DataGridColumn86 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn86",this._EightyOneShogi_DataGridColumn86);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn87_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn87 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn87",this._EightyOneShogi_DataGridColumn87);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn88_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn88 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn88",this._EightyOneShogi_DataGridColumn88);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn89_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "total";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn89 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn89",this._EightyOneShogi_DataGridColumn89);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn90_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "percentage";
         _loc1_.width = 45;
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("textAlign","right");
         this._EightyOneShogi_DataGridColumn90 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn90",this._EightyOneShogi_DataGridColumn90);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn91_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn91 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn91",this._EightyOneShogi_DataGridColumn91);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn92_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "number";
         _loc1_.headerText = "No.";
         _loc1_.width = 28;
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn93_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "total";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("fontSize",12);
         this._EightyOneShogi_DataGridColumn93 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn93",this._EightyOneShogi_DataGridColumn93);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn94_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 100;
         this._EightyOneShogi_DataGridColumn94 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn94",this._EightyOneShogi_DataGridColumn94);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn95_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory18_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory18_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn96_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 80;
         this._EightyOneShogi_DataGridColumn96 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn96",this._EightyOneShogi_DataGridColumn96);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn97_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 55;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn97 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn97",this._EightyOneShogi_DataGridColumn97);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn98_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn98 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn98",this._EightyOneShogi_DataGridColumn98);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn99_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn99 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn99",this._EightyOneShogi_DataGridColumn99);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn100_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn100 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn100",this._EightyOneShogi_DataGridColumn100);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn101_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn101 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn101",this._EightyOneShogi_DataGridColumn101);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn102_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "number";
         _loc1_.headerText = "No.";
         _loc1_.width = 28;
         _loc1_.setStyle("textAlign","center");
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn103_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rate";
         _loc1_.headerText = "EXP";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("fontSize",12);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn104_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "login";
         _loc1_.width = 100;
         this._EightyOneShogi_DataGridColumn104 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn104",this._EightyOneShogi_DataGridColumn104);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn105_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "flagURL";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = this._EightyOneShogi_ClassFactory19_c();
         _loc1_.width = 27;
         _loc1_.resizable = false;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         return _loc1_;
      }
      
      private function _EightyOneShogi_ClassFactory19_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = Image;
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn106_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "country";
         _loc1_.width = 70;
         this._EightyOneShogi_DataGridColumn106 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn106",this._EightyOneShogi_DataGridColumn106);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn107_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "title";
         _loc1_.width = 50;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn107 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn107",this._EightyOneShogi_DataGridColumn107);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn108_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "rank_exp";
         _loc1_.width = 65;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingLeft",0);
         this._EightyOneShogi_DataGridColumn108 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn108",this._EightyOneShogi_DataGridColumn108);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn109_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "wins";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn109 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn109",this._EightyOneShogi_DataGridColumn109);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn110_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "losses";
         _loc1_.width = 45;
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn110 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn110",this._EightyOneShogi_DataGridColumn110);
         return _loc1_;
      }
      
      private function _EightyOneShogi_DataGridColumn111_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _loc1_.dataField = "percentage";
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("paddingRight",5);
         this._EightyOneShogi_DataGridColumn111 = _loc1_;
         BindingManager.executeBindings(this,"_EightyOneShogi_DataGridColumn111",this._EightyOneShogi_DataGridColumn111);
         return _loc1_;
      }
      
      public function ___EightyOneShogi_Application1_preinitialize(param1:FlexEvent) : void
      {
         this.preInitApp();
      }
      
      public function ___EightyOneShogi_Application1_creationComplete(param1:FlexEvent) : void
      {
         this.initApp();
      }
      
      private function _EightyOneShogi_bindingsSetup() : Array
      {
         var result:Array = null;
         result = [];
         result[0] = new Binding(this,null,null,"showLogin.target","loginBox");
         result[1] = new Binding(this,null,null,"hideLogin.target","loginBox");
         result[2] = new Binding(this,function():Number
         {
            return this.width;
         },null,"_EightyOneShogi_VBox1.width");
         result[3] = new Binding(this,function():Number
         {
            return this.height;
         },null,"_EightyOneShogi_VBox1.height");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.language;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label1.text");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("No music","音楽OFF");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"noMusicCheckBox.toolTip");
         result[6] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "81Dojo.jpg?" + VERSION;
         },null,"titleBanner.source");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.registered;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"loginTypeRegistered.label");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.guest;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"loginTypeGuest.label");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loginname;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_FormItem2.label");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.password;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_FormItem3.label");
         result[11] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.save_login_info;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"savelogin.label");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.login;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"loginButton.label");
         result[13] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn1.itemRenderer","serverListRenderer");
         result[14] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.server;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn1.headerText");
         result[15] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.description;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn2.headerText");
         result[16] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.players;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn3.headerText");
         result[17] = new Binding(this,null,null,"versionLabel.text","VERSION");
         result[18] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.refresh;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"refreshButton.toolTip");
         result[19] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.wait;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"startButton.label");
         result[20] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.options;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"optionButton1.toolTip");
         result[21] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("To WebSystem","Webシステムへ");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"webSystemButton.toolTip");
         result[22] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.logout;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"logoutButton.label");
         result[23] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Show AIs","ボット表示/非表示");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"showBots.toolTip");
         result[24] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = login_name + " : R" + _myRate + " : " + _mileage + " D" + LanguageSelector.EJ("-Miles","マイル") + " : " + _class;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label8.text");
         result[25] = new Binding(this,function():Array
         {
            var _loc1_:* = undefined;
            _loc1_ = [16746496,16746496];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },function(param1:Array):void
         {
            backToGameButton.setStyle("fillColors",param1);
         },"backToGameButton.fillColors");
         result[26] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.back_to_game;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"backToGameButton.label");
         result[27] = new Binding(this,function():Number
         {
            return 0.59 * lobbyHBox.height;
         },null,"userListGrid.height");
         result[28] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.status_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn4.headerText");
         result[29] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn5.headerText");
         result[30] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn6.itemRenderer","rankRenderer");
         result[31] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn6.headerText");
         result[32] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn7.itemRenderer","playerListNameRenderer");
         result[33] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn7.headerText");
         result[34] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn8.itemRenderer","playerListCountryRenderer");
         result[35] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn8.headerText");
         result[36] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn9.headerText");
         result[37] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn12.itemRenderer","waiterListNameRenderer");
         result[38] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.waiter;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn12.headerText");
         result[39] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn13.headerText");
         result[40] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.thinking_time;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn14.headerText");
         result[41] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.handicap;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn16.headerText");
         result[42] = new Binding(this,function():Number
         {
            return 0.4 * lobbyHBox.height;
         },null,"gameListGrid.height");
         result[43] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn18.itemRenderer","gameListBlackRenderer");
         result[44] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = "☗" + LanguageSelector.lan.black;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn18.headerText");
         result[45] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn19.itemRenderer","gameListWhiteRenderer");
         result[46] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = "☖" + LanguageSelector.lan.white;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn19.headerText");
         result[47] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rule;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn20.headerText");
         result[48] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn21.itemRenderer","gameListStatusRenderer");
         result[49] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.moves;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn21.headerText");
         result[50] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn22.itemRenderer","gameListWatchersRenderer");
         result[51] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.monitor;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn22.headerText");
         result[52] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.opening_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn23.headerText");
         result[53] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "chat_bg/" + THIS_MONTH + ".jpg";
         },function(param1:Object):void
         {
            userMessage1.setStyle("backgroundImage",param1);
         },"userMessage1.backgroundImage");
         result[54] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.chat;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label9.text");
         result[55] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.check_lobby;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"checkLobbyButton.label");
         result[56] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.check_lobby_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"checkLobbyButton.toolTip");
         result[57] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.resign;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"resignButton.label");
         result[58] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.impasse;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"impasseButton.label");
         result[59] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.flip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"reverseButton.toolTip");
         result[60] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.clear_arrows;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_MyMenuButton11.toolTip");
         result[61] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Position","局面");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"queryButton.label");
         result[62] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Kifu","棋譜");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"kifuButton.label");
         result[63] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.give_host;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"giveHostButton.toolTip");
         result[64] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rematch;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rematchButton.toolTip");
         result[65] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.options;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"optionButton2.toolTip");
         result[66] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.close_game;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"closeButton.label");
         result[67] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.allow_chat;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"allowWatcherChatCheckbox.label");
         result[68] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.allow_chat;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"allowWatcherChatCheckbox.toolTip");
         result[69] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn24.itemRenderer","playerListFlagAndNameRenderer");
         result[70] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = _watcherTitle;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn24.headerText");
         result[71] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn25.itemRenderer","playerListCountryRenderer");
         result[72] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn25.headerText");
         result[73] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn26.headerText");
         result[74] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.chat;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label10.text");
         result[75] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.voice;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"voiceButton.toolTip");
         result[76] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.replay;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"radioKifuReplay.label");
         result[77] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.replay_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"radioKifuReplay.toolTip");
         result[78] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.listen;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"radioKifuListen.label");
         result[79] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.listen_tip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"radioKifuListen.toolTip");
         result[80] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Initial position","初期局面へ");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rewindAllButton.toolTip");
         result[81] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Previous","1手戻す");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rewindOneButton.toolTip");
         result[82] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Next","1手進める");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"forwardOneButton.toolTip");
         result[83] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Last move","最終手へ");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"forwardAllButton.toolTip");
         result[84] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("No.","手数");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn27.headerText");
         result[85] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Moves","指し手");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn28.headerText");
         result[86] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Time","時間");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn29.headerText");
         result[87] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.search_panel;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"searchPanel.title");
         result[88] = new Binding(this,function():Number
         {
            return this.height - 80;
         },null,"searchAccordion.height");
         result[89] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.kifu_search;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"kifuSearchHBox.label");
         result[90] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            kifuSearchHBox.setStyle("backgroundImage",param1);
         },"kifuSearchHBox.backgroundImage");
         result[91] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name + "1";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label11.text");
         result[92] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name + "2";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label12.text");
         result[93] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Searching From ~ To ~","検索期間:　～から～まで");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label13.text");
         result[94] = new Binding(this,function():Array
         {
            var _loc1_:* = undefined;
            _loc1_ = !!LanguageSelector.isJapanese()?InfoFetcher.calendar_months_jp:InfoFetcher.calendar_months_en;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"kifuSearchFromChooser.monthNames");
         result[95] = new Binding(this,function():Array
         {
            var _loc1_:* = undefined;
            _loc1_ = !!LanguageSelector.isJapanese()?InfoFetcher.calendar_days_jp:InfoFetcher.calendar_days_en;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"kifuSearchFromChooser.dayNames");
         result[96] = new Binding(this,function():Array
         {
            var _loc1_:* = undefined;
            _loc1_ = !!LanguageSelector.isJapanese()?InfoFetcher.calendar_months_jp:InfoFetcher.calendar_months_en;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"kifuSearchToChooser.monthNames");
         result[97] = new Binding(this,function():Array
         {
            var _loc1_:* = undefined;
            _loc1_ = !!LanguageSelector.isJapanese()?InfoFetcher.calendar_days_jp:InfoFetcher.calendar_days_en;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"kifuSearchToChooser.dayNames");
         result[98] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.search;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"searchKifuButton.toolTip");
         result[99] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.close;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_MyButton3.label");
         result[100] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.share;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"shareKifuButton3.toolTip");
         result[101] = new Binding(this,function():Number
         {
            return kifuSearchHBox.height - 50;
         },null,"kifuSearchGrid.height");
         result[102] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.result;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn30.headerText");
         result[103] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn31.itemRenderer","kifuSearchBlackRenderer");
         result[104] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = "☗" + LanguageSelector.lan.black;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn31.headerText");
         result[105] = new Binding(this,null,null,"_EightyOneShogi_DataGridColumn33.itemRenderer","kifuSearchWhiteRenderer");
         result[106] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = "☖" + LanguageSelector.lan.white;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn33.headerText");
         result[107] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rule;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn35.headerText");
         result[108] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.opening;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn36.headerText");
         result[109] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.moves;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn37.headerText");
         result[110] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.game_date;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn38.headerText");
         result[111] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.player_search;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"playerSearchHBox.label");
         result[112] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            playerSearchHBox.setStyle("backgroundImage",param1);
         },"playerSearchHBox.backgroundImage");
         result[113] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_Label15.text");
         result[114] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.search;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"searchPlayerButton.toolTip");
         result[115] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.close;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_MyButton6.label");
         result[116] = new Binding(this,function():Number
         {
            return playerSearchHBox.height - 50;
         },null,"playerSearchGrid.height");
         result[117] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn39.headerText");
         result[118] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn40.headerText");
         result[119] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn41.headerText");
         result[120] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn43.headerText");
         result[121] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn44.headerText");
         result[122] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn45.headerText");
         result[123] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loss;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn46.headerText");
         result[124] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.total;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn47.headerText");
         result[125] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.percentage_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn48.headerText");
         result[126] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.streak_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn49.headerText");
         result[127] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.signed_up;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn50.headerText");
         result[128] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.last_updated;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn51.headerText");
         result[129] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.view_rankings;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"rankingSearchHBox.label");
         result[130] = new Binding(this,function():Object
         {
            return IMAGE_DIRECTORY + "windowBg-white.jpg";
         },function(param1:Object):void
         {
            rankingSearchHBox.setStyle("backgroundImage",param1);
         },"rankingSearchHBox.backgroundImage");
         result[131] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.search;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"searchRankingButton.toolTip");
         result[132] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.close;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_MyButton8.label");
         result[133] = new Binding(this,function():Number
         {
            return rankingSearchHBox.height - 170;
         },null,"rankingCountryList.height");
         result[134] = new Binding(this,function():Number
         {
            return rankingSearchHBox.height - 30;
         },null,"rankingTabNavigator.height");
         result[135] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_VBox18.label");
         result[136] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn53.headerText");
         result[137] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn54.headerText");
         result[138] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn56.headerText");
         result[139] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn57.headerText");
         result[140] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn58.headerText");
         result[141] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn59.headerText");
         result[142] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loss;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn60.headerText");
         result[143] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.percentage_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn61.headerText");
         result[144] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.streak;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_VBox19.label");
         result[145] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.streak_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn63.headerText");
         result[146] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn64.headerText");
         result[147] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn66.headerText");
         result[148] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn67.headerText");
         result[149] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn68.headerText");
         result[150] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn69.headerText");
         result[151] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loss;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn70.headerText");
         result[152] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn71.headerText");
         result[153] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.percentage;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_VBox20.label");
         result[154] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.percentage_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn73.headerText");
         result[155] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn74.headerText");
         result[156] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn76.headerText");
         result[157] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn77.headerText");
         result[158] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn78.headerText");
         result[159] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn79.headerText");
         result[160] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loss;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn80.headerText");
         result[161] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn81.headerText");
         result[162] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.wins;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_VBox21.label");
         result[163] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn83.headerText");
         result[164] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn84.headerText");
         result[165] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn86.headerText");
         result[166] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn87.headerText");
         result[167] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn88.headerText");
         result[168] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.total;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn89.headerText");
         result[169] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.percentage_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn90.headerText");
         result[170] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn91.headerText");
         result[171] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.total_games;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_VBox22.label");
         result[172] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.total;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn93.headerText");
         result[173] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn94.headerText");
         result[174] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn96.headerText");
         result[175] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn97.headerText");
         result[176] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn98.headerText");
         result[177] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn99.headerText");
         result[178] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loss;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn100.headerText");
         result[179] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rate;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn101.headerText");
         result[180] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("10-sec","10秒将棋");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_RadioButton5.label");
         result[181] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Goro-goro","ゴロゴロ将棋");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_RadioButton6.label");
         result[182] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("3x4(Dobutsu)","3x4将棋");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_RadioButton7.label");
         result[183] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Mini","5五将棋");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_RadioButton8.label");
         result[184] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.EJ("Kyoto","京都将棋");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_RadioButton9.label");
         result[185] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn104.headerText");
         result[186] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn106.headerText");
         result[187] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn107.headerText");
         result[188] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.rank_exp;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn108.headerText");
         result[189] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.win;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn109.headerText");
         result[190] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.loss;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn110.headerText");
         result[191] = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            _loc1_ = LanguageSelector.lan.percentage_short;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogi_DataGridColumn111.headerText");
         return result;
      }
      
      mx_internal function _EightyOneShogi_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_EightyOneShogi_StylesInit_done)
         {
            return;
         }
         mx_internal::_EightyOneShogi_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("global",conditions,selector);
         style = styleManager.getStyleDeclaration("global");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.shadowDistance = 1;
               this.rollOverColor = 14942147;
               this.fontFamily = "Meiryo UI";
               this.color = 4473924;
               this.selectionColor = 13431688;
               this.layoutDirection = "ltr";
               this.shadowDirection = "center";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","header81");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".header81");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16777215;
               this.leading = 0;
               this.fontSize = 12;
               this.fontWeight = "normal";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","goldHeader");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".goldHeader");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fillColors = [16777113,15654280];
               this.fillAlphas = [1,1];
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Alert",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.Alert");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundColor = 15987699;
               this.borderColor = 7851059;
               this.paddingBottom = 10;
               this.color = 5592405;
               this.modalTransparencyBlur = 0;
               this.modalTransparencyDuration = 0;
               this.fontSize = 13;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ToolTip",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.ToolTip");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundColor = "0xFFDD00";
               this.fontSize = 13;
               this.fontWeight = "bold";
               this.cornerRadius = 0;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.Panel",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.containers.Panel");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThicknessBottom = 0;
               this.borderThicknessRight = 0;
               this.borderColor = 7851059;
               this.borderThicknessTop = 0;
               this.headerColors = [7851059,7851059];
               this.borderAlpha = 1;
               this.statusStyleName = "header81";
               this.borderThicknessLeft = 0;
               this.titleStyleName = "header81";
               this.cornerRadius = 0;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.DataGrid",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.DataGrid");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 13421772;
               this.verticalGridLines = false;
               this.headerColors = [16497476,16497476];
               this.headerStyleName = "header81";
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Button",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.Button");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.themeColor = 3385856;
               this.fillAlphas = [1,1];
               this.cornerRadius = 0;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","myMenuBar");
         conditions.push(condition);
         selector = new CSSSelector("mx.containers.HBox",conditions,selector);
         conditions = null;
         selector = new CSSSelector("mx.controls.Button",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.containers.HBox.myMenuBar mx.controls.Button");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = MyMenuButtonSkin;
               this.downSkin = MyMenuButtonSkin;
               this.overSkin = MyMenuButtonSkin;
               this.textSelectedColor = 16777215;
               this.disabledSkin = MyMenuButtonSkin;
               this.fontSize = 13;
               this.textRollOverColor = 16777215;
               this.fontWeight = "normal";
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ComboBox",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.ComboBox");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 16771208;
               this.fillColors = [16771208,16771208];
               this.cornerRadius = 0;
               this.height = 27;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.TitleWindow",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.containers.TitleWindow");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundImage = "https://81dojo.com/dojo/images/windowBg-white.jpg";
               this.cornerRadius = 0;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Menu",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.Menu");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontSize = 13;
               this.openDuration = 0;
            };
         }
         styleManager.initProtoChainRoots();
      }
      
      [Bindable(event="propertyChange")]
      public function get RadioGroupKifu() : RadioButtonGroup
      {
         return this._691834831RadioGroupKifu;
      }
      
      public function set RadioGroupKifu(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._691834831RadioGroupKifu;
         if(_loc2_ !== param1)
         {
            this._691834831RadioGroupKifu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RadioGroupKifu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get adminButton() : MyMenuButton
      {
         return this._972349599adminButton;
      }
      
      public function set adminButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._972349599adminButton;
         if(_loc2_ !== param1)
         {
            this._972349599adminButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adminButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allowWatcherChatCheckbox() : CheckBox
      {
         return this._1203377422allowWatcherChatCheckbox;
      }
      
      public function set allowWatcherChatCheckbox(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1203377422allowWatcherChatCheckbox;
         if(_loc2_ !== param1)
         {
            this._1203377422allowWatcherChatCheckbox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allowWatcherChatCheckbox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backToGameButton() : Button
      {
         return this._71279910backToGameButton;
      }
      
      public function set backToGameButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._71279910backToGameButton;
         if(_loc2_ !== param1)
         {
            this._71279910backToGameButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backToGameButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundBitmap() : BitmapImage
      {
         return this._1212225533backgroundBitmap;
      }
      
      public function set backgroundBitmap(param1:BitmapImage) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1212225533backgroundBitmap;
         if(_loc2_ !== param1)
         {
            this._1212225533backgroundBitmap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundBitmap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blackMouseOutColumn() : DataGridColumn
      {
         return this._777356546blackMouseOutColumn;
      }
      
      public function set blackMouseOutColumn(param1:DataGridColumn) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._777356546blackMouseOutColumn;
         if(_loc2_ !== param1)
         {
            this._777356546blackMouseOutColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blackMouseOutColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get board() : Board
      {
         return this._93908710board;
      }
      
      public function set board(param1:Board) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._93908710board;
         if(_loc2_ !== param1)
         {
            this._93908710board = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"board",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardBox() : VBox
      {
         return this._1610736901boardBox;
      }
      
      public function set boardBox(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1610736901boardBox;
         if(_loc2_ !== param1)
         {
            this._1610736901boardBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardMenuBar1() : HBox
      {
         return this._1575234173boardMenuBar1;
      }
      
      public function set boardMenuBar1(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1575234173boardMenuBar1;
         if(_loc2_ !== param1)
         {
            this._1575234173boardMenuBar1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardMenuBar1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardMenuBar2() : HBox
      {
         return this._1575234172boardMenuBar2;
      }
      
      public function set boardMenuBar2(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1575234172boardMenuBar2;
         if(_loc2_ !== param1)
         {
            this._1575234172boardMenuBar2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardMenuBar2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardPane_B() : HBox
      {
         return this._1818899535boardPane_B;
      }
      
      public function set boardPane_B(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1818899535boardPane_B;
         if(_loc2_ !== param1)
         {
            this._1818899535boardPane_B = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardPane_B",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardPane_L() : VBox
      {
         return this._1818899525boardPane_L;
      }
      
      public function set boardPane_L(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1818899525boardPane_L;
         if(_loc2_ !== param1)
         {
            this._1818899525boardPane_L = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardPane_L",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardPane_R() : VDividedBox
      {
         return this._1818899519boardPane_R;
      }
      
      public function set boardPane_R(param1:VDividedBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1818899519boardPane_R;
         if(_loc2_ !== param1)
         {
            this._1818899519boardPane_R = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardPane_R",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boardWrapper() : Box
      {
         return this._1841282765boardWrapper;
      }
      
      public function set boardWrapper(param1:Box) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1841282765boardWrapper;
         if(_loc2_ !== param1)
         {
            this._1841282765boardWrapper = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boardWrapper",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chatMessage1() : TextInput
      {
         return this._499196034chatMessage1;
      }
      
      public function set chatMessage1(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._499196034chatMessage1;
         if(_loc2_ !== param1)
         {
            this._499196034chatMessage1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatMessage1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chatMessage2() : TextInput
      {
         return this._499196035chatMessage2;
      }
      
      public function set chatMessage2(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._499196035chatMessage2;
         if(_loc2_ !== param1)
         {
            this._499196035chatMessage2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatMessage2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkLobbyButton() : MyMenuButton
      {
         return this._1798571136checkLobbyButton;
      }
      
      public function set checkLobbyButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1798571136checkLobbyButton;
         if(_loc2_ !== param1)
         {
            this._1798571136checkLobbyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkLobbyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clock() : WorldClockGadget
      {
         return this._94755854clock;
      }
      
      public function set clock(param1:WorldClockGadget) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94755854clock;
         if(_loc2_ !== param1)
         {
            this._94755854clock = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clock",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : MyMenuButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._312699062closeButton;
         if(_loc2_ !== param1)
         {
            this._312699062closeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get errorMessage() : Label
      {
         return this._1203236063errorMessage;
      }
      
      public function set errorMessage(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1203236063errorMessage;
         if(_loc2_ !== param1)
         {
            this._1203236063errorMessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorMessage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expRankingGrid() : DataGrid
      {
         return this._489642559expRankingGrid;
      }
      
      public function set expRankingGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._489642559expRankingGrid;
         if(_loc2_ !== param1)
         {
            this._489642559expRankingGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expRankingGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expRankingGroup() : RadioButtonGroup
      {
         return this._2000943450expRankingGroup;
      }
      
      public function set expRankingGroup(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2000943450expRankingGroup;
         if(_loc2_ !== param1)
         {
            this._2000943450expRankingGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expRankingGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forwardAllButton() : Button
      {
         return this._797698798forwardAllButton;
      }
      
      public function set forwardAllButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._797698798forwardAllButton;
         if(_loc2_ !== param1)
         {
            this._797698798forwardAllButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forwardAllButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forwardOneButton() : Button
      {
         return this._1463765005forwardOneButton;
      }
      
      public function set forwardOneButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1463765005forwardOneButton;
         if(_loc2_ !== param1)
         {
            this._1463765005forwardOneButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forwardOneButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameListBlackRenderer() : ClassFactory
      {
         return this._1593390062gameListBlackRenderer;
      }
      
      public function set gameListBlackRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1593390062gameListBlackRenderer;
         if(_loc2_ !== param1)
         {
            this._1593390062gameListBlackRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameListBlackRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameListGrid() : DataGrid
      {
         return this._1500499734gameListGrid;
      }
      
      public function set gameListGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1500499734gameListGrid;
         if(_loc2_ !== param1)
         {
            this._1500499734gameListGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameListGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameListStatusRenderer() : ClassFactory
      {
         return this._38526299gameListStatusRenderer;
      }
      
      public function set gameListStatusRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._38526299gameListStatusRenderer;
         if(_loc2_ !== param1)
         {
            this._38526299gameListStatusRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameListStatusRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameListWatchersRenderer() : ClassFactory
      {
         return this._741861354gameListWatchersRenderer;
      }
      
      public function set gameListWatchersRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._741861354gameListWatchersRenderer;
         if(_loc2_ !== param1)
         {
            this._741861354gameListWatchersRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameListWatchersRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameListWhiteRenderer() : ClassFactory
      {
         return this._2037071420gameListWhiteRenderer;
      }
      
      public function set gameListWhiteRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2037071420gameListWhiteRenderer;
         if(_loc2_ !== param1)
         {
            this._2037071420gameListWhiteRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameListWhiteRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get giveHostButton() : MyMenuButton
      {
         return this._371953899giveHostButton;
      }
      
      public function set giveHostButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._371953899giveHostButton;
         if(_loc2_ !== param1)
         {
            this._371953899giveHostButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giveHostButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get greetButton() : GreetButton
      {
         return this._1691830373greetButton;
      }
      
      public function set greetButton(param1:GreetButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1691830373greetButton;
         if(_loc2_ !== param1)
         {
            this._1691830373greetButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"greetButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hideLogin() : Fade
      {
         return this._835984199hideLogin;
      }
      
      public function set hideLogin(param1:Fade) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._835984199hideLogin;
         if(_loc2_ !== param1)
         {
            this._835984199hideLogin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hideLogin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get impasseButton() : MyMenuButton
      {
         return this._1766104866impasseButton;
      }
      
      public function set impasseButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1766104866impasseButton;
         if(_loc2_ !== param1)
         {
            this._1766104866impasseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"impasseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuButton() : MyMenuButton
      {
         return this._218376129kifuButton;
      }
      
      public function set kifuButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._218376129kifuButton;
         if(_loc2_ !== param1)
         {
            this._218376129kifuButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuDataGrid() : DataGrid
      {
         return this._804344867kifuDataGrid;
      }
      
      public function set kifuDataGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._804344867kifuDataGrid;
         if(_loc2_ !== param1)
         {
            this._804344867kifuDataGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuDataGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchBlackRenderer() : ClassFactory
      {
         return this._1364012333kifuSearchBlackRenderer;
      }
      
      public function set kifuSearchBlackRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1364012333kifuSearchBlackRenderer;
         if(_loc2_ !== param1)
         {
            this._1364012333kifuSearchBlackRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchBlackRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchFromChooser() : DateChooser
      {
         return this._988841924kifuSearchFromChooser;
      }
      
      public function set kifuSearchFromChooser(param1:DateChooser) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._988841924kifuSearchFromChooser;
         if(_loc2_ !== param1)
         {
            this._988841924kifuSearchFromChooser = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchFromChooser",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchGrid() : DataGrid
      {
         return this._1523469413kifuSearchGrid;
      }
      
      public function set kifuSearchGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1523469413kifuSearchGrid;
         if(_loc2_ !== param1)
         {
            this._1523469413kifuSearchGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchHBox() : HBox
      {
         return this._1523485544kifuSearchHBox;
      }
      
      public function set kifuSearchHBox(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1523485544kifuSearchHBox;
         if(_loc2_ !== param1)
         {
            this._1523485544kifuSearchHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchOpponentText() : TextInput
      {
         return this._406149249kifuSearchOpponentText;
      }
      
      public function set kifuSearchOpponentText(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._406149249kifuSearchOpponentText;
         if(_loc2_ !== param1)
         {
            this._406149249kifuSearchOpponentText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchOpponentText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchPlayerText() : TextInput
      {
         return this._652267587kifuSearchPlayerText;
      }
      
      public function set kifuSearchPlayerText(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._652267587kifuSearchPlayerText;
         if(_loc2_ !== param1)
         {
            this._652267587kifuSearchPlayerText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchPlayerText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchToChooser() : DateChooser
      {
         return this._265131253kifuSearchToChooser;
      }
      
      public function set kifuSearchToChooser(param1:DateChooser) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._265131253kifuSearchToChooser;
         if(_loc2_ !== param1)
         {
            this._265131253kifuSearchToChooser = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchToChooser",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifuSearchWhiteRenderer() : ClassFactory
      {
         return this._699506519kifuSearchWhiteRenderer;
      }
      
      public function set kifuSearchWhiteRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._699506519kifuSearchWhiteRenderer;
         if(_loc2_ !== param1)
         {
            this._699506519kifuSearchWhiteRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifuSearchWhiteRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get languageSelector() : LanguageSelector
      {
         return this._1005982551languageSelector;
      }
      
      public function set languageSelector(param1:LanguageSelector) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1005982551languageSelector;
         if(_loc2_ !== param1)
         {
            this._1005982551languageSelector = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"languageSelector",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyBox() : VBox
      {
         return this._1873449493lobbyBox;
      }
      
      public function set lobbyBox(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1873449493lobbyBox;
         if(_loc2_ !== param1)
         {
            this._1873449493lobbyBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyChatVBox() : VBox
      {
         return this._422097181lobbyChatVBox;
      }
      
      public function set lobbyChatVBox(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._422097181lobbyChatVBox;
         if(_loc2_ !== param1)
         {
            this._422097181lobbyChatVBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyChatVBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyChatVBox2() : VBox
      {
         return this._200110673lobbyChatVBox2;
      }
      
      public function set lobbyChatVBox2(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._200110673lobbyChatVBox2;
         if(_loc2_ !== param1)
         {
            this._200110673lobbyChatVBox2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyChatVBox2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyHBox() : HBox
      {
         return this._2052472519lobbyHBox;
      }
      
      public function set lobbyHBox(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2052472519lobbyHBox;
         if(_loc2_ !== param1)
         {
            this._2052472519lobbyHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyMenuBar() : HBox
      {
         return this._910762626lobbyMenuBar;
      }
      
      public function set lobbyMenuBar(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._910762626lobbyMenuBar;
         if(_loc2_ !== param1)
         {
            this._910762626lobbyMenuBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyMenuBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyPane_L() : VDividedBox
      {
         return this._778484565lobbyPane_L;
      }
      
      public function set lobbyPane_L(param1:VDividedBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._778484565lobbyPane_L;
         if(_loc2_ !== param1)
         {
            this._778484565lobbyPane_L = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyPane_L",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lobbyPane_R() : VDividedBox
      {
         return this._778484559lobbyPane_R;
      }
      
      public function set lobbyPane_R(param1:VDividedBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._778484559lobbyPane_R;
         if(_loc2_ !== param1)
         {
            this._778484559lobbyPane_R = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lobbyPane_R",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginBox() : VBox
      {
         return this._2022732194loginBox;
      }
      
      public function set loginBox(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2022732194loginBox;
         if(_loc2_ !== param1)
         {
            this._2022732194loginBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginButton() : MyButton
      {
         return this._829165563loginButton;
      }
      
      public function set loginButton(param1:MyButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._829165563loginButton;
         if(_loc2_ !== param1)
         {
            this._829165563loginButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginMessage() : Label
      {
         return this._647901278loginMessage;
      }
      
      public function set loginMessage(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._647901278loginMessage;
         if(_loc2_ !== param1)
         {
            this._647901278loginMessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginMessage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginTypeGroup() : RadioButtonGroup
      {
         return this._1800036860loginTypeGroup;
      }
      
      public function set loginTypeGroup(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1800036860loginTypeGroup;
         if(_loc2_ !== param1)
         {
            this._1800036860loginTypeGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginTypeGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginTypeGuest() : RadioButton
      {
         return this._1800116565loginTypeGuest;
      }
      
      public function set loginTypeGuest(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1800116565loginTypeGuest;
         if(_loc2_ !== param1)
         {
            this._1800116565loginTypeGuest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginTypeGuest",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginTypeRegistered() : RadioButton
      {
         return this._1868932827loginTypeRegistered;
      }
      
      public function set loginTypeRegistered(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1868932827loginTypeRegistered;
         if(_loc2_ !== param1)
         {
            this._1868932827loginTypeRegistered = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginTypeRegistered",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginname() : TextInput
      {
         return this._1718514316loginname;
      }
      
      public function set loginname(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1718514316loginname;
         if(_loc2_ !== param1)
         {
            this._1718514316loginname = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginname",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logoutButton() : MyMenuButton
      {
         return this._1255627100logoutButton;
      }
      
      public function set logoutButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1255627100logoutButton;
         if(_loc2_ !== param1)
         {
            this._1255627100logoutButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logoutButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lossesColumn() : DataGridColumn
      {
         return this._1572734407lossesColumn;
      }
      
      public function set lossesColumn(param1:DataGridColumn) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1572734407lossesColumn;
         if(_loc2_ !== param1)
         {
            this._1572734407lossesColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lossesColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainViewStack() : ViewStack
      {
         return this._1703153366mainViewStack;
      }
      
      public function set mainViewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1703153366mainViewStack;
         if(_loc2_ !== param1)
         {
            this._1703153366mainViewStack = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainViewStack",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noMusicCheckBox() : CheckBox
      {
         return this._1747762009noMusicCheckBox;
      }
      
      public function set noMusicCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1747762009noMusicCheckBox;
         if(_loc2_ !== param1)
         {
            this._1747762009noMusicCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noMusicCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optionButton1() : MyMenuButton
      {
         return this._799977206optionButton1;
      }
      
      public function set optionButton1(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._799977206optionButton1;
         if(_loc2_ !== param1)
         {
            this._799977206optionButton1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionButton1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optionButton2() : MyMenuButton
      {
         return this._799977205optionButton2;
      }
      
      public function set optionButton2(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._799977205optionButton2;
         if(_loc2_ !== param1)
         {
            this._799977205optionButton2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionButton2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get password() : TextInput
      {
         return this._1216985755password;
      }
      
      public function set password(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1216985755password;
         if(_loc2_ !== param1)
         {
            this._1216985755password = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"password",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get percentageRankingGrid() : DataGrid
      {
         return this._1636807074percentageRankingGrid;
      }
      
      public function set percentageRankingGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1636807074percentageRankingGrid;
         if(_loc2_ !== param1)
         {
            this._1636807074percentageRankingGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"percentageRankingGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playerListCountryRenderer() : ClassFactory
      {
         return this._366892378playerListCountryRenderer;
      }
      
      public function set playerListCountryRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._366892378playerListCountryRenderer;
         if(_loc2_ !== param1)
         {
            this._366892378playerListCountryRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerListCountryRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playerListFlagAndNameRenderer() : ClassFactory
      {
         return this._616206650playerListFlagAndNameRenderer;
      }
      
      public function set playerListFlagAndNameRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._616206650playerListFlagAndNameRenderer;
         if(_loc2_ !== param1)
         {
            this._616206650playerListFlagAndNameRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerListFlagAndNameRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playerListNameRenderer() : ClassFactory
      {
         return this._634153261playerListNameRenderer;
      }
      
      public function set playerListNameRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._634153261playerListNameRenderer;
         if(_loc2_ !== param1)
         {
            this._634153261playerListNameRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerListNameRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playerSearchGrid() : DataGrid
      {
         return this._1933942065playerSearchGrid;
      }
      
      public function set playerSearchGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1933942065playerSearchGrid;
         if(_loc2_ !== param1)
         {
            this._1933942065playerSearchGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerSearchGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playerSearchHBox() : VBox
      {
         return this._1933958196playerSearchHBox;
      }
      
      public function set playerSearchHBox(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1933958196playerSearchHBox;
         if(_loc2_ !== param1)
         {
            this._1933958196playerSearchHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerSearchHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playerSearchNameText() : TextInput
      {
         return this._1795547489playerSearchNameText;
      }
      
      public function set playerSearchNameText(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1795547489playerSearchNameText;
         if(_loc2_ !== param1)
         {
            this._1795547489playerSearchNameText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerSearchNameText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get queryButton() : MyMenuButton
      {
         return this._1746766310queryButton;
      }
      
      public function set queryButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1746766310queryButton;
         if(_loc2_ !== param1)
         {
            this._1746766310queryButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"queryButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioKifuListen() : RadioButton
      {
         return this._181915345radioKifuListen;
      }
      
      public function set radioKifuListen(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._181915345radioKifuListen;
         if(_loc2_ !== param1)
         {
            this._181915345radioKifuListen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioKifuListen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioKifuReplay() : RadioButton
      {
         return this._13931697radioKifuReplay;
      }
      
      public function set radioKifuReplay(param1:RadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._13931697radioKifuReplay;
         if(_loc2_ !== param1)
         {
            this._13931697radioKifuReplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioKifuReplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankRenderer() : ClassFactory
      {
         return this._1371011825rankRenderer;
      }
      
      public function set rankRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1371011825rankRenderer;
         if(_loc2_ !== param1)
         {
            this._1371011825rankRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankingCountryList() : List
      {
         return this._656933058rankingCountryList;
      }
      
      public function set rankingCountryList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._656933058rankingCountryList;
         if(_loc2_ !== param1)
         {
            this._656933058rankingCountryList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankingCountryList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankingFlagLoader() : SWFLoader
      {
         return this._136497291rankingFlagLoader;
      }
      
      public function set rankingFlagLoader(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._136497291rankingFlagLoader;
         if(_loc2_ !== param1)
         {
            this._136497291rankingFlagLoader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankingFlagLoader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankingSearchHBox() : HBox
      {
         return this._1100058911rankingSearchHBox;
      }
      
      public function set rankingSearchHBox(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1100058911rankingSearchHBox;
         if(_loc2_ !== param1)
         {
            this._1100058911rankingSearchHBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankingSearchHBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankingTabNavigator() : TabNavigator
      {
         return this._92356200rankingTabNavigator;
      }
      
      public function set rankingTabNavigator(param1:TabNavigator) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._92356200rankingTabNavigator;
         if(_loc2_ !== param1)
         {
            this._92356200rankingTabNavigator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankingTabNavigator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rateRankingGrid() : DataGrid
      {
         return this._1967173732rateRankingGrid;
      }
      
      public function set rateRankingGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1967173732rateRankingGrid;
         if(_loc2_ !== param1)
         {
            this._1967173732rateRankingGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rateRankingGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshButton() : MyMenuButton
      {
         return this._2033767917refreshButton;
      }
      
      public function set refreshButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2033767917refreshButton;
         if(_loc2_ !== param1)
         {
            this._2033767917refreshButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rematchButton() : MyMenuButton
      {
         return this._2071402172rematchButton;
      }
      
      public function set rematchButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2071402172rematchButton;
         if(_loc2_ !== param1)
         {
            this._2071402172rematchButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rematchButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resignButton() : MyMenuButton
      {
         return this._1238165054resignButton;
      }
      
      public function set resignButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1238165054resignButton;
         if(_loc2_ !== param1)
         {
            this._1238165054resignButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resignButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reverseButton() : MyMenuButton
      {
         return this._1217410228reverseButton;
      }
      
      public function set reverseButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1217410228reverseButton;
         if(_loc2_ !== param1)
         {
            this._1217410228reverseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reverseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewindAllButton() : Button
      {
         return this._826874440rewindAllButton;
      }
      
      public function set rewindAllButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._826874440rewindAllButton;
         if(_loc2_ !== param1)
         {
            this._826874440rewindAllButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewindAllButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewindOneButton() : Button
      {
         return this._1206629053rewindOneButton;
      }
      
      public function set rewindOneButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1206629053rewindOneButton;
         if(_loc2_ !== param1)
         {
            this._1206629053rewindOneButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewindOneButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get savelogin() : CheckBox
      {
         return this._195990540savelogin;
      }
      
      public function set savelogin(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._195990540savelogin;
         if(_loc2_ !== param1)
         {
            this._195990540savelogin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"savelogin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchAccordion() : Accordion
      {
         return this._594959488searchAccordion;
      }
      
      public function set searchAccordion(param1:Accordion) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._594959488searchAccordion;
         if(_loc2_ !== param1)
         {
            this._594959488searchAccordion = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchAccordion",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchKifuButton() : MyButton
      {
         return this._1944266759searchKifuButton;
      }
      
      public function set searchKifuButton(param1:MyButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1944266759searchKifuButton;
         if(_loc2_ !== param1)
         {
            this._1944266759searchKifuButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchKifuButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchKifuCountLabel() : Label
      {
         return this._1435296390searchKifuCountLabel;
      }
      
      public function set searchKifuCountLabel(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1435296390searchKifuCountLabel;
         if(_loc2_ !== param1)
         {
            this._1435296390searchKifuCountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchKifuCountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchPanel() : Panel
      {
         return this._553648836searchPanel;
      }
      
      public function set searchPanel(param1:Panel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._553648836searchPanel;
         if(_loc2_ !== param1)
         {
            this._553648836searchPanel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchPanel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchPlayerButton() : MyButton
      {
         return this._1202274501searchPlayerButton;
      }
      
      public function set searchPlayerButton(param1:MyButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1202274501searchPlayerButton;
         if(_loc2_ !== param1)
         {
            this._1202274501searchPlayerButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchPlayerButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchRankingButton() : MyButton
      {
         return this._240687680searchRankingButton;
      }
      
      public function set searchRankingButton(param1:MyButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._240687680searchRankingButton;
         if(_loc2_ !== param1)
         {
            this._240687680searchRankingButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchRankingButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverImage() : Image
      {
         return this._779117608serverImage;
      }
      
      public function set serverImage(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._779117608serverImage;
         if(_loc2_ !== param1)
         {
            this._779117608serverImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverLabel() : Label
      {
         return this._776703631serverLabel;
      }
      
      public function set serverLabel(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._776703631serverLabel;
         if(_loc2_ !== param1)
         {
            this._776703631serverLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverListGrid() : DataGrid
      {
         return this._1515573607serverListGrid;
      }
      
      public function set serverListGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1515573607serverListGrid;
         if(_loc2_ !== param1)
         {
            this._1515573607serverListGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverListGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverListRenderer() : ClassFactory
      {
         return this._2120519268serverListRenderer;
      }
      
      public function set serverListRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2120519268serverListRenderer;
         if(_loc2_ !== param1)
         {
            this._2120519268serverListRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverListRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shareKifuButton3() : MyButton
      {
         return this._2047555189shareKifuButton3;
      }
      
      public function set shareKifuButton3(param1:MyButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2047555189shareKifuButton3;
         if(_loc2_ !== param1)
         {
            this._2047555189shareKifuButton3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shareKifuButton3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showBots() : CheckBox
      {
         return this._339360727showBots;
      }
      
      public function set showBots(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._339360727showBots;
         if(_loc2_ !== param1)
         {
            this._339360727showBots = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBots",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showLogin() : Fade
      {
         return this._1921025428showLogin;
      }
      
      public function set showLogin(param1:Fade) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1921025428showLogin;
         if(_loc2_ !== param1)
         {
            this._1921025428showLogin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showLogin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sidePanel() : VBox
      {
         return this._1862862099sidePanel;
      }
      
      public function set sidePanel(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1862862099sidePanel;
         if(_loc2_ !== param1)
         {
            this._1862862099sidePanel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sidePanel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MyMenuButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1943111220startButton;
         if(_loc2_ !== param1)
         {
            this._1943111220startButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get streakRankingGrid() : DataGrid
      {
         return this._15851970streakRankingGrid;
      }
      
      public function set streakRankingGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._15851970streakRankingGrid;
         if(_loc2_ !== param1)
         {
            this._15851970streakRankingGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"streakRankingGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleBanner() : Image
      {
         return this._12676004titleBanner;
      }
      
      public function set titleBanner(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._12676004titleBanner;
         if(_loc2_ !== param1)
         {
            this._12676004titleBanner = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleBanner",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalRankingGrid() : DataGrid
      {
         return this._119694664totalRankingGrid;
      }
      
      public function set totalRankingGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._119694664totalRankingGrid;
         if(_loc2_ !== param1)
         {
            this._119694664totalRankingGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalRankingGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userListGrid() : DataGrid
      {
         return this._577340911userListGrid;
      }
      
      public function set userListGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._577340911userListGrid;
         if(_loc2_ !== param1)
         {
            this._577340911userListGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userListGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userMessage1() : TextArea
      {
         return this._1230023179userMessage1;
      }
      
      public function set userMessage1(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1230023179userMessage1;
         if(_loc2_ !== param1)
         {
            this._1230023179userMessage1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userMessage1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userMessage2() : TextArea
      {
         return this._1230023178userMessage2;
      }
      
      public function set userMessage2(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1230023178userMessage2;
         if(_loc2_ !== param1)
         {
            this._1230023178userMessage2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userMessage2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get versionLabel() : Label
      {
         return this._120604420versionLabel;
      }
      
      public function set versionLabel(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._120604420versionLabel;
         if(_loc2_ !== param1)
         {
            this._120604420versionLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"versionLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get voiceBar() : Canvas
      {
         return this._1972552319voiceBar;
      }
      
      public function set voiceBar(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1972552319voiceBar;
         if(_loc2_ !== param1)
         {
            this._1972552319voiceBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voiceBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get voiceButton() : VoiceButton
      {
         return this._544946428voiceButton;
      }
      
      public function set voiceButton(param1:VoiceButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._544946428voiceButton;
         if(_loc2_ !== param1)
         {
            this._544946428voiceButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voiceButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get waiterListGrid() : DataGrid
      {
         return this._1195857914waiterListGrid;
      }
      
      public function set waiterListGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1195857914waiterListGrid;
         if(_loc2_ !== param1)
         {
            this._1195857914waiterListGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"waiterListGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get waiterListNameRenderer() : ClassFactory
      {
         return this._2120433362waiterListNameRenderer;
      }
      
      public function set waiterListNameRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2120433362waiterListNameRenderer;
         if(_loc2_ !== param1)
         {
            this._2120433362waiterListNameRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"waiterListNameRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get watcherListGrid() : DataGrid
      {
         return this._1619070240watcherListGrid;
      }
      
      public function set watcherListGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1619070240watcherListGrid;
         if(_loc2_ !== param1)
         {
            this._1619070240watcherListGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"watcherListGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get webSystemButton() : MyMenuButton
      {
         return this._209868875webSystemButton;
      }
      
      public function set webSystemButton(param1:MyMenuButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._209868875webSystemButton;
         if(_loc2_ !== param1)
         {
            this._209868875webSystemButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"webSystemButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get whiteMouseOutColumn() : DataGridColumn
      {
         return this._53945768whiteMouseOutColumn;
      }
      
      public function set whiteMouseOutColumn(param1:DataGridColumn) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._53945768whiteMouseOutColumn;
         if(_loc2_ !== param1)
         {
            this._53945768whiteMouseOutColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"whiteMouseOutColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get winRankingGrid() : DataGrid
      {
         return this._172565728winRankingGrid;
      }
      
      public function set winRankingGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._172565728winRankingGrid;
         if(_loc2_ !== param1)
         {
            this._172565728winRankingGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"winRankingGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get winsColumn() : DataGridColumn
      {
         return this._1023853133winsColumn;
      }
      
      public function set winsColumn(param1:DataGridColumn) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1023853133winsColumn;
         if(_loc2_ !== param1)
         {
            this._1023853133winsColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"winsColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _game_name() : String
      {
         return this._487945927_game_name;
      }
      
      private function set _game_name(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._487945927_game_name;
         if(_loc2_ !== param1)
         {
            this._487945927_game_name = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_game_name",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _watcherTitle() : String
      {
         return this._1648523227_watcherTitle;
      }
      
      private function set _watcherTitle(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1648523227_watcherTitle;
         if(_loc2_ !== param1)
         {
            this._1648523227_watcherTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_watcherTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get login_name() : String
      {
         return this._1747812959login_name;
      }
      
      public function set login_name(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1747812959login_name;
         if(_loc2_ !== param1)
         {
            this._1747812959login_name = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"login_name",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _myRate() : int
      {
         return this._1648367051_myRate;
      }
      
      private function set _myRate(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1648367051_myRate;
         if(_loc2_ !== param1)
         {
            this._1648367051_myRate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_myRate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _mileage() : int
      {
         return this._874182773_mileage;
      }
      
      private function set _mileage(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._874182773_mileage;
         if(_loc2_ !== param1)
         {
            this._874182773_mileage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_mileage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _class() : String
      {
         return this._1480455047_class;
      }
      
      private function set _class(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1480455047_class;
         if(_loc2_ !== param1)
         {
            this._1480455047_class = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_class",_loc2_,param1));
            }
         }
      }
   }
}
