package
{
   import mx.containers.HBox;
   import spark.components.Image;
   
   public final class AvatarStatusMark extends HBox
   {
      
      private static var _icon_mobile:Class = AvatarStatusMark__icon_mobile;
      
      private static var _icon_html:Class = AvatarStatusMark__icon_html;
      
      private static var _icon_star:Class = AvatarStatusMark__icon_star;
      
      private static var _icon_hat:Class = AvatarStatusMark__icon_hat;
       
      
      private var _img_mobile:Image;
      
      private var _img_html:Image;
      
      private var _img_star:Image;
      
      private var _img_mic1:Image;
      
      private var _img_mic2:Image;
      
      private var _img_mic3:Image;
      
      private var _img_listen:Image;
      
      private var _img_hat:Image;
      
      public function AvatarStatusMark()
      {
         this._img_mobile = new Image();
         this._img_html = new Image();
         this._img_star = new Image();
         this._img_mic1 = new Image();
         this._img_mic2 = new Image();
         this._img_mic3 = new Image();
         this._img_listen = new Image();
         this._img_hat = new Image();
         super();
         this.setStyle("horizontalGap",3);
         this.width = 125;
         this.x = 0;
         this.y = 3;
         this.setStyle("horizontalAlign","right");
         this._img_mobile.source = _icon_mobile;
         this._img_mobile.toolTip = LanguageSelector.lan.status_tip_mobile;
         this._img_mobile.visible = false;
         this._img_mobile.smooth = true;
         addChild(this._img_mobile);
         this._img_mobile.source = _icon_html;
         this._img_mobile.toolTip = LanguageSelector.lan.status_tip_html5;
         this._img_mobile.visible = false;
         this._img_mobile.smooth = true;
         addChild(this._img_html);
         this._img_star.source = _icon_star;
         this._img_star.toolTip = LanguageSelector.lan.favorite;
         this._img_star.visible = false;
         this._img_star.smooth = true;
         addChild(this._img_star);
         this._img_mic1.source = VoiceButton.icon_direct;
         this._img_mic1.toolTip = LanguageSelector.lan.status_tip_direct;
         this._img_mic1.visible = false;
         this._img_mic1.smooth = true;
         addChild(this._img_mic1);
         this._img_mic2.source = VoiceButton.icon_shared;
         this._img_mic2.toolTip = LanguageSelector.lan.status_tip_shared;
         this._img_mic2.visible = false;
         this._img_mic2.smooth = true;
         addChild(this._img_mic2);
         this._img_mic3.source = VoiceButton.icon_broadcast;
         this._img_mic3.toolTip = LanguageSelector.lan.status_tip_broadcast;
         this._img_mic3.visible = false;
         this._img_mic3.smooth = true;
         addChild(this._img_mic3);
         this._img_listen.source = VoiceButton.icon_listen;
         this._img_listen.toolTip = LanguageSelector.lan.status_tip_listen;
         this._img_listen.visible = false;
         this._img_listen.smooth = true;
         addChild(this._img_listen);
         this._img_hat.source = _icon_hat;
         this._img_hat.toolTip = LanguageSelector.lan.status_tip_host;
         this._img_hat.visible = false;
         this._img_hat.smooth = true;
         addChild(this._img_hat);
      }
      
      public function loadPlayer(param1:Object) : void
      {
         this._img_mobile.visible = param1.isMobile;
         this._img_html.visible = param1.isHTML;
         this._img_star.visible = param1.mark == "★";
         this._img_mic1.visible = param1.sendingDirect;
         this._img_mic2.visible = param1.sendingShared;
         this._img_mic3.visible = param1.broadcasting;
         this._img_listen.visible = param1.listening;
         this._img_hat.visible = param1.isHost;
         this._img_mobile.includeInLayout = this._img_mobile.visible;
         this._img_html.includeInLayout = this._img_html.visible;
         this._img_star.includeInLayout = this._img_star.visible;
         this._img_mic1.includeInLayout = this._img_mic1.visible;
         this._img_mic2.includeInLayout = this._img_mic2.visible;
         this._img_mic3.includeInLayout = this._img_mic3.visible;
         this._img_listen.includeInLayout = this._img_listen.visible;
         this._img_hat.includeInLayout = this._img_hat.visible;
      }
   }
}
