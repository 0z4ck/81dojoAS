package
{
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import mx.controls.Menu;
   import mx.events.MenuEvent;
   
   public final class GreetButton extends MyButton
   {
      
      public static const STATE_DISABLED:int = 0;
      
      public static const STATE_BEFORE_GAME:int = 1;
      
      public static const STATE_DURING_GAME:int = 2;
      
      public static const STATE_AFTER_GAME:int = 3;
      
      public static const STATE_POSTGAME:int = 4;
      
      public static const GREET_START:String = "<(_ _)> お願いします。\n(Onegai-shimasu.)";
      
      public static const GREET_END:String = "<(_ _)> 有難うございました。\n(Arigatou-gozaimashita.)";
      
      public static const GREET:String = "greet";
       
      
      private var _state:int = 0;
      
      private var _templateMenu:Menu;
      
      public function GreetButton()
      {
         super();
      }
      
      private function _openTemplateMenu() : void
      {
         if(this._templateMenu)
         {
            return;
         }
         var collectionMenuData:ArrayCollection = new ArrayCollection([{
            "label":LanguageSelector.lan.T003,
            "selectHandler":function():void
            {
               _send("T003");
            }
         },{
            "label":LanguageSelector.lan.T004,
            "selectHandler":function():void
            {
               _send("T004");
            }
         },{
            "label":LanguageSelector.lan.T000,
            "selectHandler":function():void
            {
               _send("T000");
            }
         },{
            "label":LanguageSelector.lan.T005,
            "selectHandler":function():void
            {
               _send("T005");
            }
         },{
            "label":LanguageSelector.lan.T006,
            "selectHandler":function():void
            {
               _send("T006");
            }
         },{
            "label":LanguageSelector.lan.T007,
            "selectHandler":function():void
            {
               _send("T007");
            }
         },{
            "label":LanguageSelector.lan.T008,
            "selectHandler":function():void
            {
               _send("T008");
            }
         },{
            "label":LanguageSelector.lan.T009,
            "selectHandler":function():void
            {
               _send("T009");
            }
         },{
            "label":LanguageSelector.lan.T010,
            "selectHandler":function():void
            {
               _send("T010");
            }
         },{
            "label":LanguageSelector.lan.T011,
            "selectHandler":function():void
            {
               _send("T011");
            }
         },{
            "label":LanguageSelector.lan.T014,
            "selectHandler":function():void
            {
               _send("T014");
            }
         },{
            "label":LanguageSelector.lan.T001,
            "selectHandler":function():void
            {
               _send("T001");
            }
         },{
            "label":LanguageSelector.lan.T012,
            "selectHandler":function():void
            {
               _send("T012");
            }
         },{
            "label":LanguageSelector.lan.T013,
            "selectHandler":function():void
            {
               _send("T013");
            }
         },{
            "label":LanguageSelector.lan.T002,
            "selectHandler":function():void
            {
               _send("T002");
            }
         }]);
         this._templateMenu = Menu.createMenu(this,collectionMenuData);
         this._templateMenu.setStyle("fontSize",12);
         this._templateMenu.addEventListener(MenuEvent.ITEM_CLICK,this._handleTemplateMenu);
         this._templateMenu.addEventListener(MenuEvent.MENU_HIDE,this._clearTemplateMenu);
         var anchor:Point = this.localToGlobal(new Point(0,0));
         this._templateMenu.show(anchor.x - 250,anchor.y);
         this._templateMenu.y = this._templateMenu.y - this._templateMenu.height;
      }
      
      private function _handleTemplateMenu(param1:MenuEvent) : void
      {
         param1.item.selectHandler();
      }
      
      private function _clearTemplateMenu(param1:MenuEvent) : void
      {
         this._templateMenu = null;
      }
      
      private function _send(param1:String) : void
      {
         dispatchEvent(new ServerMessageEvent(GREET,param1.replace(/\n/,"")));
      }
      
      public function autoGreet(param1:int) : void
      {
         this._state = param1;
         this.click();
      }
      
      public function click() : void
      {
         if(this._state == STATE_BEFORE_GAME)
         {
            this._send(GREET_START);
            this._state = STATE_DURING_GAME;
            this.refresh();
         }
         else if(this._state == STATE_AFTER_GAME)
         {
            this._send(GREET_END);
            this._state = STATE_POSTGAME;
            this.refresh();
         }
         else if(this._state == STATE_POSTGAME)
         {
            this._openTemplateMenu();
         }
      }
      
      public function refresh() : void
      {
         this.visible = this._state != STATE_DISABLED;
         this.enabled = this._state != STATE_DISABLED && this._state != STATE_DURING_GAME;
         switch(this._state)
         {
            case STATE_BEFORE_GAME:
               this.toolTip = GREET_START;
               break;
            case STATE_DURING_GAME:
               this.toolTip = "";
               break;
            case STATE_AFTER_GAME:
               this.toolTip = GREET_END;
               break;
            case STATE_POSTGAME:
               this.toolTip = LanguageSelector.lan.chat_template + " >>";
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
         this.refresh();
      }
   }
}
