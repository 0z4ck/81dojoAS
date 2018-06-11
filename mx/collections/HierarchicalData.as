package mx.collections
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   
   use namespace mx_internal;
   
   public class HierarchicalData extends EventDispatcher implements IHierarchicalData
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      private var _childrenField:String = "children";
      
      private var _source:Object;
      
      public function HierarchicalData(param1:Object = null)
      {
         super();
         this.source = param1;
      }
      
      public function get childrenField() : String
      {
         return this._childrenField;
      }
      
      public function set childrenField(param1:String) : void
      {
         this._childrenField = param1;
      }
      
      public function get source() : Object
      {
         return this._source;
      }
      
      public function set source(param1:Object) : void
      {
         this._source = param1;
         var _loc2_:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
         _loc2_.kind = CollectionEventKind.RESET;
         dispatchEvent(_loc2_);
      }
      
      public function canHaveChildren(param1:Object) : Boolean
      {
         var _loc3_:XMLList = null;
         var _loc4_:XMLList = null;
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:Boolean = false;
         if(param1 is XML)
         {
            _loc3_ = this.childrenField == "children"?param1.children():param1.child(this.childrenField).children();
            _loc4_ = param1.@isBranch;
            if(_loc4_.length() == 1)
            {
               if(_loc4_[0] == "true")
               {
                  _loc2_ = true;
               }
            }
            else if(_loc3_.length() != 0)
            {
               _loc2_ = true;
            }
         }
         else if(param1 is Object)
         {
            try
            {
               if(param1[this.childrenField] != undefined)
               {
                  _loc2_ = true;
               }
            }
            catch(e:Error)
            {
            }
         }
         return _loc2_;
      }
      
      public function getChildren(param1:Object) : Object
      {
         var _loc2_:* = undefined;
         if(param1 == null)
         {
            return null;
         }
         if(param1 is XML)
         {
            _loc2_ = this.childrenField == "children"?param1.*:param1.child(this.childrenField).*;
         }
         else if(param1 is Object)
         {
            try
            {
               _loc2_ = param1[this.childrenField];
            }
            catch(e:Error)
            {
            }
         }
         if(_loc2_ === undefined)
         {
            return null;
         }
         return _loc2_;
      }
      
      public function hasChildren(param1:Object) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:Object = this.getChildren(param1);
         try
         {
            if(_loc2_ is XMLList || _loc2_ is XML)
            {
               if(_loc2_.length() > 0)
               {
                  return true;
               }
            }
            if(_loc2_.length > 0)
            {
               return true;
            }
         }
         catch(e:Error)
         {
         }
         return false;
      }
      
      public function getData(param1:Object) : Object
      {
         return Object(param1);
      }
      
      public function getRoot() : Object
      {
         return this.source;
      }
   }
}
