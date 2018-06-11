package
{
   import flash.events.MouseEvent;
   import flash.media.Sound;
   import mx.controls.Button;
   
   public class MyButton extends Button
   {
      
      private static var SoundNormal:Class = MyButton_SoundNormal;
      
      private static var soundNormal:Sound = new SoundNormal();
      
      private static var SoundOK:Class = MyButton_SoundOK;
      
      private static var soundOK:Sound = new SoundOK();
      
      private static var SoundCancel:Class = MyButton_SoundCancel;
      
      private static var soundCancel:Sound = new SoundCancel();
      
      public static var soundOn:Boolean = true;
       
      
      public var soundType:int = 0;
      
      public function MyButton()
      {
         super();
         this.height = 27;
         this.setStyle("borderColor",16771959);
         this.setStyle("fillColors",[16771959,16771959]);
      }
      
      public static function playCancel() : void
      {
         if(soundOn)
         {
            soundCancel.play();
         }
      }
      
      override protected function clickHandler(param1:MouseEvent) : void
      {
         if(soundOn && this.enabled)
         {
            if(this.soundType == 0)
            {
               soundNormal.play();
            }
            else if(this.soundType == 1)
            {
               soundOK.play();
            }
            else if(this.soundType == 2)
            {
               soundCancel.play();
            }
         }
         super.clickHandler(param1);
      }
   }
}
