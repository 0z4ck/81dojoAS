package mx.controls.advancedDataGridClasses
{
   import mx.core.IFactory;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class AdvancedDataGridRendererDescription
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
       
      
      public var columnSpan:int;
      
      public var renderer:IFactory;
      
      public var rowSpan:int;
      
      public function AdvancedDataGridRendererDescription()
      {
         super();
      }
   }
}
