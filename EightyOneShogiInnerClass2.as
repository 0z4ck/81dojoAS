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
   
   public class EightyOneShogiInnerClass2 extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _EightyOneShogiInnerClass2_Image1:Image;
      
      public var _EightyOneShogiInnerClass2_Label1:Label;
      
      public var _EightyOneShogiInnerClass2_Label2:Label;
      
      private var _88844982outerDocument:EightyOneShogi;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EightyOneShogiInnerClass2()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "stylesFactory":function():void
            {
               this.horizontalAlign = "right";
               this.paddingLeft = 0;
               this.paddingRight = 0;
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass2_Label1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = -7;
                     this.paddingRight = -7;
                     this.textAlign = "right";
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":92};
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EightyOneShogiInnerClass2_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":27,
                        "height":17
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass2_Label2",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.paddingLeft = -7;
                     this.paddingRight = -9;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":42};
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
         var bindings:Array = this._EightyOneShogiInnerClass2_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_EightyOneShogiInnerClass2WatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EightyOneShogiInnerClass2[param1];
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
         EightyOneShogiInnerClass2._watcherSetupUtil = param1;
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
            this.horizontalAlign = "right";
            this.paddingLeft = 0;
            this.paddingRight = 0;
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _EightyOneShogiInnerClass2_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = data.white.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass2_Label1.text");
         result[1] = new Binding(this,function():uint
         {
            return data.nameColor(1);
         },function(param1:uint):void
         {
            _EightyOneShogiInnerClass2_Label1.setStyle("color",param1);
         },"_EightyOneShogiInnerClass2_Label1.color");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = data.nameDecoration(1);
            return _loc1_ == undefined?null:String(_loc1_);
         },function(param1:String):void
         {
            _EightyOneShogiInnerClass2_Label1.setStyle("textDecoration",param1);
         },"_EightyOneShogiInnerClass2_Label1.textDecoration");
         result[3] = new Binding(this,function():Array
         {
            var _loc1_:* = [data.flagFilter(1)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_EightyOneShogiInnerClass2_Image1.filters");
         result[4] = new Binding(this,function():Object
         {
            return data.white.flag_s;
         },null,"_EightyOneShogiInnerClass2_Image1.source");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = data.white.country;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass2_Image1.toolTip");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = data.white.rank;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass2_Label2.text");
         result[7] = new Binding(this,function():uint
         {
            return data.white.rankColor;
         },function(param1:uint):void
         {
            _EightyOneShogiInnerClass2_Label2.setStyle("color",param1);
         },"_EightyOneShogiInnerClass2_Label2.color");
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
