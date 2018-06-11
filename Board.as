package
{
   import flash.display.DisplayObject;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.media.SoundTransform;
   import flash.ui.ContextMenu;
   import flash.utils.Timer;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import spark.components.Image;
   
   public final class Board extends Canvas
   {
      
      public static var squaresEdgeX:int;
      
      public static var squaresEdgeY:int;
      
      public static var handX0:int;
      
      public static var handX1:int;
      
      public static var handY0:int;
      
      public static var handY1:int;
      
      public static var nRow:int;
      
      public static var nCol:int;
      
      public static const MAX_ARROWS:int = 8;
      
      public static const ARROWS_SELF:int = 0;
      
      public static const ARROWS_PUBLIC:int = 1;
      
      public static const HOVER:String = "hover";
      
      public static const FRAME_RATE_FAST:int = 30;
      
      public static const FRAME_RATE_SLOW:int = 15;
      
      public static var defaultNameLabelColor:uint = 4473924;
      
      public static var pieceSets:Array = new Array(new PieceSet("Ichiji_L.swf",LanguageSelector.EJ("One-kanji, Red-promotion　(HiRez)","一字彫 裏朱 (高解像度)"),0),new PieceSet("Urushi.swf",LanguageSelector.EJ("Ninju, Red-promotion","仁寿 裏朱"),1),new PieceSet("Hidetchi.swf",LanguageSelector.EJ("Hidetchi\'s Internationalized","Hidetchi国際駒"),2),new PieceSet("ShogiCZ_L.swf",LanguageSelector.EJ("Shogi.CZ (HiRez)","Shogi.CZ (高解像度)"),8),new PieceSet("Ryoko1.swf",LanguageSelector.EJ("Simplified Ryoko, Red-promotion","菱湖一字 裏朱 (旧81Dojo)"),3),new PieceSet("Kinki_v2.swf",LanguageSelector.EJ("Kinki, on peacock","錦旗 孔雀杢"),5),new PieceSet("Ryoko.swf",LanguageSelector.EJ("Makino-Ryoko, on peacock","巻菱湖 孔雀杢"),6),new PieceSet("Kiyoyasu.swf",LanguageSelector.EJ("Genbee-Kiyoyasu, on tiger","源兵衛清安 虎斑"),7),new PieceSet("Dobutsu_v2.swf",LanguageSelector.EJ("Dobutsu by pieco","おおきな森のどうぶつしょうぎ(pieco)"),4),new PieceSet("BlindMiddle.swf",LanguageSelector.EJ("Middle","中級(Middle)"),100),new PieceSet("BlindHard.swf",LanguageSelector.EJ("Hard","上級(Hard)"),101),new PieceSet("BlindExtreme.swf",LanguageSelector.EJ("Extreme","超級(Extreme)"),102));
      
      public static var pieceSets34:Array = new Array(new PieceSet("3x4Rainbow.swf",LanguageSelector.EJ("Designed by Madoka","北尾まどか オリジナルデザイン"),0),new PieceSet("3x4Dobutsu.swf",LanguageSelector.EJ("Designed by pieco","piecodesign (どうぶつしょうぎ)"),1),new PieceSet("3x4Hidetchi.swf",LanguageSelector.EJ("Designed by Hidetchi","Hidetchi 欧州デザイン"),2));
       
      
      private var _sizeFactor:Number = 1.0;
      
      private var _originalWidth:int = 784;
      
      private var _originalHeight:int = 476;
      
      private var _komadaiW:int;
      
      private var _komadaiH:int;
      
      private var _1756311200board_back:Class;
      
      private var _1756639407board_masu:Class;
      
      private var emptyImage:Class;
      
      private var deadSquare:Class;
      
      private var board_scoord_e:Class;
      
      private var board_gcoord_e:Class;
      
      private var board_shand:Class;
      
      private var board_ghand:Class;
      
      private var board_bg:Class;
      
      private var _board_classes:Array;
      
      private var white:Class;
      
      private var white_r:Class;
      
      private var black:Class;
      
      private var black_r:Class;
      
      private var _currentPieceSet:PieceSet;
      
      private var sound_piece:Class;
      
      private var _sound_piece:Sound;
      
      private var sound_piece_double:Class;
      
      private var _sound_piece_double:Sound;
      
      private var sound_piece34:Class;
      
      private var _sound_piece34:Sound;
      
      private const IMAGE_DIRECTORY:String = "https://81dojo.com/dojo/images/";
      
      public var handBoxes:Array;
      
      public var infoBoxes:Array;
      
      public var name_labels:Array;
      
      private var _info_labels:Array;
      
      private var _turn_symbols:Array;
      
      public var timers:Array;
      
      private var _avatar_images:Array;
      
      private var _player_flags:Array;
      
      private var _avatar_marks:Array;
      
      private var _typing_indicators:Array;
      
      private var _promotionWindow:PromotionWindow;
      
      private var _cells:Array;
      
      private var _board_bg_image:Image;
      
      private var _board_back_image:Image;
      
      private var _board_masu_image:Image;
      
      private var _board_coord_image:Image;
      
      private var _board_shand_image:Image;
      
      private var _board_ghand_image:Image;
      
      private var _board_coord_classes:Array;
      
      private var _playerMoveCallback:Function;
      
      private var _timeoutCallback:Function;
      
      private var _timerLagCallback:Function;
      
      private var _addMyArrowCallback:Function;
      
      private var _hoverPieceCallback:Function;
      
      private var _grabPieceCallback:Function;
      
      private var _1959121648kifu_list:Array;
      
      public var kifu_list_self:Array;
      
      private var _arrows:Array;
      
      private var _from:Point;
      
      private var _to:Point;
      
      private var _position:Kyokumen;
      
      private var _last_pos:Kyokumen;
      
      private var _player_infos:Array;
      
      private var _my_turn:int;
      
      private var _in_game:Boolean;
      
      private var _client_timeout:Boolean;
      
      private var _game:Object;
      
      private var _selected_square:Square;
      
      private var _last_to_square:Square;
      
      private var _last_from_square:Square;
      
      private var _oppo_selected_square:Square;
      
      private var _arrow_from_type:int;
      
      private var _arrow_from:Point;
      
      private var _arrow_to:Point;
      
      private var _pieceGrab:Boolean = false;
      
      private var _grabbedPiece:Image;
      
      private var _hoverImage:Image;
      
      private var _hovenRower:int;
      
      private var _hoverPiece:int;
      
      private var _centerX:int;
      
      private var _centerY:int;
      
      private var _hoverTimer:Timer;
      
      public var kid:int;
      
      public var piece_type:int = 0;
      
      public var piece_type34:int = 1;
      
      public var hold_piece:Boolean = true;
      
      public var highlight_movable:Boolean = false;
      
      public var gameType:String;
      
      public var superior:int = 0;
      
      public var piece_sound_play:Boolean = true;
      
      public var post_game:Boolean = false;
      
      public var isPlayer:Boolean = false;
      
      public var isStudyHost:Boolean = false;
      
      public var isSubHost:Boolean = false;
      
      public var onListen:Boolean = false;
      
      public var viewing:Boolean = false;
      
      public var studyOrigin:int;
      
      public var study_list:Array;
      
      public var since_last_move:int = 0;
      
      public var studyOn:Boolean = false;
      
      public var rematch:Array;
      
      public var sendHover:Boolean = false;
      
      public var isRelay:Boolean = false;
      
      public var circleEnabled:Boolean = false;
      
      private var _time_sente:int;
      
      private var _time_gote:int;
      
      public function Board()
      {
         var _loc4_:GameTimer = null;
         var _loc5_:SWFLoader = null;
         var _loc6_:Image = null;
         var _loc7_:Canvas = null;
         var _loc8_:TypingIndicator = null;
         var _loc9_:Label = null;
         var _loc10_:Label = null;
         var _loc11_:Canvas = null;
         this._1756311200board_back = Board_board_back;
         this._1756639407board_masu = Board_board_masu;
         this.emptyImage = Board_emptyImage;
         this.deadSquare = Board_deadSquare;
         this.board_scoord_e = Board_board_scoord_e;
         this.board_gcoord_e = Board_board_gcoord_e;
         this.board_shand = Board_board_shand;
         this.board_ghand = Board_board_ghand;
         this.board_bg = Board_board_bg;
         this.white = Board_white;
         this.white_r = Board_white_r;
         this.black = Board_black;
         this.black_r = Board_black_r;
         this._currentPieceSet = pieceSets[0];
         this.sound_piece = Board_sound_piece;
         this._sound_piece = new this.sound_piece();
         this.sound_piece_double = Board_sound_piece_double;
         this._sound_piece_double = new this.sound_piece_double();
         this.sound_piece34 = Board_sound_piece34;
         this._sound_piece34 = new this.sound_piece34();
         this._board_bg_image = new Image();
         this._board_back_image = new Image();
         this._board_masu_image = new Image();
         this._board_coord_image = new Image();
         this._board_shand_image = new Image();
         this._board_ghand_image = new Image();
         this._board_coord_classes = [];
         this._1959121648kifu_list = [];
         this.kifu_list_self = [];
         this._arrows = [];
         this._player_infos = new Array();
         this._arrow_to = new Point();
         this._grabbedPiece = new Image();
         this._hoverImage = new Image();
         this._hoverTimer = new Timer(100,1);
         this.rematch = new Array(2);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.addEventListener(ContextMenuEvent.MENU_SELECT,this._rightClick);
         this.contextMenu = _loc1_;
         super();
         this.width = this._originalWidth;
         this.height = this._originalHeight;
         var _loc2_:DropShadowFilter = new DropShadowFilter(7,45,0,0.5);
         this._board_bg_image.source = this.board_bg;
         this._board_bg_image.setStyle("borderStyle","solid");
         this._board_bg_image.setStyle("borderColor",8947848);
         this._board_back_image.source = this.board_back;
         this._board_back_image.filters = [_loc2_];
         this._board_masu_image.source = this.board_masu;
         this._board_masu_image.smooth = true;
         this._board_coord_image.smooth = true;
         this._board_shand_image.source = this.board_shand;
         this._board_ghand_image.source = this.board_ghand;
         this._board_shand_image.filters = [_loc2_];
         this._board_ghand_image.filters = [_loc2_];
         addChild(this._board_bg_image);
         addChild(this._board_back_image);
         addChild(this._board_masu_image);
         addChild(this._board_coord_image);
         addChild(this._board_shand_image);
         addChild(this._board_ghand_image);
         this.infoBoxes = new Array(2);
         this.name_labels = new Array(2);
         this._info_labels = new Array(2);
         this._turn_symbols = new Array(2);
         this.timers = new Array(2);
         this._avatar_images = new Array(2);
         this._player_flags = new Array(2);
         this._avatar_marks = new Array(2);
         this._typing_indicators = new Array(2);
         this._board_coord_classes = new Array(this.board_scoord_e,this.board_gcoord_e);
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            _loc4_ = new GameTimer();
            _loc4_.addEventListener(GameTimer.CHECK_TIMEOUT,this._checkTimeout);
            _loc4_.addEventListener(GameTimer.TIMER_LAG,this._checkTimerLag);
            _loc4_.x = _loc3_ == 0?Number(609):Number(73);
            _loc4_.y = 222;
            this.timers[_loc3_] = _loc4_;
            addChild(_loc4_);
            _loc5_ = new SWFLoader();
            _loc5_.width = 56;
            _loc5_.height = 44;
            _loc5_.x = _loc3_ == 0?Number(716):Number(10);
            _loc5_.y = _loc3_ == 0?Number(214):Number(217);
            _loc5_.addEventListener(MouseEvent.CLICK,this._handleFlagClick);
            this._player_flags[_loc3_] = _loc5_;
            addChild(_loc5_);
            _loc6_ = new Image();
            _loc6_.x = 2;
            _loc6_.y = _loc3_ == 0?Number(142):Number(4);
            _loc6_.smooth = true;
            this._turn_symbols[_loc3_] = _loc6_;
            _loc7_ = new Canvas();
            _loc7_.x = 14;
            _loc7_.y = _loc3_ == 0?Number(6):Number(52);
            _loc7_.width = 128;
            _loc7_.height = 128;
            this._avatar_images[_loc3_] = _loc7_;
            _loc8_ = new TypingIndicator();
            this._typing_indicators[_loc3_] = _loc8_;
            _loc9_ = new Label();
            _loc9_.setStyle("fontSize",12);
            _loc9_.setStyle("fontWeight","bold");
            _loc9_.x = _loc6_.x + 20;
            _loc9_.y = _loc6_.y + 5;
            _loc9_.truncateToFit = false;
            _loc9_.doubleClickEnabled = true;
            this.name_labels[_loc3_] = _loc9_;
            _loc10_ = new Label();
            _loc10_.setStyle("fontSize",11);
            _loc10_.x = _loc9_.x;
            _loc10_.y = _loc9_.y + 20;
            this._info_labels[_loc3_] = _loc10_;
            _loc11_ = new Canvas();
            _loc11_.setStyle("backgroundColor",14544520);
            _loc11_.setStyle("borderStyle","solid");
            _loc11_.setStyle("borderThickness",2);
            _loc11_.setStyle("borderColor",13421772);
            _loc11_.setStyle("backgroundImage",this.IMAGE_DIRECTORY + "windowBg-white.jpg");
            _loc11_.horizontalScrollPolicy = "off";
            _loc11_.verticalScrollPolicy = "off";
            _loc11_.width = 160;
            _loc11_.height = 190;
            _loc11_.x = _loc3_ == 0?Number(615):Number(7);
            _loc11_.y = _loc3_ == 0?Number(16):Number(267);
            _loc11_.addChild(_loc6_);
            _loc11_.addChild(_loc9_);
            _loc11_.addChild(_loc10_);
            _loc11_.addChild(_loc7_);
            this.infoBoxes[_loc3_] = _loc11_;
            addChild(_loc11_);
            _loc3_++;
         }
         defaultNameLabelColor = _loc9_.getStyle("color");
         this._arrows[ARROWS_SELF] = [];
         this._arrows[ARROWS_PUBLIC] = [];
         this._hoverImage.alpha = 0.3;
         this._hoverImage.filters = [new ColorMatrixFilter([0,0,0,0,0,0.25,0.5,0.25,0,0,0,0,0,0,0,0,0,0,1,0])];
         this._grabbedPiece.mouseEnabled = false;
         this._grabbedPiece.mouseChildren = false;
         this._grabbedPiece.smooth = true;
      }
      
      private function _handleFlagClick(param1:MouseEvent) : void
      {
         this._player_flags[0].source = null;
         this._player_flags[1].source = null;
      }
      
      public function layoutBoard() : void
      {
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:Canvas = null;
         this._currentPieceSet = this._findPieceSet();
         nRow = !!this.is34()?4:9;
         nCol = !!this.is34()?3:9;
         var _loc1_:int = 410 * this._sizeFactor;
         var _loc2_:int = (!!this.is34()?476:454) * this._sizeFactor;
         this._komadaiW = !!this.is34()?int(_loc1_):int(170 * this._sizeFactor);
         this._komadaiH = (!!this.is34()?75:200) * this._sizeFactor;
         var _loc3_:int = 170 * this._sizeFactor + 15;
         var _loc4_:int = !!this.is34()?0:10;
         handX0 = !!this.is34()?int(_loc3_):int(_loc3_ + _loc1_ + 10);
         handY0 = !!this.is34()?398:int(_loc4_ + _loc2_ - this._komadaiH);
         handX1 = !!this.is34()?int(_loc3_):7;
         handY1 = !!this.is34()?3:10;
         squaresEdgeX = _loc3_ + (!!this.is34()?93:10) * this._sizeFactor;
         squaresEdgeY = _loc4_ + (!!this.is34()?88:10) * this._sizeFactor;
         if(this._cells)
         {
            for each(_loc6_ in this._cells)
            {
               for each(_loc7_ in _loc6_)
               {
                  if(_loc7_ != null)
                  {
                     removeChild(_loc7_);
                  }
               }
            }
         }
         if(this.handBoxes)
         {
            this.handBoxes[0].removeAllChildren();
            removeChild(this.handBoxes[0]);
            this.handBoxes[1].removeAllChildren();
            removeChild(this.handBoxes[1]);
         }
         Square.sizeX = (!!this.is34()?75:43) * this._sizeFactor;
         Square.sizeY = (!!this.is34()?75:48) * this._sizeFactor;
         this._grabbedPiece.width = Square.sizeX;
         this._grabbedPiece.height = Square.sizeY;
         this._cells = new Array(9);
         while(_loc5_ < 9)
         {
            this._cells[_loc5_] = new Array(9);
            _loc5_++;
         }
         this._board_back_image.width = _loc1_;
         this._board_back_image.height = _loc2_;
         this._board_back_image.x = _loc3_;
         this._board_back_image.y = _loc4_;
         this._board_masu_image.width = _loc1_;
         this._board_masu_image.height = _loc2_;
         this._board_masu_image.x = _loc3_;
         this._board_masu_image.y = _loc4_;
         this._board_coord_image.width = _loc1_;
         this._board_coord_image.height = _loc2_;
         this._board_coord_image.x = _loc3_;
         this._board_coord_image.y = _loc4_;
         this._board_shand_image.width = this._komadaiW;
         this._board_shand_image.height = this._komadaiH;
         this._board_shand_image.x = handX0;
         this._board_shand_image.y = handY0;
         this._board_ghand_image.width = this._komadaiW;
         this._board_ghand_image.height = this._komadaiH;
         this._board_ghand_image.x = handX1;
         this._board_ghand_image.y = handY1;
         this.handBoxes = new Array(2);
         _loc5_ = 0;
         while(_loc5_ < 2)
         {
            _loc8_ = new Canvas();
            _loc8_.width = this._komadaiW;
            _loc8_.height = this._komadaiH;
            _loc8_.x = _loc5_ == 0?Number(handX0):Number(handX1);
            _loc8_.y = _loc5_ == 0?Number(handY0):Number(handY1);
            this.handBoxes[_loc5_] = _loc8_;
            _loc8_.addEventListener(MouseEvent.CLICK,this._handTableMouseUpHandler);
            addChild(_loc8_);
            _loc5_++;
         }
      }
      
      public function resetBoard() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Square = null;
         this._board_back_image.source = !!this._currentPieceSet.boardBackClass?this._currentPieceSet.boardBackClass:!!this.is34()?null:this.board_back;
         this._board_masu_image.source = !!this._currentPieceSet.boardMasuClass?this._currentPieceSet.boardMasuClass:!!this.is34()?null:this.board_masu;
         this._board_coord_image.source = !!this._currentPieceSet.getCoordClass(0)?this._currentPieceSet.getCoordClass(this._my_turn == Kyokumen.SENTE?0:1):!!this.is34()?null:this._board_coord_classes[this._my_turn == Kyokumen.SENTE?0:1];
         this._board_shand_image.source = !!this._currentPieceSet.boardShandClass?this._currentPieceSet.boardShandClass:!!this.is34()?null:this.board_shand;
         this._board_ghand_image.source = !!this._currentPieceSet.boardGhandClass?this._currentPieceSet.boardGhandClass:!!this.is34()?null:this.board_ghand;
         var _loc1_:int = 0;
         while(_loc1_ < 9)
         {
            _loc2_ = 0;
            while(_loc2_ < 9)
            {
               if(this._cells[_loc1_][_loc2_] != null)
               {
                  removeChild(this._cells[_loc1_][_loc2_]);
               }
               _loc2_++;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < nRow)
         {
            _loc2_ = 0;
            while(_loc2_ < nCol)
            {
               if(this._my_turn == Kyokumen.SENTE)
               {
                  _loc3_ = new Square(9 - _loc2_,_loc1_ + 1);
                  this._cells[_loc1_][_loc2_] = _loc3_;
               }
               else
               {
                  _loc3_ = new Square(10 - nCol + _loc2_,nRow - _loc1_);
                  this._cells[nRow - _loc1_ - 1][nCol - _loc2_ - 1] = _loc3_;
               }
               if(this.gameType.match(/mini$/) || this.gameType == "vakyoto")
               {
                  if(_loc1_ <= 1 || _loc1_ >= 7 || _loc2_ <= 1 || _loc2_ >= 7)
                  {
                     _loc3_.dead = true;
                  }
               }
               else if(this.gameType == "va5656")
               {
                  if(_loc1_ == 0 || _loc1_ == 8 || _loc2_ <= 1 || _loc2_ >= 7)
                  {
                     _loc3_.dead = true;
                  }
                  if(this._my_turn == Kyokumen.SENTE)
                  {
                     if(_loc1_ == 1)
                     {
                        _loc3_.dead = true;
                     }
                  }
                  else if(_loc1_ == 7)
                  {
                     _loc3_.dead = true;
                  }
               }
               else if(this.gameType == "vajudkins")
               {
                  if(_loc1_ == 0 || _loc1_ == 8 || _loc2_ == 0 || _loc2_ == 8)
                  {
                     _loc3_.dead = true;
                  }
                  if(this._my_turn == Kyokumen.SENTE)
                  {
                     if(_loc1_ == 1 || _loc2_ == 7)
                     {
                        _loc3_.dead = true;
                     }
                  }
                  else if(_loc1_ == 7 || _loc2_ == 1)
                  {
                     _loc3_.dead = true;
                  }
               }
               else if(this.gameType == "va33")
               {
                  if(_loc1_ <= 2 || _loc1_ >= 6 || _loc2_ <= 2 || _loc2_ >= 6)
                  {
                     _loc3_.dead = true;
                  }
               }
               _loc3_.x = squaresEdgeX + _loc2_ * Square.sizeX + 1;
               _loc3_.y = squaresEdgeY + _loc1_ * Square.sizeY + 1;
               _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this._squareMouseDownHandler);
               _loc3_.addEventListener(MouseEvent.MOUSE_UP,this._squareMouseUpHandler);
               _loc3_.addEventListener(MouseEvent.ROLL_OUT,this._squareMouseOutHandler);
               _loc3_.addEventListener(MouseEvent.ROLL_OVER,this._squareMouseOverHandler);
               _loc3_.addEventListener(Square.STAY,this._squareStayHandler);
               addChild(_loc3_);
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function initializeKifu() : void
      {
         this.kifu_list = [];
         this.kifu_list_self = [];
         var _loc1_:Movement = new Movement();
         this.kifu_list.push(_loc1_);
         this.study_list = [];
      }
      
      private function _initializeKyokumen(param1:String) : void
      {
         if(this.gameType == "va5656" || this.gameType == "vajudkins")
         {
            this._position = new Kyokumen(param1,3,6);
            this._last_pos = new Kyokumen(param1,3,6);
         }
         else if(this.gameType == "va33")
         {
            this._position = new Kyokumen(param1,3,5);
            this._last_pos = new Kyokumen(param1,3,5);
         }
         else if(this.gameType == "vakyoto")
         {
            this._position = new Kyokumen(param1,1,7);
            this._last_pos = new Kyokumen(param1,1,7);
         }
         else if(this.gameType == "vazoo")
         {
            this._position = new Kyokumen(param1,0,3);
            this._last_pos = new Kyokumen(param1,0,3);
         }
         else
         {
            this._position = new Kyokumen(param1);
            this._last_pos = new Kyokumen(param1);
         }
      }
      
      public function setPosition(param1:Kyokumen) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Koma = null;
         var _loc6_:int = 0;
         var _loc7_:Komadai = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:Square = null;
         this._position = param1;
         var _loc2_:int = 0;
         while(_loc2_ < nRow)
         {
            _loc4_ = 0;
            while(_loc4_ < nCol)
            {
               _loc5_ = this._position.getKomaAt(new Point(_loc4_,_loc2_));
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.type;
                  if(_loc6_ == Koma.OU && _loc5_.ownerPlayer == this.superior)
                  {
                     _loc6_ = _loc6_ + Koma.PROMOTE;
                  }
                  this._cells[_loc2_][_loc4_].source = this._currentPieceSet.getPieceClass(_loc5_.ownerPlayer == this._my_turn?0:1,_loc6_);
               }
               else
               {
                  this._cells[_loc2_][_loc4_].source = this.emptyImage;
               }
               if(this._cells[_loc2_][_loc4_].dead)
               {
                  this._cells[_loc2_][_loc4_].source = !!this._currentPieceSet.deadSquareClass?this._currentPieceSet.deadSquareClass:this.deadSquare;
               }
               _loc4_++;
            }
            _loc2_++;
         }
         this.handBoxes[0].removeAllChildren();
         this.handBoxes[1].removeAllChildren();
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            _loc7_ = this._position.getKomadai(_loc3_);
            _loc8_ = _loc7_.getNumOfKoma(0) + _loc7_.getNumOfKoma(1) + _loc7_.getNumOfKoma(2) + _loc7_.getNumOfKoma(7);
            _loc9_ = 0;
            _loc10_ = 0;
            while(_loc10_ < 8)
            {
               if(_loc7_.getNumOfKoma(_loc10_) > 0)
               {
                  _loc11_ = 0;
                  while(_loc11_ < _loc7_.getNumOfKoma(_loc10_))
                  {
                     _loc12_ = new Square(Kyokumen.HAND + _loc10_,Kyokumen.HAND + _loc10_);
                     _loc12_.addEventListener(MouseEvent.MOUSE_DOWN,this._handMouseDownHandler);
                     _loc12_.addEventListener(MouseEvent.MOUSE_UP,this._handMouseUpHandler);
                     _loc12_.source = this._currentPieceSet.getPieceClass(_loc3_ == this._my_turn?0:1,_loc10_);
                     if(this.is34())
                     {
                        _loc12_.x = this._komadaiW / 2 - Square.sizeX / 2 * _loc8_ + Square.sizeX * _loc9_;
                        _loc12_.y = 0;
                     }
                     else
                     {
                        _loc12_.x = 10 + (this._komadaiW - 20) / 2 * ((_loc10_ - 1) % 2) + (this._komadaiW / (_loc10_ == 7?1.2:2) - 35) * _loc11_ / _loc7_.getNumOfKoma(_loc10_);
                        _loc12_.y = 10 + (this._komadaiH - 20) / 4 * int((_loc10_ - 1) / 2);
                     }
                     this.handBoxes[_loc3_ == this._my_turn?0:1].addChild(_loc12_);
                     _loc9_ = _loc9_ + 1;
                     _loc11_++;
                  }
               }
               _loc10_++;
            }
            _loc3_++;
         }
      }
      
      public function makeMove(param1:String, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Movement = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:SoundTransform = null;
         if(!param2)
         {
            _loc5_ = this._position.generateMovementFromString(param1);
            _loc5_.n = this.kifu_list_self.length;
            _loc5_.branch = true;
            this.kifu_list_self.push(_loc5_);
         }
         else
         {
            _loc5_ = this._last_pos.generateMovementFromString(param1);
            if(!this.viewing)
            {
               _loc6_ = this._my_turn == this._last_pos.turn?0:1;
               _loc7_ = _loc5_.time;
               if(_loc7_ > 0)
               {
                  this.timers[_loc6_].accumulateTime(_loc7_);
               }
               this.timers[_loc6_].suspend();
               this.timers[1 - _loc6_].resume();
            }
            _loc5_.n = this.kifu_list.length;
            this.kifu_list.push(_loc5_);
         }
         if(param2)
         {
            this._last_pos.move(_loc5_);
            if(this.piece_sound_play && param3)
            {
               _loc4_ = this._last_pos.isSoundDouble(_loc5_.to);
            }
            if(this.onListen)
            {
               this._position.loadFromString(this._last_pos.toString());
            }
         }
         else
         {
            this._position.move(_loc5_);
            if(this.piece_sound_play && param3)
            {
               _loc4_ = this._position.isSoundDouble(_loc5_.to);
            }
         }
         if(this._oppo_selected_square)
         {
            this._oppo_selected_square.setStyle("backgroundColor",undefined);
            this._oppo_selected_square = null;
         }
         if(!param2 || this.onListen)
         {
            if(this._last_to_square != null)
            {
               this._last_to_square.setStyle("backgroundColor",undefined);
            }
            if(this._last_from_square != null)
            {
               this._last_from_square.setStyle("backgroundColor",undefined);
            }
            this.setPosition(this._position);
            if(this._selected_square != null)
            {
               this._selected_square.showPiece();
            }
            this._last_to_square = this._cells[_loc5_.to.y][_loc5_.to.x];
            this._last_to_square.setStyle("backgroundColor","0xFF5555");
            if(_loc5_.from.x < Kyokumen.HAND)
            {
               this._last_from_square = this._cells[_loc5_.from.y][_loc5_.from.x];
               this._last_from_square.setStyle("backgroundColor","0xFF5555");
            }
            if(contains(this._hoverImage))
            {
               removeChild(this._hoverImage);
            }
            this._from = null;
         }
         if(this.piece_sound_play && param3)
         {
            _loc8_ = new SoundTransform(_loc5_.pieceSoundVolume(),0);
            if(this.is34())
            {
               this._sound_piece34.play(0,1);
            }
            else if(_loc4_)
            {
               this._sound_piece_double.play(0,1,_loc8_);
            }
            else
            {
               this._sound_piece.play(0,1,_loc8_);
            }
         }
      }
      
      public function updateMyMoveTime(param1:int) : void
      {
         this.kifu_list[this.kifu_list.length - 1].time = param1;
         this.timers[0].accumulateTime(param1);
      }
      
      public function playOnlyPieceSoundForReplay(param1:Movement) : void
      {
         if(!this.piece_sound_play)
         {
            return;
         }
         var _loc2_:SoundTransform = new SoundTransform(param1.pieceSoundVolume(),0);
         if(this.is34())
         {
            this._sound_piece34.play(0,1);
         }
         else if(this._position.isSoundDouble(param1.to))
         {
            this._sound_piece_double.play(0,1,_loc2_);
         }
         else
         {
            this._sound_piece.play(0,1,_loc2_);
         }
      }
      
      public function setMoveCallback(param1:Function) : void
      {
         this._playerMoveCallback = param1;
      }
      
      public function setTimeoutCallback(param1:Function) : void
      {
         this._timeoutCallback = param1;
      }
      
      public function setTimerLagCallback(param1:Function) : void
      {
         this._timerLagCallback = param1;
      }
      
      public function setAddMyArrowCallback(param1:Function) : void
      {
         this._addMyArrowCallback = param1;
      }
      
      public function setHoverPieceCallback(param1:Function) : void
      {
         this._hoverPieceCallback = param1;
      }
      
      public function setGrabPieceCallback(param1:Function) : void
      {
         this._grabPieceCallback = param1;
      }
      
      public function startGame(param1:String, param2:int, param3:Object, param4:Array = null) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Movement = null;
         this._game = param3;
         this.rematch[0] = false;
         this.rematch[1] = false;
         this.isPlayer = true;
         this._player_infos[0] = param3.black;
         this._player_infos[1] = param3.white;
         this._my_turn = param2;
         if(this._game.game_name.match(/\-\-RL\-\d+\-\d+$/))
         {
            this.isRelay = true;
         }
         this.resetBoard();
         this.initializeKifu();
         this._initializeKyokumen(param1);
         this.setPosition(this._position);
         this._arrangeInfos();
         this._board_coord_image.visible = false;
         this.timers[0].reset(this._game.total,this._game.byoyomi);
         this.timers[1].reset(this._game.total,this._game.byoyomi);
         this.timers[this._my_turn == this._position.turn?0:1].start();
         if(param4)
         {
            if(param4.length > 0)
            {
               for each(_loc5_ in param4)
               {
                  if(_loc5_.move == "%TORYO")
                  {
                     _loc6_ = new Movement(this.kifu_list.length);
                     _loc6_.setGameEnd(this._last_pos.turn,Movement.RESIGN,parseInt(_loc5_.time.substr(1)));
                     this.kifu_list.push(_loc6_);
                     this.timers[this._my_turn == this._last_pos.turn?0:1].accumulateTime(parseInt(_loc5_.time.substr(1)));
                  }
                  else
                  {
                     this.makeMove(_loc5_.move + "," + _loc5_.time,true,false);
                  }
               }
            }
         }
         this._in_game = true;
         this._client_timeout = false;
         this.studyOrigin = 0;
      }
      
      private function _arrangeInfos() : void
      {
         this._turn_symbols[0].source = this._my_turn == Kyokumen.SENTE?this.black:this.white;
         this._turn_symbols[1].source = this._my_turn == Kyokumen.SENTE?this.white_r:this.black_r;
         this.name_labels[0].text = this._player_infos[this._my_turn].name;
         this.name_labels[1].text = this._player_infos[1 - this._my_turn].name;
         this._info_labels[0].text = this._player_infos[this._my_turn].description;
         this._info_labels[1].text = this._player_infos[1 - this._my_turn].description;
         var _loc1_:Image = new Image();
         _loc1_.source = this._player_infos[this._my_turn].avatar;
         _loc1_.smooth = true;
         this._avatar_images[0].addChild(_loc1_);
         if(!this.viewing)
         {
            this._avatar_images[0].addChild(InfoFetcher.medalCanvas(this._player_infos[this._my_turn]));
            this._avatar_marks[0] = new AvatarStatusMark();
            this._avatar_marks[0].loadPlayer(this._player_infos[this._my_turn]);
            this._avatar_images[0].addChild(this._avatar_marks[0]);
            this._avatar_images[0].addChild(this._typing_indicators[0]);
         }
         _loc1_ = new Image();
         _loc1_.source = this._player_infos[1 - this._my_turn].avatar;
         _loc1_.smooth = true;
         this._avatar_images[1].addChild(_loc1_);
         if(!this.viewing)
         {
            this._avatar_images[1].addChild(InfoFetcher.medalCanvas(this._player_infos[1 - this._my_turn]));
            this._avatar_marks[1] = new AvatarStatusMark();
            this._avatar_marks[1].loadPlayer(this._player_infos[1 - this._my_turn]);
            this._avatar_images[1].addChild(this._avatar_marks[1]);
            this._avatar_images[1].addChild(this._typing_indicators[1]);
         }
         this._player_flags[0].source = this._player_infos[this._my_turn].flag_m;
         this._player_flags[1].source = this._player_infos[1 - this._my_turn].flag_m;
      }
      
      public function flipBoard() : void
      {
         var _loc5_:int = 0;
         var _loc6_:BoardArrow = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc1_:Array = new Array(2);
         var _loc2_:Array = new Array(2);
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            _loc1_[_loc3_] = this.infoBoxes[_loc3_].getStyle("borderColor");
            _loc2_[_loc3_] = this.name_labels[_loc3_].getStyle("color");
            _loc3_++;
         }
         while(this._avatar_images[0].numChildren > 0)
         {
            this._avatar_images[0].removeChildAt(0);
         }
         while(this._avatar_images[1].numChildren > 0)
         {
            this._avatar_images[1].removeChildAt(0);
         }
         if(this._last_to_square != null)
         {
            _loc7_ = this._last_to_square.coord_x;
            _loc8_ = this._last_to_square.coord_y;
         }
         if(this._last_from_square != null)
         {
            _loc9_ = this._last_from_square.coord_x;
            _loc10_ = this._last_from_square.coord_y;
         }
         var _loc4_:GameTimer = this.timers[0];
         this.timers[0] = this.timers[1];
         this.timers[1] = _loc4_;
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            this.timers[_loc3_].x = _loc3_ == 0?609:73;
            _loc3_++;
         }
         this._my_turn = 1 - this._my_turn;
         this._arrangeInfos();
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            this.infoBoxes[_loc3_].setStyle("borderColor",_loc1_[1 - _loc3_]);
            this.name_labels[_loc3_].setStyle("color",_loc2_[1 - _loc3_]);
            _loc3_++;
         }
         this.resetBoard();
         this.setPosition(this._position);
         if(this._last_to_square != null)
         {
            this._last_to_square = this._cells[_loc8_ - 1][9 - _loc7_];
            this._last_to_square.setStyle("backgroundColor","0xCC3333");
         }
         if(this._last_from_square != null)
         {
            this._last_from_square = this._cells[_loc10_ - 1][9 - _loc9_];
            this._last_from_square.setStyle("backgroundColor","0xFF5555");
         }
         this.cancelSquareSelect();
         if(this.isStudyHost || this.onListen)
         {
            _loc5_ = ARROWS_PUBLIC;
         }
         else
         {
            _loc5_ = ARROWS_SELF;
         }
         for each(_loc6_ in this._arrows[_loc5_])
         {
            _loc6_.erase();
            removeChild(_loc6_);
            _loc6_.drawArrow(this._my_turn);
            addChild(_loc6_);
         }
         if(contains(this._hoverImage))
         {
            this._hoverImage.source = null;
         }
      }
      
      public function endGame() : void
      {
         this.timers[0].stop();
         this.timers[1].stop();
         if(this.name_labels[0].getStyle("color") != 10066329)
         {
            this.name_labels[0].setStyle("color",undefined);
         }
         if(this.name_labels[1].getStyle("color") != 10066329)
         {
            this.name_labels[1].setStyle("color",undefined);
         }
         this.cancelSquareSelect();
         this._in_game = false;
         this._client_timeout = false;
         this._board_coord_image.visible = true;
      }
      
      private function _rightClick(param1:ContextMenuEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Square = null;
         this.cancelSquareSelect();
         for each(_loc2_ in this._cells)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc3_.mouseOut();
            }
         }
      }
      
      public function cancelSquareSelect() : void
      {
         if(this._selected_square != null)
         {
            this._selected_square.setStyle("backgroundColor",undefined);
            this._selected_square.showPiece();
            if(this.isPlayer && !this.post_game)
            {
               this._grabPieceCallback(0,0);
            }
            this._endGrab();
            stage.frameRate = FRAME_RATE_SLOW;
            if(this.highlight_movable)
            {
               this._hideMovableSquares();
            }
            this._pieceGrab = false;
            this._from = null;
            this._selected_square = null;
         }
      }
      
      public function closeGame() : void
      {
         if(this._cells[0][0] != null)
         {
            this.replayMoves(0,true);
         }
         var _loc1_:int = 0;
         while(_loc1_ <= 1)
         {
            this.infoBoxes[_loc1_].setStyle("borderColor",13421772);
            this._player_infos[_loc1_] = null;
            this.timers[_loc1_].stop();
            this.name_labels[_loc1_].setStyle("color",undefined);
            this.name_labels[_loc1_].text = "";
            this._info_labels[_loc1_].text = "";
            while(this._avatar_images[_loc1_].numChildren > 0)
            {
               this._avatar_images[_loc1_].removeChildAt(0);
            }
            this._player_flags[_loc1_].source = null;
            _loc1_++;
         }
         this.isPlayer = false;
         this.study_list = [];
         this.post_game = false;
         this.since_last_move = 0;
         this.studyOn = false;
         this.isStudyHost = false;
         this.isSubHost = false;
         this.isRelay = false;
         this.clearArrows(ARROWS_PUBLIC);
         this.clearArrows(ARROWS_SELF);
         this.cancelSquareSelect();
         if(contains(this._hoverImage))
         {
            removeChild(this._hoverImage);
         }
         this._hoverImage.source = null;
         if(this._oppo_selected_square)
         {
            this._oppo_selected_square.setStyle("backgroundColor",undefined);
            this._oppo_selected_square = null;
         }
         this._board_bg_image.filters = null;
         this._board_coord_image.visible = true;
      }
      
      public function timeout() : void
      {
         var _loc1_:int = this._my_turn == this._position.turn?0:1;
         this.timers[_loc1_].timeout();
      }
      
      public function clientTimeout() : void
      {
         this._client_timeout = true;
      }
      
      public function get inGame() : Boolean
      {
         return this._in_game;
      }
      
      public function get playerInfos() : Array
      {
         return this._player_infos;
      }
      
      public function get my_turn() : int
      {
         return this._my_turn;
      }
      
      public function set my_turn(param1:int) : void
      {
         this._my_turn = param1;
      }
      
      public function get position() : Kyokumen
      {
         return this._position;
      }
      
      public function get last_pos() : Kyokumen
      {
         return this._last_pos;
      }
      
      public function setPieceType(param1:int = 0, param2:int = 0) : void
      {
         this.piece_type = param1;
         this.piece_type34 = Math.min(param2,2);
         this._currentPieceSet = this._findPieceSet();
         this._board_back_image.source = !!this._currentPieceSet.boardBackClass?this._currentPieceSet.boardBackClass:!!this.is34()?null:this.board_back;
         this._board_masu_image.source = !!this._currentPieceSet.boardMasuClass?this._currentPieceSet.boardMasuClass:!!this.is34()?null:this.board_masu;
         this._board_coord_image.source = !!this._currentPieceSet.getCoordClass(0)?this._currentPieceSet.getCoordClass(this._my_turn == Kyokumen.SENTE?0:1):!!this.is34()?null:this._board_coord_classes[this._my_turn == Kyokumen.SENTE?0:1];
         this._board_shand_image.source = !!this._currentPieceSet.boardShandClass?this._currentPieceSet.boardShandClass:!!this.is34()?null:this.board_shand;
         this._board_ghand_image.source = !!this._currentPieceSet.boardGhandClass?this._currentPieceSet.boardGhandClass:!!this.is34()?null:this.board_ghand;
         if(this._position != null)
         {
            this.setPosition(this._position);
         }
      }
      
      public function setSizeFactor(param1:Number) : void
      {
         this.scaleX = param1;
         this.scaleY = param1;
      }
      
      public function monitor(param1:String, param2:Object) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:Movement = null;
         if(_loc3_ = param1.split("\n")[0].match(/^##\[MONITOR2\]\[(.*)\] (V2|MONITOR_RESET)$/))
         {
            this.kid = parseInt(_loc3_[1]);
            this._startMonitor(param1,param2);
         }
         else if(_loc3_ = param1.split("\n")[0].match(/^##\[MONITOR2\]\[.*\] ([-+][0-9]{4}.{2})$/))
         {
            _loc4_ = param1.split("\n")[1].match(/^##\[MONITOR2\]\[.*\] (T.*)$/)[1];
            if(this.since_last_move > 0)
            {
               this.timers[this._my_turn == this._last_pos.turn?0:1].accumulateTime(-this.since_last_move);
               this.since_last_move = 0;
            }
            this.makeMove(_loc3_[1] + "," + _loc4_,true,true);
         }
         else if(param1.split("\n")[0].match(/^##\[MONITOR2\]\[.*\] %TORYO$/))
         {
            _loc4_ = param1.split("\n")[1].match(/^##\[MONITOR2\]\[.*\] (T.*)$/)[1];
            _loc5_ = new Movement(this.kifu_list.length);
            _loc5_.setGameEnd(this._last_pos.turn,Movement.RESIGN,parseInt(_loc4_.substr(1)));
            this.kifu_list.push(_loc5_);
         }
         else
         {
            return;
         }
      }
      
      private function _startMonitor(param1:String, param2:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc6_:String = null;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Movement = null;
         var _loc5_:Array = [];
         for each(_loc6_ in param1.split("\n"))
         {
            _loc9_ = _loc6_.match(/^##\[MONITOR2\]\[.*\] (.*)$/);
            if(_loc9_ != null && _loc9_[1])
            {
               _loc10_ = _loc9_[1];
               if(_loc10_.match(/^([-+][0-9]{4}.{2}|%TORYO)$/))
               {
                  _loc11_ = new Object();
                  _loc11_.move = _loc10_;
                  _loc5_.push(_loc11_);
               }
               else if(_loc10_.match(/^(T.*)$/))
               {
                  Object(_loc5_[_loc5_.length - 1]).time = _loc10_;
               }
               else if(!_loc10_.match(/SINCE_LAST_MOVE/))
               {
               }
            }
         }
         this._game = param2;
         _loc9_ = this._game.game_name.match(/^([0-9a-z]+?)_(.*)-([0-9]*)-([0-9]*)$/);
         if(_loc9_[2].match(/\-\-RL$/))
         {
            this.isRelay = true;
         }
         var _loc7_:String = this._parsePosition(param1);
         if(_loc7_ != "")
         {
            this.resetBoard();
            this.initializeKifu();
            this._initializeKyokumen(_loc7_);
            this.setPosition(this._position);
         }
         this.rematch[0] = false;
         this.rematch[1] = false;
         this._player_infos[0] = this._game.black;
         this._player_infos[1] = this._game.white;
         this._arrangeInfos();
         this.name_labels[0].setStyle("color",this._game.nameColor(this._my_turn));
         this.name_labels[1].setStyle("color",this._game.nameColor(1 - this._my_turn));
         this.timers[0].reset(this._game.total,this._game.byoyomi);
         this.timers[1].reset(this._game.total,this._game.byoyomi);
         var _loc8_:int = this._position.turn == this._my_turn?0:1;
         this.timers[_loc8_].start();
         this.timers[1 - _loc8_].stop();
         if(_loc5_.length > 0)
         {
            for each(_loc12_ in _loc5_)
            {
               if(_loc12_.move == "%TORYO")
               {
                  _loc13_ = new Movement(this.kifu_list.length);
                  _loc13_.setGameEnd(this._last_pos.turn,Movement.RESIGN,parseInt(_loc12_.time.substr(1)));
                  this.kifu_list.push(_loc13_);
                  this.timers[this._my_turn == this._last_pos.turn?0:1].accumulateTime(parseInt(_loc12_.time.substr(1)));
               }
               else
               {
                  this.makeMove(_loc12_.move + "," + _loc12_.time,true,false);
               }
            }
         }
         this.studyOrigin = 0;
      }
      
      public function startView(param1:String, param2:Game, param3:Array) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Movement = null;
         this._game = param2;
         this.kifu_list = [];
         this.kifu_list_self = [];
         if(param1 != "")
         {
            this.resetBoard();
            this.initializeKifu();
            this._initializeKyokumen(param1);
            this.setPosition(this._position);
         }
         this._my_turn = Kyokumen.SENTE;
         this._player_infos[0] = this._game.black;
         this._player_infos[1] = this._game.white;
         this._arrangeInfos();
         this.timers[0].reset(0,0);
         this.timers[1].reset(0,0);
         if(param3.length > 0)
         {
            for each(_loc4_ in param3)
            {
               if(_loc4_.move.match(/(TORYO|TIME_UP|ILLEGAL_MOVE|SENNICHITE|DISCONNECT|JISHOGI|CATCH|TRY)/))
               {
                  _loc5_ = new Movement(this.kifu_list.length);
                  switch(_loc4_.move)
                  {
                     case "%TORYO":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.RESIGN,parseInt(_loc4_.time.substr(1)));
                        break;
                     case "#TIME_UP":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.TIMEUP,0);
                        break;
                     case "#ILLEGAL_MOVE":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.ILLEGAL,0);
                        break;
                     case "#SENNICHITE":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.SENNICHITE,0);
                        break;
                     case "#OUTE_SENNICHITE":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.OUTE_SENNICHITE,0);
                        break;
                     case "#DISCONNECT":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.DISCONNECT,0);
                        break;
                     case "#JISHOGI":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.JISHOGI,0);
                        break;
                     case "#CATCH":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.CATCH,0);
                        break;
                     case "#TRY":
                        _loc5_.setGameEnd(this._last_pos.turn,Movement.TRY,0);
                  }
                  this.kifu_list.push(_loc5_);
               }
               else
               {
                  this.makeMove(_loc4_.move + "," + _loc4_.time,true,false);
               }
               this.kifu_list[this.kifu_list.length - 1].comment = _loc4_.comment;
            }
         }
      }
      
      private function _parsePosition(param1:String) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc2_:Array = param1.split("\n");
         var _loc3_:String = "";
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = _loc4_.match(/##\[MONITOR2\]\[.*\] To_Move:([\+\-])/);
            if(_loc5_ != null)
            {
               _loc3_ = _loc3_ + ("P0" + _loc5_[1] + "\n");
            }
            else
            {
               _loc5_ = _loc4_.match(/##\[MONITOR2\]\[.*\] (P[0-9+-].*)/);
               if(_loc5_ != null)
               {
                  _loc3_ = _loc3_ + (_loc5_[1] + "\n");
               }
            }
         }
         return _loc3_;
      }
      
      private function _squareMouseDownHandler(param1:MouseEvent) : void
      {
         this._arrow_from_type = BoardArrow.FROM_BOARD;
         this._arrow_from = new Point(Square(param1.currentTarget).coord_x,Square(param1.currentTarget).coord_y);
      }
      
      private function _squareMouseUpHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Koma = null;
         var _loc5_:int = 0;
         var _loc6_:Class = null;
         var _loc7_:Class = null;
         var _loc8_:Point = null;
         if(this._pieceGrab)
         {
            param1.currentTarget.mouseOut();
         }
         if(this._arrow_from == null)
         {
            return;
         }
         this._arrow_to.x = Square(param1.currentTarget).coord_x;
         this._arrow_to.y = Square(param1.currentTarget).coord_y;
         if(this._arrow_from.x != this._arrow_to.x || this._arrow_from.y != this._arrow_to.y || this.circleEnabled && param1.ctrlKey)
         {
            if(this.isPlayer && !this.post_game || this.post_game && this.onListen && !this.studyOn)
            {
               return;
            }
            this._addMyArrowCallback(this._arrow_from_type,this._arrow_from,this._arrow_to);
            this.cancelSquareSelect();
            this._arrow_from = null;
            return;
         }
         if(this._in_game && this._position.turn == this._my_turn || !this.onListen || this.onListen && this.isSubHost)
         {
            _loc2_ = param1.currentTarget.coord_x;
            _loc3_ = param1.currentTarget.coord_y;
            if(param1.currentTarget.dead)
            {
               return;
            }
            if(this._from == null)
            {
               if(this._last_from_square != null)
               {
                  this._last_from_square.setStyle("backgroundColor",undefined);
                  this._last_from_square = null;
               }
               _loc4_ = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(new Point(_loc2_,_loc3_)));
               if(_loc4_ != null && _loc4_.ownerPlayer == this._position.turn)
               {
                  param1.currentTarget.setStyle("backgroundColor","0x33CCCC");
                  if(this.hold_piece)
                  {
                     param1.currentTarget.hidePiece();
                     if(this.piece_type != 102)
                     {
                        this._startGrab(param1.currentTarget.source,mouseX - Square.sizeX / 2,mouseY - Square.sizeY / 2);
                     }
                  }
                  if(this.isPlayer && !this.post_game)
                  {
                     this._grabPieceCallback(_loc2_,_loc3_);
                  }
                  this._pieceGrab = true;
                  this._selected_square = Square(param1.currentTarget);
                  this._from = new Point(_loc2_,_loc3_);
                  if(this.highlight_movable)
                  {
                     this._showMovableSquares(this._from);
                  }
               }
            }
            else
            {
               _loc4_ = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(new Point(_loc2_,_loc3_)));
               if(_loc4_ != null && (_loc4_.ownerPlayer == this._position.turn || this._from.x >= Kyokumen.HAND))
               {
                  this.cancelSquareSelect();
               }
               else
               {
                  this._to = new Point(_loc2_,_loc3_);
                  if(this._from.x < Kyokumen.HAND && this._position.cantMove(this._position.getKomaAt(Kyokumen.translateHumanCoordinates(this._from)),this._from,this._to))
                  {
                     this.cancelSquareSelect();
                     this._to = null;
                  }
                  else if(this._position.canPromote(this._from,this._to))
                  {
                     if(this.hold_piece)
                     {
                        this._endGrab();
                     }
                     this._pieceGrab = false;
                     if(this._position.mustPromote(this._from,this._to))
                     {
                        if(!this._client_timeout)
                        {
                           if(this.isPlayer)
                           {
                              this.timers[0].suspend();
                           }
                           this._playerMoveCallback(this._from,this._to,true);
                        }
                        this._to = null;
                     }
                     else
                     {
                        _loc5_ = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(this._from)).type;
                        _loc6_ = this._currentPieceSet.getPieceClass(this._my_turn == this._position.turn?0:1,_loc5_ + Koma.PROMOTE);
                        _loc7_ = this._currentPieceSet.getPieceClass(this._my_turn == this._position.turn?0:1,_loc5_);
                        _loc8_ = parent.localToGlobal(new Point(mouseX * scaleX,mouseY * scaleY));
                        this._promotionWindow = PromotionWindow(PopUpManager.createPopUp(this,PromotionWindow,true));
                        this._promotionWindow.x = _loc8_.x - 180 / 2;
                        this._promotionWindow.y = _loc8_.y - 112;
                        this._promotionWindow.setInfo(LanguageSelector.EJ("Promote?","成りますか?"),_loc6_,_loc7_,LanguageSelector.EJ("Yes","成"),LanguageSelector.EJ("No","不成"));
                        this._promotionWindow.addEventListener("answer",this._handlePromotionAnswer);
                     }
                  }
                  else if(this.isPlayer && (this.gameType == "nr" || this.gameType == "hc" && this._my_turn == Kyokumen.SENTE) && this._position.isNifu(this._from,this._to))
                  {
                     Alert.show(LanguageSelector.EJ("Nifu. (Double Pawn.)","二歩です"),LanguageSelector.EJ("Illegal move!!","反則手"),4,this);
                     this.cancelSquareSelect();
                     this._to = null;
                  }
                  else if(this._position.isKyoto && this._from.x >= Kyokumen.HAND)
                  {
                     if(this.hold_piece)
                     {
                        this._endGrab();
                     }
                     _loc6_ = this._currentPieceSet.getPieceClass(this._my_turn == this._position.turn?0:1,Koma.typeKyotoConverted(this._from.x - Kyokumen.HAND));
                     _loc7_ = this._currentPieceSet.getPieceClass(this._my_turn == this._position.turn?0:1,this._from.x - Kyokumen.HAND);
                     _loc8_ = parent.localToGlobal(new Point(mouseX * scaleX,mouseY * scaleY));
                     this._promotionWindow = PromotionWindow(PopUpManager.createPopUp(this,PromotionWindow,true));
                     this._promotionWindow.x = _loc8_.x - 180 / 2;
                     this._promotionWindow.y = Math.max(_loc8_.y - 112,-50);
                     this._promotionWindow.setInfo(LanguageSelector.EJ("Flip over?","裏返しますか?"),_loc6_,_loc7_,LanguageSelector.EJ("Yes","はい"),LanguageSelector.EJ("No","いいえ"));
                     this._promotionWindow.addEventListener("answer",this._handlePromotionAnswer);
                  }
                  else
                  {
                     if(this.hold_piece)
                     {
                        this._endGrab();
                     }
                     if(this.highlight_movable)
                     {
                        this._hideMovableSquares();
                     }
                     this._pieceGrab = false;
                     if(!this._client_timeout)
                     {
                        if(this.isPlayer)
                        {
                           this.timers[0].suspend();
                        }
                        this._playerMoveCallback(this._from,this._to,false);
                     }
                     this._to = null;
                  }
               }
            }
         }
         this._arrow_from = null;
      }
      
      public function checkIllegal() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Koma = null;
         var _loc5_:Point = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Koma = null;
         var _loc9_:Koma = null;
         var _loc1_:Koma = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(new Point(this._last_to_square.coord_x,this._last_to_square.coord_y)));
         if(_loc1_ == null)
         {
            return;
         }
         _loc2_ = 1;
         loop0:
         while(_loc2_ <= 9)
         {
            _loc3_ = 1;
            while(_loc3_ <= 9)
            {
               _loc4_ = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(new Point(_loc2_,_loc3_)));
               if(_loc4_ && _loc4_.type == Koma.OU && _loc4_.ownerPlayer == _loc1_.ownerPlayer)
               {
                  _loc5_ = new Point(_loc2_,_loc3_);
                  _loc6_ = 1;
                  while(true)
                  {
                     if(_loc6_ > 9)
                     {
                        break loop0;
                     }
                     _loc7_ = 1;
                     while(_loc7_ <= 9)
                     {
                        _loc8_ = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(new Point(_loc6_,_loc7_)));
                        if(_loc8_ && _loc8_.ownerPlayer != _loc4_.ownerPlayer && !this._position.cantMove(_loc8_,new Point(_loc6_,_loc7_),_loc5_))
                        {
                           this._addMyArrowCallback(BoardArrow.FROM_BOARD,new Point(_loc6_,_loc7_),_loc5_);
                           break loop0;
                        }
                        _loc7_++;
                     }
                     _loc6_++;
                  }
               }
               else
               {
                  _loc3_++;
                  continue;
               }
            }
            _loc2_++;
         }
         if(_loc1_.type == Koma.FU)
         {
            _loc3_ = 1;
            while(_loc3_ <= 9)
            {
               if(_loc3_ != this._last_to_square.coord_y)
               {
                  _loc9_ = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(new Point(this._last_to_square.coord_x,_loc3_)));
                  if(_loc9_ && _loc9_.type == Koma.FU && _loc9_.ownerPlayer == _loc1_.ownerPlayer)
                  {
                     this._addMyArrowCallback(BoardArrow.FROM_BOARD,new Point(this._last_to_square.coord_x,_loc3_),new Point(this._last_to_square.coord_x,_loc3_));
                     break;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      private function _handlePromotionAnswer(param1:Event) : void
      {
         this._promotionWindow.removeEventListener("answer",this._handlePromotionAnswer);
         if(this.highlight_movable)
         {
            this._hideMovableSquares();
         }
         if(!this._client_timeout)
         {
            this.timers[0].suspend();
            this._playerMoveCallback(this._from,this._to,param1.target.answerYes);
         }
         this._to = null;
      }
      
      private function _squareMouseOutHandler(param1:MouseEvent) : void
      {
         if(this._pieceGrab)
         {
            param1.currentTarget.mouseOut();
         }
      }
      
      private function _squareMouseOverHandler(param1:MouseEvent) : void
      {
         if(this._pieceGrab)
         {
            param1.currentTarget.mouseOver();
            if(this.isPlayer && !this.post_game && this.sendHover)
            {
               param1.currentTarget.startTimer();
            }
         }
      }
      
      private function _squareStayHandler(param1:Event) : void
      {
         if(this._pieceGrab && !this.post_game)
         {
            this._hoverPieceCallback(param1.currentTarget.coord_x,param1.currentTarget.coord_y);
         }
      }
      
      private function _handMouseDownHandler(param1:MouseEvent) : void
      {
         if(param1.currentTarget.parent == this.handBoxes[0])
         {
            this._arrow_from_type = this._my_turn == Kyokumen.SENTE?int(Kyokumen.SENTE):int(Kyokumen.GOTE);
         }
         else
         {
            this._arrow_from_type = this._my_turn == Kyokumen.SENTE?int(Kyokumen.GOTE):int(Kyokumen.SENTE);
         }
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.currentTarget.parent.numChildren)
         {
            if(param1.currentTarget.parent.getChildAt(_loc3_) == param1.currentTarget)
            {
               break;
            }
            if(param1.currentTarget.parent.getChildAt(_loc3_).coord_x == param1.currentTarget.coord_x)
            {
               _loc2_ = _loc2_ + 1;
            }
            _loc3_++;
         }
         this._arrow_from = new Point(param1.currentTarget.coord_x - Kyokumen.HAND,_loc2_);
      }
      
      private function _handMouseUpHandler(param1:MouseEvent) : void
      {
         if(this._in_game && this._position.turn == this._my_turn || !this.onListen || this.onListen && this.isSubHost)
         {
            if(param1.currentTarget.parent != this.handBoxes[this._my_turn == Kyokumen.SENTE?this._position.turn:1 - this._position.turn])
            {
               return;
            }
            if(this._from == null)
            {
               if(this._last_from_square != null)
               {
                  this._last_from_square.setStyle("backgroundColor",undefined);
                  this._last_from_square = null;
               }
               param1.currentTarget.setStyle("backgroundColor","0x33CCCC");
               if(this.hold_piece)
               {
                  param1.currentTarget.hidePiece();
                  this._startGrab(param1.currentTarget.source,mouseX - Square.sizeX / 2,mouseY - Square.sizeY / 2);
               }
               if(this.isPlayer && !this.post_game)
               {
                  this._grabPieceCallback(param1.currentTarget.coord_x,this._position.turn);
               }
               this._pieceGrab = true;
               this._selected_square = Square(param1.currentTarget);
               this._from = new Point(param1.currentTarget.coord_x,param1.currentTarget.coord_y);
            }
            else
            {
               this.cancelSquareSelect();
            }
         }
         this._arrow_from = null;
      }
      
      public function _handTableMouseUpHandler(param1:MouseEvent) : void
      {
         if(param1.currentTarget == param1.target && param1.target == this.handBoxes[this._my_turn == this._position.turn?0:1])
         {
            this.cancelSquareSelect();
         }
      }
      
      public function typingIndicatorStart(param1:int) : void
      {
         this._typing_indicators[param1].show();
      }
      
      public function typingIndicatorStop(param1:int) : void
      {
         this._typing_indicators[param1].stop();
      }
      
      public function handleHover(param1:int, param2:int) : void
      {
         var _loc3_:Square = this._cells[param2 - 1][9 - param1];
         this._hoverImage.x = _loc3_.x;
         this._hoverImage.y = _loc3_.y;
         if(!contains(this._hoverImage))
         {
            addChild(this._hoverImage);
         }
      }
      
      public function handleGrab(param1:int, param2:int) : void
      {
         var _loc3_:Square = null;
         if(this._last_from_square != null)
         {
            this._last_from_square.setStyle("backgroundColor",undefined);
            this._last_from_square = null;
         }
         if(param1 == 0)
         {
            if(contains(this._hoverImage))
            {
               removeChild(this._hoverImage);
            }
            if(this._oppo_selected_square)
            {
               this._oppo_selected_square.setStyle("backgroundColor",undefined);
               this._oppo_selected_square = null;
            }
         }
         else if(param1 >= 100)
         {
            for each(_loc3_ in this.handBoxes[this._position.turn == this._my_turn?0:1].getChildren())
            {
               if(_loc3_.coord_x == param1)
               {
                  _loc3_.setStyle("backgroundColor","0x33CCCC");
                  this._oppo_selected_square = _loc3_;
                  this._hoverImage.source = _loc3_.source;
                  break;
               }
            }
         }
         else
         {
            _loc3_ = this._cells[param2 - 1][9 - param1];
            _loc3_.setStyle("backgroundColor","0x33CCCC");
            this._oppo_selected_square = _loc3_;
            this._hoverImage.source = _loc3_.source;
         }
      }
      
      private function _startGrab(param1:Class, param2:int, param3:int) : void
      {
         this._grabbedPiece.source = param1;
         this._grabbedPiece.x = param2;
         this._grabbedPiece.y = param3;
         addEventListener(MouseEvent.MOUSE_MOVE,this._handleMove);
         addChild(this._grabbedPiece);
         stage.frameRate = FRAME_RATE_FAST;
      }
      
      private function _endGrab() : void
      {
         removeEventListener(MouseEvent.MOUSE_MOVE,this._handleMove);
         stage.frameRate = FRAME_RATE_SLOW;
         if(contains(this._grabbedPiece))
         {
            removeChild(this._grabbedPiece);
         }
      }
      
      private function _handleMove(param1:MouseEvent) : void
      {
         this._grabbedPiece.x = mouseX - Square.sizeX / 2;
         this._grabbedPiece.y = mouseY - Square.sizeY / 2;
      }
      
      public function clearArrows(param1:int, param2:String = "*") : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:BoardArrow = null;
         var _loc3_:Boolean = false;
         if(this._arrows[param1].length > 0)
         {
            _loc4_ = this._arrows[param1].length - 1;
            while(_loc4_ >= 0)
            {
               _loc5_ = this._arrows[param1][_loc4_];
               if(param2 == "*" || param2 == _loc5_.sender)
               {
                  _loc3_ = true;
                  removeChild(_loc5_);
                  _loc5_ = null;
                  this._arrows[param1].splice(_loc4_,1);
               }
               _loc4_--;
            }
         }
         return _loc3_;
      }
      
      public function addArrow(param1:int, param2:Point, param3:Point, param4:uint, param5:String, param6:int, param7:Boolean = false) : void
      {
         var _loc10_:Object = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(this._arrows[param6].length >= MAX_ARROWS)
         {
            removeChild(this._arrows[param6].shift());
         }
         if(param1 != BoardArrow.FROM_BOARD)
         {
            _loc10_ = this.handBoxes[this._my_turn == param1?0:1];
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < _loc10_.numChildren)
            {
               if(_loc10_.getChildAt(_loc12_).coord_x - Kyokumen.HAND == param2.x)
               {
                  if(_loc11_ == param2.y)
                  {
                     param2 = new Point(_loc10_.getChildAt(_loc12_).x + Square.sizeX / 2,_loc10_.getChildAt(_loc12_).y + Square.sizeY / 2);
                     break;
                  }
                  _loc11_ = _loc11_ + 1;
               }
               _loc12_++;
            }
         }
         var _loc8_:Point = new Point(this._cells[param3.y - 1][9 - param3.x].x + Square.sizeX / 2,this._cells[param3.y - 1][9 - param3.x].y + Square.sizeY / 2);
         var _loc9_:BoardArrow = new BoardArrow(param1,param2,param3,param4,param5);
         this._arrows[param6].push(_loc9_);
         addChild(_loc9_);
         if(param7)
         {
            _loc9_.drawArrow(this._my_turn);
         }
      }
      
      public function eraseArrows(param1:int) : void
      {
         var _loc2_:BoardArrow = null;
         if(this._arrows[param1].length > 0)
         {
            for each(_loc2_ in this._arrows[param1])
            {
               if(_loc2_.isDrawn)
               {
                  _loc2_.erase();
               }
            }
         }
      }
      
      public function showArrows(param1:int) : void
      {
         var _loc2_:BoardArrow = null;
         if(this._arrows[param1].length > 0)
         {
            for each(_loc2_ in this._arrows[param1])
            {
               if(!_loc2_.isDrawn)
               {
                  _loc2_.drawArrow(this._my_turn);
               }
            }
         }
      }
      
      public function showLastSquareLabel(param1:String) : void
      {
         this._last_to_square.showLabel(param1);
      }
      
      public function getLastSquareName() : String
      {
         if(this._last_to_square)
         {
            return String(this._last_to_square.coord_x) + String(this._last_to_square.coord_y);
         }
         return "";
      }
      
      private function _showMovableSquares(param1:Point) : void
      {
         var _loc4_:int = 0;
         var _loc2_:Koma = this._position.getKomaAt(Kyokumen.translateHumanCoordinates(param1));
         var _loc3_:int = 0;
         while(_loc3_ < nRow)
         {
            _loc4_ = 0;
            while(_loc4_ < nCol)
            {
               if(!this._cells[_loc3_][_loc4_].dead && !this._position.cantMove(_loc2_,param1,new Point(this._cells[_loc3_][_loc4_].coord_x,this._cells[_loc3_][_loc4_].coord_y)))
               {
                  this._cells[_loc3_][_loc4_].showMovable();
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function _hideMovableSquares() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < nRow)
         {
            _loc2_ = 0;
            while(_loc2_ < nCol)
            {
               this._cells[_loc1_][_loc2_].hideMovable();
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      private function _checkTimeout(param1:Event) : void
      {
         if(this._in_game && param1.target == this.timers[this._my_turn == Kyokumen.SENTE?this._last_pos.turn:1 - this._last_pos.turn])
         {
            this._timeoutCallback(param1.target.time_left);
         }
      }
      
      private function _checkTimerLag(param1:Event) : void
      {
         if(this._in_game && param1.target == this.timers[0])
         {
            this._timerLagCallback();
         }
      }
      
      public function replayMoves(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:Movement = null;
         var _loc4_:int = 0;
         if(!this._position)
         {
            return;
         }
         if(this._last_to_square != null)
         {
            this._last_to_square.setStyle("backgroundColor",undefined);
            this._last_to_square = null;
         }
         if(this._last_from_square != null)
         {
            this._last_from_square.setStyle("backgroundColor",undefined);
            this._last_from_square = null;
         }
         this._position.jumpToFirstPosition();
         if(param1 >= 1)
         {
            _loc4_ = 1;
            while(_loc4_ <= param1)
            {
               if(!!param2?_loc4_ >= this.kifu_list.length:_loc4_ >= this.kifu_list_self.length)
               {
                  break;
               }
               _loc3_ = !!param2?this.kifu_list[_loc4_]:this.kifu_list_self[_loc4_];
               if(_loc3_.replayable())
               {
                  this._position.move(_loc3_);
               }
               _loc4_++;
            }
            if(_loc3_.replayable())
            {
               this._last_to_square = this._cells[_loc3_.to.y][_loc3_.to.x];
               this._last_to_square.setStyle("backgroundColor","0xCC3333");
               if(_loc3_.from.x < Kyokumen.HAND)
               {
                  this._last_from_square = this._cells[_loc3_.from.y][_loc3_.from.x];
                  this._last_from_square.setStyle("backgroundColor","0xFF5555");
               }
            }
         }
         this.setPosition(this._position);
         if(this.viewing && param2)
         {
            if(this.kifu_list[param1].comment)
            {
               parentApplication.userMessage2.htmlText = this.kifu_list[param1].comment;
            }
            else
            {
               parentApplication.userMessage2.htmlText = "";
            }
         }
      }
      
      public function get openingEn() : String
      {
         return this._game.openingEn;
      }
      
      public function get openingTip() : String
      {
         return this._game.openingTip;
      }
      
      public function updateStatusMark(param1:Object) : void
      {
         if(param1.name == this._player_infos[0].name)
         {
            this._avatar_marks[this._my_turn].loadPlayer(param1);
         }
         else if(param1.name == this._player_infos[1].name)
         {
            this._avatar_marks[1 - this._my_turn].loadPlayer(param1);
         }
      }
      
      private function _findPieceSet() : PieceSet
      {
         var _loc1_:PieceSet = null;
         if(this.is34())
         {
            for each(_loc1_ in pieceSets34)
            {
               if(_loc1_.index == this.piece_type34)
               {
                  return _loc1_;
               }
            }
         }
         else
         {
            for each(_loc1_ in pieceSets)
            {
               if(_loc1_.index == this.piece_type)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function is34() : Boolean
      {
         return this.gameType == "vazoo";
      }
      
      [Bindable(event="propertyChange")]
      private function get board_back() : Class
      {
         return this._1756311200board_back;
      }
      
      private function set board_back(param1:Class) : void
      {
         var _loc2_:Object = this._1756311200board_back;
         if(_loc2_ !== param1)
         {
            this._1756311200board_back = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"board_back",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get board_masu() : Class
      {
         return this._1756639407board_masu;
      }
      
      private function set board_masu(param1:Class) : void
      {
         var _loc2_:Object = this._1756639407board_masu;
         if(_loc2_ !== param1)
         {
            this._1756639407board_masu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"board_masu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kifu_list() : Array
      {
         return this._1959121648kifu_list;
      }
      
      public function set kifu_list(param1:Array) : void
      {
         var _loc2_:Object = this._1959121648kifu_list;
         if(_loc2_ !== param1)
         {
            this._1959121648kifu_list = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kifu_list",_loc2_,param1));
            }
         }
      }
   }
}
