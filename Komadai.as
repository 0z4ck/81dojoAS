package
{
   import mx.containers.Box;
   
   public final class Komadai extends Box
   {
       
      
      private var koma_list:Array;
      
      public function Komadai()
      {
         this.koma_list = new Array(8);
         super();
         this.clearKoma();
      }
      
      public function addKoma(param1:Koma) : void
      {
         this.koma_list[param1.type]++;
      }
      
      public function removeKoma(param1:int) : void
      {
         this.koma_list[param1]--;
      }
      
      public function getNumOfKoma(param1:int) : int
      {
         return this.koma_list[param1];
      }
      
      public function clearKoma() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 8)
         {
            this.koma_list[_loc1_] = 0;
            _loc1_++;
         }
      }
   }
}
