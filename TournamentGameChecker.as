package
{
   import mx.controls.Label;
   
   public final class TournamentGameChecker extends Label
   {
       
      
      private var _api:ApiClient;
      
      public function TournamentGameChecker(param1:int, param2:String, param3:String, param4:ApiClient)
      {
         super();
         this.setStyle("textAlign","center");
         this.setStyle("color","red");
         this.setStyle("fontWeight","bold");
         this.text = LanguageSelector.EJ("Checking tournament games...","この相手との対局情報を確認中...");
         this._api = param4;
         this._api.addEventListener(ApiClient.GAME_CHECK,this._handleResult);
         this._api.checkTournamentGame(param1,param2,param3);
      }
      
      private function _handleResult(param1:ServerMessageEvent) : void
      {
         if(param1.message == "true")
         {
            this.text = LanguageSelector.EJ("This opponent is to play with you.","対局未消化の相手です");
         }
         else if(param1.message == "false")
         {
            this.text = LanguageSelector.EJ("This player is not your expected opponent.","この相手は対局予定者ではありません");
         }
         else
         {
            this.text = LanguageSelector.EJ("No information found in the tournament.","大会での対局情報が読み込めませんでした");
         }
         this._api.removeEventListener(ApiClient.GAME_CHECK,this._handleResult);
      }
   }
}
