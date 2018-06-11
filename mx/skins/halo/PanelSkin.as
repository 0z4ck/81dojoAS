package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import mx.core.EdgeMetrics;
   import mx.core.IContainer;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class PanelSkin extends HaloBorder
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      private static var panels:Object = {};
       
      
      private var oldHeaderHeight:Number;
      
      private var oldControlBarHeight:Number;
      
      protected var _panelBorderMetrics:EdgeMetrics;
      
      public function PanelSkin()
      {
         super();
      }
      
      private static function isPanel(param1:Object) : Boolean
      {
         var s:String = null;
         var x:XML = null;
         var parent:Object = param1;
         s = getQualifiedClassName(parent);
         if(panels[s] == 1)
         {
            return true;
         }
         if(panels[s] == 0)
         {
            return false;
         }
         if(s == "mx.containers::Panel")
         {
            panels[s] == 1;
            return true;
         }
         x = describeType(parent);
         var xmllist:XMLList = x.extendsClass.(@type == "mx.containers::Panel");
         if(xmllist.length() == 0)
         {
            panels[s] = 0;
            return false;
         }
         panels[s] = 1;
         return true;
      }
      
      override public function get borderMetrics() : EdgeMetrics
      {
         var _loc4_:Number = NaN;
         var _loc1_:Boolean = isPanel(parent);
         var _loc2_:IUIComponent = !!_loc1_?Object(parent)._controlBar:null;
         var _loc3_:Number = !!_loc1_?Number(Object(parent).getHeaderHeightProxy()):Number(NaN);
         if(_loc2_ && _loc2_.includeInLayout)
         {
            _loc4_ = _loc2_.getExplicitOrMeasuredHeight();
         }
         if(_loc4_ != this.oldControlBarHeight && !(isNaN(this.oldControlBarHeight) && isNaN(_loc4_)))
         {
            this._panelBorderMetrics = null;
         }
         if(_loc3_ != this.oldHeaderHeight && !(isNaN(_loc3_) && isNaN(this.oldHeaderHeight)))
         {
            this._panelBorderMetrics = null;
         }
         if(this._panelBorderMetrics)
         {
            return this._panelBorderMetrics;
         }
         var _loc5_:EdgeMetrics = super.borderMetrics;
         var _loc6_:EdgeMetrics = new EdgeMetrics(0,0,0,0);
         var _loc7_:Number = getStyle("borderThickness");
         var _loc8_:Number = getStyle("borderThicknessLeft");
         var _loc9_:Number = getStyle("borderThicknessTop");
         var _loc10_:Number = getStyle("borderThicknessRight");
         var _loc11_:Number = getStyle("borderThicknessBottom");
         _loc6_.left = _loc5_.left + (!!isNaN(_loc8_)?_loc7_:_loc8_);
         _loc6_.top = _loc5_.top + (!!isNaN(_loc9_)?_loc7_:_loc9_);
         _loc6_.right = _loc5_.bottom + (!!isNaN(_loc10_)?_loc7_:_loc10_);
         _loc6_.bottom = _loc5_.bottom + (!!isNaN(_loc11_)?_loc2_ && !isNaN(_loc9_)?_loc9_:!!isNaN(_loc8_)?_loc7_:_loc8_:_loc11_);
         this.oldHeaderHeight = _loc3_;
         if(!isNaN(_loc3_))
         {
            _loc6_.top = _loc6_.top + _loc3_;
         }
         this.oldControlBarHeight = _loc4_;
         if(!isNaN(_loc4_))
         {
            _loc6_.bottom = _loc6_.bottom + _loc4_;
         }
         this._panelBorderMetrics = _loc6_;
         return this._panelBorderMetrics;
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         if(param1 == null || param1 == "styleName" || param1 == "borderStyle" || param1 == "borderThickness" || param1 == "borderThicknessTop" || param1 == "borderThicknessBottom" || param1 == "borderThicknessLeft" || param1 == "borderThicknessRight" || param1 == "borderSides")
         {
            this._panelBorderMetrics = null;
         }
         invalidateDisplayList();
      }
      
      override mx_internal function drawBorder(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Graphics = null;
         var _loc8_:IContainer = null;
         var _loc9_:EdgeMetrics = null;
         super.drawBorder(param1,param2);
         var _loc3_:String = getStyle("borderStyle");
         if(_loc3_ == "default")
         {
            _loc4_ = getStyle("backgroundAlpha");
            _loc5_ = getStyle("borderAlpha");
            backgroundAlphaName = "borderAlpha";
            radiusObj = null;
            radius = getStyle("cornerRadius");
            bRoundedCorners = getStyle("roundedBottomCorners").toString().toLowerCase() == "true";
            _loc6_ = !!bRoundedCorners?Number(radius):Number(0);
            _loc7_ = graphics;
            drawDropShadow(0,0,param1,param2,radius,radius,_loc6_,_loc6_);
            if(!bRoundedCorners)
            {
               radiusObj = {};
            }
            _loc8_ = parent as IContainer;
            if(_loc8_)
            {
               _loc9_ = _loc8_.viewMetrics;
               backgroundHole = {
                  "x":_loc9_.left,
                  "y":_loc9_.top,
                  "w":Math.max(0,param1 - _loc9_.left - _loc9_.right),
                  "h":Math.max(0,param2 - _loc9_.top - _loc9_.bottom),
                  "r":0
               };
               if(backgroundHole.w > 0 && backgroundHole.h > 0)
               {
                  if(_loc4_ != _loc5_)
                  {
                     drawDropShadow(backgroundHole.x,backgroundHole.y,backgroundHole.w,backgroundHole.h,0,0,0,0);
                  }
                  _loc7_.beginFill(Number(backgroundColor),_loc4_);
                  _loc7_.drawRect(backgroundHole.x,backgroundHole.y,backgroundHole.w,backgroundHole.h);
                  _loc7_.endFill();
               }
            }
            backgroundColor = getStyle("borderColor");
         }
      }
      
      override mx_internal function drawBackground(param1:Number, param2:Number) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Number = NaN;
         super.drawBackground(param1,param2);
         if(getStyle("headerColors") == null && getStyle("borderStyle") == "default")
         {
            _loc3_ = getStyle("highlightAlphas");
            _loc4_ = !!_loc3_?Number(_loc3_[0]):Number(0.3);
            drawRoundRect(0,0,param1,param2,{
               "tl":radius,
               "tr":radius,
               "bl":0,
               "br":0
            },16777215,_loc4_,null,GradientType.LINEAR,null,{
               "x":0,
               "y":1,
               "w":param1,
               "h":param2 - 1,
               "r":{
                  "tl":radius,
                  "tr":radius,
                  "bl":0,
                  "br":0
               }
            });
         }
      }
      
      override mx_internal function getBackgroundColorMetrics() : EdgeMetrics
      {
         if(getStyle("borderStyle") == "default")
         {
            return EdgeMetrics.EMPTY;
         }
         return super.borderMetrics;
      }
   }
}
