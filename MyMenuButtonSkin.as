package
{
   import mx.core.IButton;
   import mx.skins.halo.ButtonSkin;
   import mx.utils.ColorUtil;
   
   public class MyMenuButtonSkin extends ButtonSkin
   {
       
      
      public function MyMenuButtonSkin()
      {
         super();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc13_:Number = NaN;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:Array = null;
         var _loc17_:Array = null;
         super.updateDisplayList(param1,param2);
         var _loc3_:Number = 0;
         var _loc4_:Array = [1,1];
         var _loc5_:Array = [7851059,7851059,8969540,8969540];
         styleManager.getColorNames(_loc5_);
         var _loc6_:Array = [0,0];
         var _loc7_:uint = 7851059;
         var _loc8_:Number = ColorUtil.adjustBrightness2(_loc7_,-15);
         var _loc9_:Boolean = false;
         if(parent is IButton)
         {
            _loc9_ = IButton(parent).emphasized;
         }
         var _loc10_:Number = Math.max(0,_loc3_);
         var _loc11_:Number = Math.max(0,_loc3_ - 1);
         var _loc12_:Number = Math.max(0,_loc3_ - 2);
         graphics.clear();
         switch(name)
         {
            case "selectedUpSkin":
            case "selectedOverSkin":
               drawRoundRect(0,0,param1,param2,_loc10_,[_loc5_[1],_loc5_[1]],1);
               break;
            case "upSkin":
               _loc14_ = [_loc5_[0],_loc5_[1]];
               _loc15_ = [_loc4_[0],_loc4_[1]];
               drawRoundRect(0,0,param1,param2,_loc10_,_loc14_,_loc15_);
               break;
            case "overSkin":
               if(_loc5_.length > 2)
               {
                  _loc16_ = [_loc5_[2],_loc5_[3]];
               }
               else
               {
                  _loc16_ = [_loc5_[0],_loc5_[1]];
               }
               if(_loc4_.length > 2)
               {
                  _loc17_ = [_loc4_[2],_loc4_[3]];
               }
               else
               {
                  _loc17_ = [_loc4_[0],_loc4_[1]];
               }
               drawRoundRect(0,0,param1,param2,_loc10_,_loc16_,_loc17_);
               drawRoundRect(1,1,param1 - 2,(param2 - 2) / 2,{
                  "tl":_loc11_,
                  "tr":_loc11_,
                  "bl":0,
                  "br":0
               },[16777215,16777215],_loc6_,verticalGradientMatrix(1,1,param1 - 2,(param2 - 2) / 2));
               break;
            case "downSkin":
            case "selectedDownSkin":
               drawRoundRect(0,0,param1,param2,_loc10_,_loc16_,_loc17_);
               drawRoundRect(0,0,param1,param2,_loc10_,[16777215,16777215],[0.5,0.5]);
               break;
            case "disabledSkin":
            case "selectedDisabledSkin":
               drawRoundRect(0,0,param1,param2,_loc10_,[_loc8_,_loc8_],_loc4_);
         }
      }
   }
}
