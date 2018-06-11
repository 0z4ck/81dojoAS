package
{
   import mx.core.IFlexModuleFactory;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.skins.halo.AccordionHeaderSkin;
   import mx.skins.halo.ActivatorSkin;
   import mx.skins.halo.AdvancedDataGridHeaderHorizontalSeparator;
   import mx.skins.halo.BrokenImageBorderSkin;
   import mx.skins.halo.BusyCursor;
   import mx.skins.halo.ButtonBarButtonSkin;
   import mx.skins.halo.ButtonSkin;
   import mx.skins.halo.CheckBoxIcon;
   import mx.skins.halo.ColorPickerSkin;
   import mx.skins.halo.ComboBoxArrowSkin;
   import mx.skins.halo.DataGridColumnDropIndicator;
   import mx.skins.halo.DataGridColumnResizeSkin;
   import mx.skins.halo.DataGridHeaderBackgroundSkin;
   import mx.skins.halo.DataGridHeaderSeparator;
   import mx.skins.halo.DataGridSortArrow;
   import mx.skins.halo.DateChooserIndicator;
   import mx.skins.halo.DateChooserMonthArrowSkin;
   import mx.skins.halo.DateChooserYearArrowSkin;
   import mx.skins.halo.DefaultDragImage;
   import mx.skins.halo.HaloBorder;
   import mx.skins.halo.HaloFocusRect;
   import mx.skins.halo.LinkButtonSkin;
   import mx.skins.halo.ListDropIndicator;
   import mx.skins.halo.MenuBarBackgroundSkin;
   import mx.skins.halo.PanelSkin;
   import mx.skins.halo.RadioButtonIcon;
   import mx.skins.halo.ScrollArrowSkin;
   import mx.skins.halo.ScrollThumbSkin;
   import mx.skins.halo.ScrollTrackSkin;
   import mx.skins.halo.TabSkin;
   import mx.skins.halo.TitleBackground;
   import mx.skins.halo.ToolTipBorder;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.IStyleManager2;
   import mx.utils.ObjectUtil;
   import spark.skins.spark.ApplicationSkin;
   import spark.skins.spark.ErrorSkin;
   import spark.skins.spark.FocusSkin;
   import spark.skins.spark.ImageSkin;
   import spark.skins.spark.SkinnableContainerSkin;
   
   public class _EightyOneShogi_Styles
   {
      
      private static var _embed_css_Assets_swf_265776139_MenuBranchEnabled_1210721895:Class = _class_embed_css_Assets_swf_265776139_MenuBranchEnabled_1210721895;
      
      private static var _embed_css_Assets_swf_265776139_MenuSeparator_1665429875:Class = _class_embed_css_Assets_swf_265776139_MenuSeparator_1665429875;
      
      private static var _embed_css_Assets_swf_265776139_TreeDisclosureClosed_1573325602:Class = _class_embed_css_Assets_swf_265776139_TreeDisclosureClosed_1573325602;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_HBoxDivider_1973386000:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_HBoxDivider_1973386000;
      
      private static var _embed_css_Assets_swf_265776139_TreeDisclosureOpen_1988648580:Class = _class_embed_css_Assets_swf_265776139_TreeDisclosureOpen_1988648580;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_DragMove_405897961:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_DragMove_405897961;
      
      private static var _embed_css_Assets_swf_265776139_MenuCheckEnabled_647320977:Class = _class_embed_css_Assets_swf_265776139_MenuCheckEnabled_647320977;
      
      private static var _embed_css_Assets_swf_265776139___brokenImage_1058630643:Class = _class_embed_css_Assets_swf_265776139___brokenImage_1058630643;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_BusyCursor_87430947:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_BusyCursor_87430947;
      
      private static var _embed_css_Assets_swf_265776139_cursorStretch_1873990618:Class = _class_embed_css_Assets_swf_265776139_cursorStretch_1873990618;
      
      private static var _embed_css_Assets_swf_265776139_mx_containers_FormItem_Required_2128653940:Class = _class_embed_css_Assets_swf_265776139_mx_containers_FormItem_Required_2128653940;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_BoxDividerSkin_1128804013:Class = _class_embed_css_Assets_swf_265776139_mx_skins_BoxDividerSkin_1128804013;
      
      private static var _embed_css_Assets_swf_265776139_CloseButtonDown_1267402819:Class = _class_embed_css_Assets_swf_265776139_CloseButtonDown_1267402819;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_DragLink_405872386:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_DragLink_405872386;
      
      private static var _embed_css_Assets_swf_265776139_CloseButtonDisabled_1326438611:Class = _class_embed_css_Assets_swf_265776139_CloseButtonDisabled_1326438611;
      
      private static var _embed_css_Assets_swf_265776139_MenuRadioDisabled_112172401:Class = _class_embed_css_Assets_swf_265776139_MenuRadioDisabled_112172401;
      
      private static var _embed_css_Assets_swf_265776139_TreeFolderOpen_1549677443:Class = _class_embed_css_Assets_swf_265776139_TreeFolderOpen_1549677443;
      
      private static var _embed_css_Assets_swf_265776139_MenuCheckDisabled_998702796:Class = _class_embed_css_Assets_swf_265776139_MenuCheckDisabled_998702796;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_DragReject_1081642153:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_DragReject_1081642153;
      
      private static var _embed_css_Assets_swf_265776139_CloseButtonUp_30348236:Class = _class_embed_css_Assets_swf_265776139_CloseButtonUp_30348236;
      
      private static var _embed_css_Assets_swf_265776139_MenuBranchDisabled_757597996:Class = _class_embed_css_Assets_swf_265776139_MenuBranchDisabled_757597996;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_VBoxDivider_673293518:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_VBoxDivider_673293518;
      
      private static var _embed_css_Assets_swf_265776139_TreeNodeIcon_1084034992:Class = _class_embed_css_Assets_swf_265776139_TreeNodeIcon_1084034992;
      
      private static var _embed_css_Assets_swf_265776139_MenuRadioEnabled_1533538636:Class = _class_embed_css_Assets_swf_265776139_MenuRadioEnabled_1533538636;
      
      private static var _embed_css_Assets_swf_265776139_CloseButtonOver_1103232853:Class = _class_embed_css_Assets_swf_265776139_CloseButtonOver_1103232853;
      
      private static var _embed_css_Assets_swf_265776139_mx_skins_cursor_DragCopy_405610381:Class = _class_embed_css_Assets_swf_265776139_mx_skins_cursor_DragCopy_405610381;
      
      private static var _embed_css_Assets_swf_265776139_TreeFolderClosed_1035689103:Class = _class_embed_css_Assets_swf_265776139_TreeFolderClosed_1035689103;
       
      
      public function _EightyOneShogi_Styles()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var mergedStyle:CSSStyleDeclaration = null;
         var fbs:IFlexModuleFactory = param1;
         var styleManager:IStyleManager2 = fbs.getImplementation("mx.styles::IStyleManager2") as IStyleManager2;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Application",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Application");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.skinClass = ApplicationSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Image",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Image");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.showErrorSkin = false;
               this.enableLoadingState = false;
               this.smoothingQuality = "default";
               this.skinClass = ImageSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.supportClasses.SkinnableComponent",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableComponent");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.errorSkin = ErrorSkin;
               this.focusSkin = FocusSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.SkinnableContainer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableContainer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = SkinnableContainerSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("global",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("global");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paragraphStartIndent = 0;
               this.shadowDistance = 2;
               this.breakOpportunity = "auto";
               this.kerning = false;
               this.selectionDuration = 250;
               this.leading = 2;
               this.paddingRight = 0;
               this.rollOverOpenDelay = 200;
               this.liveDragging = true;
               this.slideDuration = 300;
               this.iconPlacement = "left";
               this.textFieldClass = UITextField;
               this.layoutDirection = "ltr";
               this.borderStyle = "inset";
               this.ligatureLevel = "common";
               this.repeatDelay = 500;
               this.dropShadowColor = 0;
               this.shadowColor = 15658734;
               this.verticalAlign = "top";
               this.interactionMode = "mouse";
               this.dominantBaseline = "roman";
               this.focusAlpha = 0.4;
               this.fontSharpness = 0;
               this.justificationStyle = "pushInKinsoku";
               this.whiteSpaceCollapse = "collapse";
               this.textDecoration = "none";
               this.fontStyle = "normal";
               this.shadowDirection = "center";
               this.version = "4.0.0";
               this.horizontalScrollPolicy = "auto";
               this.digitWidth = "default";
               this.indicatorGap = 14;
               this.lineBreak = "toFit";
               this.borderCapColor = 9542041;
               this.focusColor = 40447;
               this.themeColor = 40447;
               this.fontSize = 10;
               this.textAlignLast = "start";
               this.paddingLeft = 0;
               this.selectionDisabledColor = 14540253;
               this.trackingRight = 0;
               this.smoothScrolling = true;
               this.showErrorSkin = true;
               this.useRollOver = true;
               this.unfocusedTextSelectionColor = 15263976;
               this.backgroundAlpha = 1;
               this.dropShadowEnabled = false;
               this.baselineShift = 0;
               this.textAlpha = 1;
               this.verticalGap = 6;
               this.closeDuration = 250;
               this.disabledAlpha = 0.5;
               this.fillColor = 16777215;
               this.roundedBottomCorners = true;
               this.highlightAlphas = [0.3,0];
               this.horizontalAlign = "left";
               this.verticalGridLines = true;
               this.textRotation = "auto";
               this.dropShadowVisible = false;
               this.backgroundSize = "auto";
               this.horizontalGridLines = false;
               this.tabStops = null;
               this.softKeyboardEffectDuration = 150;
               this.firstBaselineOffset = "ascent";
               this.focusRoundedCorners = "tl tr bl br";
               this.lineThrough = false;
               this.focusSkin = HaloFocusRect;
               this.focusedTextSelectionColor = 11060974;
               this.symbolColor = 0;
               this.borderAlpha = 1;
               this.filled = true;
               this.openDuration = 250;
               this.disabledColor = 11187123;
               this.alignmentBaseline = "useDominantBaseline";
               this.modalTransparencyColor = 14540253;
               this.embedFonts = false;
               this.modalTransparencyDuration = 100;
               this.modalTransparency = 0.5;
               this.backgroundImageFillMode = "scale";
               this.lineHeight = "120%";
               this.typographicCase = "default";
               this.borderColor = 12040892;
               this.fontAntiAliasType = "advanced";
               this.selectionColor = 8376063;
               this.cffHinting = "horizontalStem";
               this.contentBackgroundAlpha = 1;
               this.cornerRadius = 0;
               this.borderThickness = 1;
               this.fontFamily = "Verdana";
               this.indentation = 17;
               this.paddingBottom = 0;
               this.digitCase = "default";
               this.repeatInterval = 35;
               this.textSelectedColor = 2831164;
               this.paragraphEndIndent = 0;
               this.disabledIconColor = 10066329;
               this.fontWeight = "normal";
               this.borderVisible = true;
               this.focusBlendMode = "normal";
               this.textAlign = "left";
               this.accentColor = 39423;
               this.shadowCapColor = 14015965;
               this.contentBackgroundColor = 16777215;
               this.fontLookup = "auto";
               this.chromeColor = 13421772;
               this.columnGap = 0;
               this.focusThickness = 2;
               this.verticalGridLineColor = 14015965;
               this.blockProgression = "tb";
               this.textRollOverColor = 2831164;
               this.fillAlphas = [0.6,0.4,0.75,0.65];
               this.horizontalGridLineColor = 16250871;
               this.strokeWidth = 1;
               this.fontGridFitType = "pixel";
               this.errorColor = 16711680;
               this.paragraphSpaceAfter = 0;
               this.unfocusedSelectionColor = 15263976;
               this.justificationRule = "space";
               this.borderSides = "left top right bottom";
               this.color = 734012;
               this.buttonColor = 7305079;
               this.fillColors = [16777215,13421772,16777215,15658734];
               this.paragraphSpaceBefore = 0;
               this.locale = "en";
               this.textIndent = 0;
               this.fontThickness = 0;
               this.renderingMode = "cff";
               this.textJustify = "interWord";
               this.inactiveSelectionColor = 15263976;
               this.fullScreenHideControlsDelay = 3000;
               this.columnWidth = "auto";
               this.paddingTop = 0;
               this.direction = "ltr";
               this.fixedThumbSize = false;
               this.caretColor = 92159;
               this.letterSpacing = 0;
               this.borderWeight = 1;
               this.columnCount = "auto";
               this.bevel = true;
               this.verticalScrollPolicy = "auto";
               this.trackingLeft = 0;
               this.horizontalGap = 8;
               this.rollOverColor = 11723263;
               this.modalTransparencyBlur = 3;
               this.stroked = false;
               this.iconColor = 1118481;
               this.inactiveTextSelectionColor = 15263976;
               this.leadingModel = "auto";
               this.showErrorTip = true;
               this.autoThumbVisibility = true;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","dateFieldPopup");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".dateFieldPopup");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderThickness = 0;
               this.backgroundColor = 16777215;
               this.dropShadowVisible = true;
               this.dropShadowEnabled = true;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","errorTip");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".errorTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderColor = 13510953;
               this.paddingBottom = 4;
               this.color = 16777215;
               this.paddingRight = 4;
               this.fontSize = 9;
               this.paddingTop = 4;
               this.borderStyle = "errorTipRight";
               this.shadowColor = 0;
               this.paddingLeft = 4;
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","headerDragProxyStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".headerDragProxyStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","swatchPanelTextField");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".swatchPanelTextField");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.highlightColor = 12897484;
               this.backgroundColor = 16777215;
               this.borderColor = 14015965;
               this.borderCapColor = 9542041;
               this.buttonColor = 7305079;
               this.shadowCapColor = 14015965;
               this.paddingRight = 5;
               this.borderStyle = "inset";
               this.paddingLeft = 5;
               this.shadowColor = 14015965;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","todayStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".todayStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 16777215;
               this.textAlign = "center";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","weekDayStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".weekDayStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "center";
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowStatus");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".windowStatus");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 6710886;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowStyles");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".windowStyles");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","advancedDataGridStyles");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".advancedDataGridStyles");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","activeButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".activeButtonStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","activeTabStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".activeTabStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".alertButtonStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 734012;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","comboDropdown");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".comboDropdown");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.shadowDistance = 1;
               this.borderThickness = 0;
               this.backgroundColor = 16777215;
               this.leading = 0;
               this.paddingRight = 5;
               this.dropShadowEnabled = true;
               this.shadowDirection = "center";
               this.paddingLeft = 5;
               this.fontWeight = "normal";
               this.cornerRadius = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","dataGridStyles");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".dataGridStyles");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","headerDateText");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".headerDateText");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "center";
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","linkButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".linkButtonStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingBottom = 2;
               this.paddingRight = 2;
               this.paddingTop = 2;
               this.paddingLeft = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","opaquePanel");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".opaquePanel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.borderColor = 16777215;
               this.footerColors = [15198183,13092807];
               this.headerColors = [15198183,14277081];
               this.borderAlpha = 1;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","plain");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".plain");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.paddingBottom = 0;
               this.backgroundImage = "";
               this.horizontalAlign = "left";
               this.paddingRight = 0;
               this.paddingTop = 0;
               this.paddingLeft = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","popUpMenu");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".popUpMenu");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "left";
               this.fontWeight = "normal";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","richTextEditorTextAreaStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".richTextEditorTextAreaStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaVScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".textAreaVScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaHScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".textAreaHScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.Accordion",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Accordion");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.paddingBottom = -1;
               this.paddingRight = -1;
               this.paddingTop = -1;
               this.borderSkin = HaloBorder;
               this.borderStyle = "solid";
               this.verticalGap = -1;
               this.paddingLeft = -1;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.accordionClasses.AccordionHeader",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.accordionClasses.AccordionHeader");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = null;
               this.textAlign = "left";
               this.paddingRight = 5;
               this.skin = AccordionHeaderSkin;
               this.disabledSkin = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
               this.downSkin = null;
               this.horizontalGap = 2;
               this.paddingBottom = 0;
               this.selectedDownSkin = null;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.fontSize = "10";
               this.paddingTop = 0;
               this.paddingLeft = 5;
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Alert",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Alert");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.buttonStyleName = "alertButtonStyle";
               this.backgroundColor = 8821927;
               this.borderColor = 8821927;
               this.paddingBottom = 2;
               this.color = 16777215;
               this.roundedBottomCorners = true;
               this.paddingRight = 10;
               this.backgroundAlpha = 0.9;
               this.borderAlpha = 0.9;
               this.paddingTop = 2;
               this.paddingLeft = 10;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.ApplicationControlBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ApplicationControlBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingBottom = 4;
               this.paddingRight = 8;
               this.fillColors = [16777215,16777215];
               this.paddingTop = 5;
               this.borderSkin = HaloBorder;
               this.fillAlphas = [0,0];
               this.paddingLeft = 8;
               this.cornerRadius = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Button");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalGap = 2;
               this.paddingBottom = 2;
               this.textAlign = "center";
               this.paddingRight = 10;
               this.skin = ButtonSkin;
               this.paddingTop = 2;
               this.labelVerticalOffset = 0;
               this.verticalGap = 2;
               this.paddingLeft = 10;
               this.emphasizedSkin = null;
               this.fontWeight = "bold";
               this.cornerRadius = 4;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ButtonBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ButtonBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "middle";
               this.horizontalGap = 0;
               this.firstButtonStyleName = "";
               this.textAlign = "center";
               this.horizontalAlign = "center";
               this.lastButtonStyleName = "";
               this.verticalGap = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","buttonBarFirstButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.buttonBarClasses.ButtonBarButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.buttonBarClasses.ButtonBarButton.buttonBarFirstButtonStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.focusRoundedCorners = "tl bl";
               this.skin = null;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","buttonBarLastButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.buttonBarClasses.ButtonBarButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.buttonBarClasses.ButtonBarButton.buttonBarLastButtonStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.focusRoundedCorners = "tr br";
               this.skin = null;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.buttonBarClasses.ButtonBarButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.buttonBarClasses.ButtonBarButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.downSkin = null;
               this.upSkin = null;
               this.horizontalGap = 1;
               this.selectedDownSkin = null;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.skin = ButtonBarButtonSkin;
               this.disabledSkin = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.CalendarLayout",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.CalendarLayout");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalGap = 7;
               this.paddingBottom = 10;
               this.color = 2831164;
               this.textAlign = "center";
               this.todayColor = 8487297;
               this.paddingRight = 6;
               this.paddingTop = 6;
               this.verticalGap = 6;
               this.paddingLeft = 6;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.CheckBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.CheckBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = null;
               this.paddingRight = 0;
               this.upIcon = null;
               this.icon = CheckBoxIcon;
               this.skin = null;
               this.paddingBottom = 2;
               this.paddingTop = 2;
               this.labelVerticalOffset = 0;
               this.fontWeight = "normal";
               this.textAlign = "left";
               this.selectedUpIcon = null;
               this.overIcon = null;
               this.selectedOverIcon = null;
               this.disabledSkin = null;
               this.selectedDisabledIcon = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
               this.downSkin = null;
               this.downIcon = null;
               this.horizontalGap = 5;
               this.selectedDownSkin = null;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.iconColor = 2831164;
               this.disabledIcon = null;
               this.paddingLeft = 0;
               this.selectedDownIcon = null;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ColorPicker",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ColorPicker");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skin = ColorPickerSkin;
               this.iconColor = 0;
               this.swatchBorderSize = 0;
               this.fontSize = 11;
               this.verticalGap = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ComboBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ComboBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderSkin = HaloBorder;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ComboBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ComboBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingBottom = 0;
               this.editableSkin = null;
               this.leading = 0;
               this.paddingRight = 5;
               this.skin = ComboBoxArrowSkin;
               this.paddingTop = 0;
               this.arrowButtonWidth = 22;
               this.dropdownStyleName = "comboDropdown";
               this.disabledIconColor = 9542041;
               this.paddingLeft = 5;
               this.fontWeight = "bold";
               this.cornerRadius = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","comboDropdown");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.List",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.List.comboDropdown");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.leading = 0;
               this.paddingRight = 5;
               this.paddingLeft = 5;
               this.fontWeight = "normal";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.Container",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Container");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderSkin = HaloBorder;
               this.borderStyle = "none";
               this.cornerRadius = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.ControlBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ControlBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "middle";
               this.paddingBottom = 10;
               this.paddingRight = 10;
               this.disabledOverlayAlpha = 0;
               this.paddingTop = 10;
               this.borderStyle = "controlBar";
               this.paddingLeft = 10;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.DataGrid",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.DataGrid");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.headerDragProxyStyleName = "headerDragProxyStyle";
               this.alternatingItemColors = [16250871,16777215];
               this.sortArrowSkin = DataGridSortArrow;
               this.verticalGridLineColor = 13421772;
               this.headerColors = [16777215,15132390];
               this.headerStyleName = "dataGridStyles";
               this.columnDropIndicatorSkin = DataGridColumnDropIndicator;
               this.headerSeparatorSkin = DataGridHeaderSeparator;
               this.stretchCursor = _embed_css_Assets_swf_265776139_cursorStretch_1873990618;
               this.columnResizeSkin = DataGridColumnResizeSkin;
               this.headerBackgroundSkin = DataGridHeaderBackgroundSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.dataGridClasses.DataGridItemRenderer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.dataGridClasses.DataGridItemRenderer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingLeft = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.DateChooser",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.DateChooser");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.todayStyleName = "todayStyle";
               this.backgroundColor = 16777215;
               this.todayIndicatorSkin = DateChooserIndicator;
               this.todayColor = 8487297;
               this.headerColors = [14804459,16053751];
               this.headerStyleName = "headerDateText";
               this.prevYearSkin = DateChooserYearArrowSkin;
               this.borderSkin = HaloBorder;
               this.selectionIndicatorSkin = DateChooserIndicator;
               this.cornerRadius = 4;
               this.weekDayStyleName = "weekDayStyle";
               this.prevMonthSkin = DateChooserMonthArrowSkin;
               this.rollOverIndicatorSkin = DateChooserIndicator;
               this.nextMonthSkin = DateChooserMonthArrowSkin;
               this.nextYearSkin = DateChooserYearArrowSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.DividedBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.DividedBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dividerAlpha = 0.75;
               this.dividerThickness = 3;
               this.horizontalGap = 10;
               this.dividerSkin = _embed_css_Assets_swf_265776139_mx_skins_BoxDividerSkin_1128804013;
               this.dividerAffordance = 6;
               this.verticalDividerCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_VBoxDivider_673293518;
               this.verticalGap = 10;
               this.horizontalDividerCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_HBoxDivider_1973386000;
               this.dividerColor = 7305079;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.managers.DragManager",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.DragManager");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.linkCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_DragLink_405872386;
               this.rejectCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_DragReject_1081642153;
               this.copyCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_DragCopy_405610381;
               this.moveCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_DragMove_405897961;
               this.defaultDragImageSkin = DefaultDragImage;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.Form",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Form");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingBottom = 16;
               this.paddingRight = 16;
               this.paddingTop = 16;
               this.verticalGap = 6;
               this.paddingLeft = 16;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.FormItem",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.FormItem");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.indicatorSkin = _embed_css_Assets_swf_265776139_mx_containers_FormItem_Required_2128653940;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.FormItemLabel",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.FormItemLabel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "right";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.HRule",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HRule");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.strokeWidth = 2;
               this.strokeColor = 12897484;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Image",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Image");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.layoutDirection = "ltr";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.LinkButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.LinkButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.downSkin = null;
               this.upSkin = null;
               this.selectedDownSkin = null;
               this.paddingRight = 7;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.skin = LinkButtonSkin;
               this.disabledSkin = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
               this.paddingLeft = 7;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","linkButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.LinkButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.LinkButton.linkButtonStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingBottom = 2;
               this.paddingRight = 2;
               this.paddingTop = 2;
               this.paddingLeft = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.listClasses.ListBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.listClasses.ListBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this._creationPolicy = "auto";
               this.paddingBottom = 2;
               this.paddingRight = 0;
               this.backgroundDisabledColor = 14540253;
               this.dropIndicatorSkin = ListDropIndicator;
               this.paddingTop = 2;
               this.borderStyle = "solid";
               this.paddingLeft = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Menu",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Menu");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "middle";
               this.paddingRight = 0;
               this.dropIndicatorSkin = ListDropIndicator;
               this.separatorSkin = _embed_css_Assets_swf_265776139_MenuSeparator_1665429875;
               this.backgroundAlpha = 1;
               this.dropShadowEnabled = true;
               this.leftIconGap = 18;
               this.rightIconGap = 15;
               this.radioDisabledIcon = _embed_css_Assets_swf_265776139_MenuRadioDisabled_112172401;
               this.horizontalGap = 6;
               this.radioIcon = _embed_css_Assets_swf_265776139_MenuRadioEnabled_1533538636;
               this.branchDisabledIcon = _embed_css_Assets_swf_265776139_MenuBranchDisabled_757597996;
               this.paddingBottom = 1;
               this.branchIcon = _embed_css_Assets_swf_265776139_MenuBranchEnabled_1210721895;
               this.checkDisabledIcon = _embed_css_Assets_swf_265776139_MenuCheckDisabled_998702796;
               this.paddingTop = 1;
               this.borderStyle = "menuBorder";
               this.checkIcon = _embed_css_Assets_swf_265776139_MenuCheckEnabled_647320977;
               this.paddingLeft = 1;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","popUpMenu");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.Menu",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Menu.popUpMenu");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "start";
               this.fontWeight = "normal";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.MenuBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.MenuBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundSkin = MenuBarBackgroundSkin;
               this.itemSkin = ActivatorSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.NavBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.NavBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderSkin = HaloBorder;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.Panel",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Panel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.borderColor = 14869218;
               this.paddingRight = 0;
               this.borderAlpha = 0.4;
               this.resizeEndEffect = "Dissolve";
               this.statusStyleName = "windowStatus";
               this.dropShadowEnabled = true;
               this.borderSkin = PanelSkin;
               this.cornerRadius = 4;
               this.borderThickness = 0;
               this.borderThicknessRight = 10;
               this.paddingBottom = 0;
               this.roundedBottomCorners = false;
               this.borderThicknessTop = 2;
               this.titleBackgroundSkin = TitleBackground;
               this.paddingTop = 0;
               this.borderStyle = "default";
               this.borderThicknessLeft = 10;
               this.paddingLeft = 0;
               this.titleStyleName = "windowStyles";
               this.resizeStartEffect = "Dissolve";
            };
         }
         effects = style.mx_internal::effects;
         if(!effects)
         {
            effects = style.mx_internal::effects = [];
         }
         effects.push("resizeEndEffect");
         effects.push("resizeStartEffect");
         effects.push("resizeEndEffect");
         effects.push("resizeStartEffect");
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.RadioButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.RadioButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = null;
               this.paddingRight = 0;
               this.upIcon = null;
               this.icon = RadioButtonIcon;
               this.skin = null;
               this.cornerRadius = 7;
               this.paddingBottom = 2;
               this.paddingTop = 2;
               this.labelVerticalOffset = 0;
               this.fontWeight = "normal";
               this.textAlign = "left";
               this.selectedUpIcon = null;
               this.overIcon = null;
               this.selectedOverIcon = null;
               this.disabledSkin = null;
               this.selectedDisabledIcon = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
               this.downSkin = null;
               this.downIcon = null;
               this.horizontalGap = 5;
               this.selectedDownSkin = null;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.iconColor = 2831164;
               this.disabledIcon = null;
               this.paddingLeft = 0;
               this.selectedDownIcon = null;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","richTextEditorTextAreaStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.TextArea",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextArea.richTextEditorTextAreaStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.TextArea",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextArea");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.horizontalScrollBarStyleName = "textAreaHScrollBarStyle";
               this.verticalScrollBarStyleName = "textAreaVScrollBarStyle";
               this.backgroundDisabledColor = 14540253;
               this.borderStyle = "solid";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.scrollClasses.ScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.scrollClasses.ScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.thumbSkin = ScrollThumbSkin;
               this.borderColor = 12040892;
               this.paddingBottom = 0;
               this.thumbOffset = 0;
               this.paddingRight = 0;
               this.trackSkin = ScrollTrackSkin;
               this.downArrowSkin = ScrollArrowSkin;
               this.upArrowSkin = ScrollArrowSkin;
               this.paddingTop = 0;
               this.paddingLeft = 0;
               this.trackColors = [9738651,15198183];
               this.cornerRadius = 4;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.ScrollControlBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.ScrollControlBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.focusRoundedCorners = "tl tr bl br";
               this.borderSkin = HaloBorder;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.colorPickerClasses.SwatchPanel",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.colorPickerClasses.SwatchPanel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.previewHeight = 22;
               this.backgroundColor = 15066855;
               this.borderColor = 10856878;
               this.paddingRight = 5;
               this.swatchBorderSize = 1;
               this.columnCount = 20;
               this.swatchHighlightSize = 1;
               this.textFieldWidth = 72;
               this.verticalGap = 0;
               this.swatchGridBackgroundColor = 0;
               this.swatchBorderColor = 0;
               this.previewWidth = 45;
               this.swatchHeight = 12;
               this.highlightColor = 16777215;
               this.horizontalGap = 0;
               this.paddingBottom = 5;
               this.textFieldStyleName = "swatchPanelTextField";
               this.swatchGridBorderSize = 0;
               this.swatchWidth = 12;
               this.fontSize = 11;
               this.paddingTop = 4;
               this.swatchHighlightColor = 16777215;
               this.paddingLeft = 5;
               this.shadowColor = 5068126;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.SWFLoader",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.SWFLoader");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.brokenImageBorderSkin = BrokenImageBorderSkin;
               this.brokenImageSkin = _embed_css_Assets_swf_265776139___brokenImage_1058630643;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.tabBarClasses.Tab",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.tabBarClasses.Tab");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.downSkin = null;
               this.upSkin = null;
               this.paddingBottom = 1;
               this.selectedDownSkin = null;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.skin = TabSkin;
               this.disabledSkin = null;
               this.selectedOverSkin = null;
               this.paddingTop = 1;
               this.selectedDisabledSkin = null;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.TabBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TabBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "top";
               this.horizontalGap = -1;
               this.textAlign = "center";
               this.horizontalAlign = "left";
               this.verticalGap = -1;
               this.selectedTabTextStyleName = "activeTabStyle";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.TabNavigator",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.TabNavigator");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.borderColor = 11187123;
               this.horizontalGap = -1;
               this.horizontalAlign = "left";
               this.paddingTop = 10;
               this.tabOffset = 0;
               this.borderStyle = "solid";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaVScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.HScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HScrollBar.textAreaVScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaHScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.VScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.VScrollBar.textAreaHScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.TextInput",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextInput");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.paddingRight = 0;
               this.backgroundDisabledColor = 14540253;
               this.paddingTop = 0;
               this.borderSkin = HaloBorder;
               this.paddingLeft = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.TitleWindow",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.TitleWindow");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.closeButtonDisabledSkin = _embed_css_Assets_swf_265776139_CloseButtonDisabled_1326438611;
               this.paddingBottom = 4;
               this.paddingRight = 4;
               this.closeButtonUpSkin = _embed_css_Assets_swf_265776139_CloseButtonUp_30348236;
               this.closeButtonOverSkin = _embed_css_Assets_swf_265776139_CloseButtonOver_1103232853;
               this.paddingTop = 4;
               this.dropShadowEnabled = true;
               this.paddingLeft = 4;
               this.closeButtonDownSkin = _embed_css_Assets_swf_265776139_CloseButtonDown_1267402819;
               this.cornerRadius = 8;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.VDividedBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.VDividedBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dividerAlpha = 0.75;
               this.dividerThickness = 3;
               this.horizontalGap = 10;
               this.dividerSkin = _embed_css_Assets_swf_265776139_mx_skins_BoxDividerSkin_1128804013;
               this.dividerAffordance = 6;
               this.verticalDividerCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_VBoxDivider_673293518;
               this.verticalGap = 10;
               this.horizontalDividerCursor = _embed_css_Assets_swf_265776139_mx_skins_cursor_HBoxDivider_1973386000;
               this.dividerColor = 7305079;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.managers.CursorManager",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.CursorManager");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.busyCursor = BusyCursor;
               this.busyCursorBackground = _embed_css_Assets_swf_265776139_mx_skins_cursor_BusyCursor_87430947;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ToolTip",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ToolTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777164;
               this.borderColor = 9542041;
               this.paddingBottom = 2;
               this.paddingRight = 4;
               this.backgroundAlpha = 0.95;
               this.fontSize = 9;
               this.paddingTop = 2;
               this.borderSkin = ToolTipBorder;
               this.borderStyle = "toolTip";
               this.paddingLeft = 4;
               this.cornerRadius = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.AdvancedDataGrid",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.AdvancedDataGrid");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.folderClosedIcon = _embed_css_Assets_swf_265776139_TreeFolderClosed_1035689103;
               this.disclosureOpenIcon = _embed_css_Assets_swf_265776139_TreeDisclosureOpen_1988648580;
               this.headerDragProxyStyleName = "headerDragProxyStyle";
               this.alternatingItemColors = [16250871,16777215];
               this.sortArrowSkin = DataGridSortArrow;
               this.sortFontStyle = "normal";
               this.paddingRight = 0;
               this.headerColors = [16777215,15132390];
               this.headerStyleName = "advancedDataGridStyles";
               this.defaultLeafIcon = _embed_css_Assets_swf_265776139_TreeNodeIcon_1084034992;
               this.headerHorizontalSeparatorSkin = AdvancedDataGridHeaderHorizontalSeparator;
               this.headerSeparatorSkin = DataGridHeaderSeparator;
               this.columnResizeSkin = DataGridColumnResizeSkin;
               this.headerBackgroundSkin = DataGridHeaderBackgroundSkin;
               this.disclosureClosedIcon = _embed_css_Assets_swf_265776139_TreeDisclosureClosed_1573325602;
               this.sortFontFamily = "Verdana";
               this.verticalGridLineColor = 13421772;
               this.folderOpenIcon = _embed_css_Assets_swf_265776139_TreeFolderOpen_1549677443;
               this.columnDropIndicatorSkin = DataGridColumnDropIndicator;
               this.sortFontSize = 10;
               this.sortFontWeight = "normal";
               this.paddingLeft = 2;
               this.stretchCursor = _embed_css_Assets_swf_265776139_cursorStretch_1873990618;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.advancedDataGridClasses.AdvancedDataGridItemRenderer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.advancedDataGridClasses.AdvancedDataGridItemRenderer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingLeft = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.advancedDataGridClasses.AdvancedDataGridSortItemRenderer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.advancedDataGridClasses.AdvancedDataGridSortItemRenderer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalGap = 0;
               this.paddingBottom = 0;
               this.color = 734012;
               this.paddingRight = 0;
               this.icon = DataGridSortArrow;
               this.paddingTop = 0;
               this.paddingLeft = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "middle";
               this.horizontalGap = 0;
               this.backgroundColor = 16777215;
               this.paddingBottom = 0;
               this.color = 734012;
               this.horizontalAlign = "center";
               this.paddingRight = 2;
               this.backgroundAlpha = 0;
               this.paddingTop = 0;
               this.paddingLeft = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.listClasses.AdvancedListBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.listClasses.AdvancedListBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this._creationPolicy = "auto";
               this.paddingBottom = 2;
               this.paddingRight = 0;
               this.dropIndicatorSkin = ListDropIndicator;
               this.paddingTop = 2;
               this.borderStyle = "solid";
               this.paddingLeft = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
      }
   }
}
