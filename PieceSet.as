package
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public final class PieceSet
   {
       
      
      private const SOURCE_DIRECTORY:String = "https://81dojo.com/dojo/images/piecesets/";
      
      private var _koma_images:Array;
      
      private var _coord_images:Array;
      
      private var boardBack:Class;
      
      private var boardMasu:Class;
      
      private var boardShand:Class;
      
      private var boardGhand:Class;
      
      private var deadSquare:Class;
      
      private var _name:String;
      
      private var _index:int;
      
      private var _loader:Loader;
      
      private var _highRez:Boolean = false;
      
      public function PieceSet(param1:String, param2:String, param3:int)
      {
         this._koma_images = new Array(2);
         this._loader = new Loader();
         super();
         this._name = param2;
         this._index = param3;
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this._handleLoader);
         this._loader.load(new URLRequest(this.SOURCE_DIRECTORY + param1 + "?" + Config.PIECE_VERSION));
         if(param1.match(/_L\.swf$/))
         {
            this._highRez = true;
         }
      }
      
      private function _handleLoader(param1:Event) : void
      {
         var _loc2_:Class = this._loader.contentLoaderInfo.applicationDomain.getDefinition("PieceSetSource") as Class;
         var _loc3_:Object = new _loc2_();
         this._koma_images = _loc3_.pieceClasses;
         this._coord_images = _loc3_.coordClasses;
         this.boardBack = _loc3_.boardBackClass;
         this.boardMasu = _loc3_.boardMasuClass;
         this.boardShand = _loc3_.boardShandClass;
         this.boardGhand = _loc3_.boardGhandClass;
         this.deadSquare = _loc3_.deadSquareClass;
      }
      
      public function getPieceClass(param1:int, param2:int) : Class
      {
         return this._koma_images[param1][param2];
      }
      
      public function getCoordClass(param1:int) : Class
      {
         return !!this._coord_images?this._coord_images[param1]:null;
      }
      
      public function get boardBackClass() : Class
      {
         return this.boardBack;
      }
      
      public function get boardMasuClass() : Class
      {
         return this.boardMasu;
      }
      
      public function get boardShandClass() : Class
      {
         return this.boardShand;
      }
      
      public function get boardGhandClass() : Class
      {
         return this.boardGhand;
      }
      
      public function get deadSquareClass() : Class
      {
         return this.deadSquare;
      }
      
      public function get getName() : String
      {
         return this._name;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get highRez() : Boolean
      {
         return this._highRez;
      }
   }
}
