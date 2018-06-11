package
{
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import mx.containers.HBox;
   import mx.containers.TitleWindow;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Spacer;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   public class AdminPanelWindow extends TitleWindow
   {
       
      
      private var _1925892050adminCommandInput:TextInput;
      
      private var _961390419broadcastButton:Button;
      
      private var _735817406logTextArea:TextArea;
      
      private var _2039236155scrollCheck:CheckBox;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _scrollPos:int;
      
      private var _commandHistory:Array;
      
      private var _nHistory:int = 0;
      
      public function AdminPanelWindow()
      {
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":TitleWindow,
            "events":{
               "creationComplete":"___AdminPanelWindow_TitleWindow1_creationComplete",
               "close":"___AdminPanelWindow_TitleWindow1_close"
            },
            "stylesFactory":function():void
            {
               this.paddingLeft = 5;
               this.paddingBottom = 5;
               this.paddingRight = 5;
               this.paddingTop = 5;
               this.borderAlpha = 0.85;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":TextInput,
                        "id":"adminCommandInput",
                        "events":{"enter":"__adminCommandInput_enter"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":300,
                              "enabled":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":CheckBox,
                        "id":"scrollCheck",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"Auto-scroll",
                              "selected":true
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Spacer,
                        "propertiesFactory":function():Object
                        {
                           return {"width":50};
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "id":"broadcastButton",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"Broadcast",
                              "enabled":false
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"logTextArea",
                  "stylesFactory":function():void
                  {
                     this.fontFamily = "Lucida console";
                     this.fontSize = 11;
                     this.backgroundColor = 0;
                     this.color = 12303291;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":800,
                        "height":500,
                        "wordWrap":false
                     };
                  }
               })]};
            }
         });
         this._commandHistory = new Array();
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.showCloseButton = true;
         this.addEventListener("creationComplete",this.___AdminPanelWindow_TitleWindow1_creationComplete);
         this.addEventListener("close",this.___AdminPanelWindow_TitleWindow1_close);
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
            this.paddingLeft = 5;
            this.paddingBottom = 5;
            this.paddingRight = 5;
            this.paddingTop = 5;
            this.borderAlpha = 0.85;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _initWindow() : void
      {
         this.addEventListener("move",this._checkMove);
         if(InfoFetcher.adminsLv1.indexOf(parentApplication.login_name.toLowerCase()) >= 0)
         {
            this.adminCommandInput.enabled = true;
            this.broadcastButton.enabled = true;
            this.adminCommandInput.addEventListener(KeyboardEvent.KEY_DOWN,this._handleKeyDown);
         }
      }
      
      private function _checkMove(param1:Event) : void
      {
         if(this.y < 0)
         {
            this.y = 0;
         }
      }
      
      public function showLog(param1:String) : void
      {
         this._scrollPos = this.logTextArea.verticalScrollPosition;
         this.logTextArea.text = param1;
         this.logTextArea.callLater(this._scrollDown);
      }
      
      private function _scrollDown() : void
      {
         if(this.scrollCheck.selected)
         {
            this.logTextArea.verticalScrollPosition = this.logTextArea.maxVerticalScrollPosition;
         }
         else
         {
            this.logTextArea.verticalScrollPosition = this._scrollPos;
         }
      }
      
      private function _saveHistory() : void
      {
         if(this.adminCommandInput.text != "")
         {
            this._commandHistory.unshift(this.adminCommandInput.text);
            this._nHistory = 0;
         }
      }
      
      private function _handleKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 38)
         {
            if(this._nHistory < this._commandHistory.length)
            {
               this._nHistory = this._nHistory + 1;
            }
            if(this._nHistory > 0)
            {
               param1.currentTarget.text = this._commandHistory[this._nHistory - 1];
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
               param1.currentTarget.text = this._commandHistory[this._nHistory - 1];
            }
         }
      }
      
      private function _close() : void
      {
         PopUpManager.removePopUp(this);
      }
      
      public function ___AdminPanelWindow_TitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this._initWindow();
      }
      
      public function ___AdminPanelWindow_TitleWindow1_close(param1:CloseEvent) : void
      {
         this._close();
      }
      
      public function __adminCommandInput_enter(param1:FlexEvent) : void
      {
         this._saveHistory();
      }
      
      [Bindable(event="propertyChange")]
      public function get adminCommandInput() : TextInput
      {
         return this._1925892050adminCommandInput;
      }
      
      public function set adminCommandInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1925892050adminCommandInput;
         if(_loc2_ !== param1)
         {
            this._1925892050adminCommandInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adminCommandInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get broadcastButton() : Button
      {
         return this._961390419broadcastButton;
      }
      
      public function set broadcastButton(param1:Button) : void
      {
         var _loc2_:Object = this._961390419broadcastButton;
         if(_loc2_ !== param1)
         {
            this._961390419broadcastButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"broadcastButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logTextArea() : TextArea
      {
         return this._735817406logTextArea;
      }
      
      public function set logTextArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._735817406logTextArea;
         if(_loc2_ !== param1)
         {
            this._735817406logTextArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logTextArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollCheck() : CheckBox
      {
         return this._2039236155scrollCheck;
      }
      
      public function set scrollCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._2039236155scrollCheck;
         if(_loc2_ !== param1)
         {
            this._2039236155scrollCheck = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollCheck",_loc2_,param1));
            }
         }
      }
   }
}
