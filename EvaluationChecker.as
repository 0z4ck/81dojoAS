package
{
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.controls.Label;
   
   public final class EvaluationChecker extends HBox
   {
      
      private static var icon_like:Class = EvaluationChecker_icon_like;
       
      
      private var _api:ApiClient;
      
      private var _label:Label;
      
      public function EvaluationChecker(param1:String, param2:ApiClient)
      {
         super();
         this.setStyle("horizontalGap",0);
         this.setStyle("paddingTop",1);
         var _loc3_:Image = new Image();
         _loc3_.source = icon_like;
         addChild(_loc3_);
         this._label = new Label();
         this._label.text = "?";
         this._label.setStyle("color",34816);
         addChild(this._label);
         this._api = param2;
         this._api.addEventListener(ApiClient.GET_EVALUATION,this._handleResult);
         this._api.getEvaluation(param1);
      }
      
      private function _handleResult(param1:ServerMessageEvent) : void
      {
         this._label.text = param1.message;
         this._api.removeEventListener(ApiClient.GET_EVALUATION,this._handleResult);
      }
   }
}
