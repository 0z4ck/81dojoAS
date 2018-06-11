package
{
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.containers.HBox;
   import mx.controls.Label;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class EightyOneShogiInnerClass5 extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _EightyOneShogiInnerClass5_Label1:Label;
      
      public var _EightyOneShogiInnerClass5_Label2:Label;
      
      private var _88844982outerDocument:EightyOneShogi;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EightyOneShogiInnerClass5()
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
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass5_Label1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = -2;
                     this.paddingRight = -13;
                     this.color = 14513920;
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_EightyOneShogiInnerClass5_Label2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = -10;
                     this.paddingRight = -7;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":120};
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
         var bindings:Array = this._EightyOneShogiInnerClass5_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_EightyOneShogiInnerClass5WatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EightyOneShogiInnerClass5[param1];
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
         EightyOneShogiInnerClass5._watcherSetupUtil = param1;
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
         };
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function _EightyOneShogiInnerClass5_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = data.mark;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass5_Label1.text");
         result[1] = new Binding(this,function():Number
         {
            return data.markWidth;
         },null,"_EightyOneShogiInnerClass5_Label1.width");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = data.markTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass5_Label1.toolTip");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = data.name;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_EightyOneShogiInnerClass5_Label2.text");
         result[4] = new Binding(this,function():uint
         {
            return data.idleColor;
         },function(param1:uint):void
         {
            _EightyOneShogiInnerClass5_Label2.setStyle("color",param1);
         },"_EightyOneShogiInnerClass5_Label2.color");
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
