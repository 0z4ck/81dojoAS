package
{
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class EightyOneShogiInnerClass7 extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _EightyOneShogiInnerClass7_Image1:Image;
      
      public var _EightyOneShogiInnerClass7_Image2:Image;
      
      public var _EightyOneShogiInnerClass7_Label1:Label;
      
      public var _EightyOneShogiInnerClass7_Label2:Label;
      
      private var _88844982outerDocument:EightyOneShogi;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml_images_icon_hat_png_1162690078:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EightyOneShogiInnerClass7()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "stylesFactory":function():void
            {
               this.verticalAlign = "middle";
               this.paddingLeft = 3;
               this.paddingRight = 0;
               this.horizontalGap = 0;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EightyOneShogiInnerClass7_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":16,
                        "width":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EightyOneShogiInnerClass7_Image2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":_embed_mxml_images_icon_hat_png_1162690078,
                        "height":15,
                        "width":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass7_Label1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = -13;
                     this.color = 14513920;
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass7_Label2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":120};
                  }
               })]};
            }
         });
         this._embed_mxml_images_icon_hat_png_1162690078 = EightyOneShogiInnerClass7__embed_mxml_images_icon_hat_png_1162690078;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._EightyOneShogiInnerClass7_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_EightyOneShogiInnerClass7WatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EightyOneShogiInnerClass7[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentHeight = 100;
         this.horizontalScrollPolicy = "off";
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EightyOneShogiInnerClass7._watcherSetupUtil = param1;
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
            this.verticalAlign = "middle";
            this.paddingLeft = 3;
            this.paddingRight = 0;
            this.horizontalGap = 0;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _EightyOneShogiInnerClass7_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return data.voice_icon;
         },null,"_EightyOneShogiInnerClass7_Image1.source");
         result[1] = new Binding(this,function():Boolean
         {
            return data.showMic;
         },null,"_EightyOneShogiInnerClass7_Image1.includeInLayout");
         result[2] = new Binding(this,function():Boolean
         {
            return data.showMic;
         },null,"_EightyOneShogiInnerClass7_Image1.visible");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = data.voiceTooltip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass7_Image1.toolTip");
         result[4] = new Binding(this,function():Boolean
         {
            return data.isHost;
         },null,"_EightyOneShogiInnerClass7_Image2.includeInLayout");
         result[5] = new Binding(this,function():Boolean
         {
            return data.isHost;
         },null,"_EightyOneShogiInnerClass7_Image2.visible");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = parentApplication.lan.status_tip_host;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass7_Image2.toolTip");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = data.mark;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass7_Label1.text");
         result[8] = new Binding(this,function():Number
         {
            return data.markWidth;
         },null,"_EightyOneShogiInnerClass7_Label1.width");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = data.markTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass7_Label1.toolTip");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = data.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass7_Label2.text");
         result[11] = new Binding(this,function():uint
         {
            return data.idleColor;
         },function(param1:uint):void
         {
            _EightyOneShogiInnerClass7_Label2.setStyle("color",param1);
         },"_EightyOneShogiInnerClass7_Label2.color");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : EightyOneShogi
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:EightyOneShogi) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
            }
         }
      }
   }
}
