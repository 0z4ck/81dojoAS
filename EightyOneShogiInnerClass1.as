package
{
   import flash.utils.Proxy;
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
   
   public class EightyOneShogiInnerClass1 extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _EightyOneShogiInnerClass1_Image1:Image;
      
      public var _EightyOneShogiInnerClass1_Label1:Label;
      
      public var _EightyOneShogiInnerClass1_Label2:Label;
      
      private var _88844982outerDocument:EightyOneShogi;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EightyOneShogiInnerClass1()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "stylesFactory":function():void
            {
               this.horizontalAlign = "left";
               this.paddingLeft = 0;
               this.paddingRight = 0;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass1_Label1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                     this.paddingLeft = -9;
                     this.paddingRight = -7;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":37};
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EightyOneShogiInnerClass1_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":27,
                        "height":17
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass1_Label2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = -7;
                     this.paddingRight = -7;
                     this.textAlign = "left";
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":95};
                  }
               })]};
            }
         });
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._EightyOneShogiInnerClass1_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_EightyOneShogiInnerClass1WatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EightyOneShogiInnerClass1[param1];
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
         EightyOneShogiInnerClass1._watcherSetupUtil = param1;
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
            this.horizontalAlign = "left";
            this.paddingLeft = 0;
            this.paddingRight = 0;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _EightyOneShogiInnerClass1_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = data.black.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass1_Label1.text");
         result[1] = new Binding(this,function():uint
         {
            return data.black.rankColor;
         },function(param1:uint):void
         {
            _EightyOneShogiInnerClass1_Label1.setStyle("color",param1);
         },"_EightyOneShogiInnerClass1_Label1.color");
         result[2] = new Binding(this,function():Array
         {
            var _loc1_:* = [data.flagFilter(0)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_EightyOneShogiInnerClass1_Image1.filters");
         result[3] = new Binding(this,function():Object
         {
            return data.black.flag_s;
         },null,"_EightyOneShogiInnerClass1_Image1.source");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = data.black.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass1_Image1.toolTip");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = data.black.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass1_Label2.text");
         result[6] = new Binding(this,function():uint
         {
            return data.nameColor(0);
         },function(param1:uint):void
         {
            _EightyOneShogiInnerClass1_Label2.setStyle("color",param1);
         },"_EightyOneShogiInnerClass1_Label2.color");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = data.nameDecoration(0);
            return _loc1_ == undefined?null:String(_loc1_);
         },function(param1:String):void
         {
            _EightyOneShogiInnerClass1_Label2.setStyle("textDecoration",param1);
         },"_EightyOneShogiInnerClass1_Label2.textDecoration");
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
