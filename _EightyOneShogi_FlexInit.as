package
{
   import flash.net.getClassByAlias;
   import flash.net.registerClassAlias;
   import flash.system.Capabilities;
   import mx.accessibility.AccordionHeaderAccImpl;
   import mx.accessibility.AdvancedDataGridAccImpl;
   import mx.accessibility.AlertAccImpl;
   import mx.accessibility.ButtonAccImpl;
   import mx.accessibility.CheckBoxAccImpl;
   import mx.accessibility.ColorPickerAccImpl;
   import mx.accessibility.ComboBaseAccImpl;
   import mx.accessibility.ComboBoxAccImpl;
   import mx.accessibility.DataGridAccImpl;
   import mx.accessibility.DateChooserAccImpl;
   import mx.accessibility.LabelAccImpl;
   import mx.accessibility.LinkButtonAccImpl;
   import mx.accessibility.ListAccImpl;
   import mx.accessibility.ListBaseAccImpl;
   import mx.accessibility.MenuAccImpl;
   import mx.accessibility.MenuBarAccImpl;
   import mx.accessibility.PanelAccImpl;
   import mx.accessibility.RadioButtonAccImpl;
   import mx.accessibility.TabBarAccImpl;
   import mx.accessibility.TitleWindowAccImpl;
   import mx.accessibility.UIComponentAccProps;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.managers.systemClasses.ChildManager;
   import mx.messaging.config.ConfigMap;
   import mx.messaging.messages.AcknowledgeMessage;
   import mx.messaging.messages.AcknowledgeMessageExt;
   import mx.messaging.messages.AsyncMessage;
   import mx.messaging.messages.AsyncMessageExt;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.CommandMessageExt;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.HTTPRequestMessage;
   import mx.messaging.messages.MessagePerformanceInfo;
   import mx.styles.IStyleManager2;
   import mx.styles.StyleManagerImpl;
   import mx.utils.ObjectProxy;
   
   public class _EightyOneShogi_FlexInit
   {
       
      
      public function _EightyOneShogi_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var styleManager:IStyleManager2 = null;
         var fbs:IFlexModuleFactory = param1;
         new ChildManager(fbs);
         styleManager = new StyleManagerImpl(fbs);
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("completeEffect","complete");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("itemsChangeEffect","itemsChange");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect","resizeEnd");
         EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect","resizeStart");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         if(Capabilities.hasAccessibility)
         {
            ComboBoxAccImpl.enableAccessibility();
            RadioButtonAccImpl.enableAccessibility();
            AdvancedDataGridAccImpl.enableAccessibility();
            UIComponentAccProps.enableAccessibility();
            ButtonAccImpl.enableAccessibility();
            AccordionHeaderAccImpl.enableAccessibility();
            LinkButtonAccImpl.enableAccessibility();
            TitleWindowAccImpl.enableAccessibility();
            CheckBoxAccImpl.enableAccessibility();
            ListBaseAccImpl.enableAccessibility();
            LabelAccImpl.enableAccessibility();
            MenuBarAccImpl.enableAccessibility();
            PanelAccImpl.enableAccessibility();
            MenuAccImpl.enableAccessibility();
            AlertAccImpl.enableAccessibility();
            TabBarAccImpl.enableAccessibility();
            ColorPickerAccImpl.enableAccessibility();
            DataGridAccImpl.enableAccessibility();
            DateChooserAccImpl.enableAccessibility();
            ListAccImpl.enableAccessibility();
            ComboBaseAccImpl.enableAccessibility();
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayCollection") != ArrayCollection)
            {
               registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayList") != ArrayList)
            {
               registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
         }
         try
         {
            if(getClassByAlias("flex.messaging.config.ConfigMap") != ConfigMap)
            {
               registerClassAlias("flex.messaging.config.ConfigMap",ConfigMap);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.config.ConfigMap",ConfigMap);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.AcknowledgeMessage") != AcknowledgeMessage)
            {
               registerClassAlias("flex.messaging.messages.AcknowledgeMessage",AcknowledgeMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.AcknowledgeMessage",AcknowledgeMessage);
         }
         try
         {
            if(getClassByAlias("DSK") != AcknowledgeMessageExt)
            {
               registerClassAlias("DSK",AcknowledgeMessageExt);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("DSK",AcknowledgeMessageExt);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.AsyncMessage") != AsyncMessage)
            {
               registerClassAlias("flex.messaging.messages.AsyncMessage",AsyncMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.AsyncMessage",AsyncMessage);
         }
         try
         {
            if(getClassByAlias("DSA") != AsyncMessageExt)
            {
               registerClassAlias("DSA",AsyncMessageExt);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("DSA",AsyncMessageExt);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.CommandMessage") != CommandMessage)
            {
               registerClassAlias("flex.messaging.messages.CommandMessage",CommandMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.CommandMessage",CommandMessage);
         }
         try
         {
            if(getClassByAlias("DSC") != CommandMessageExt)
            {
               registerClassAlias("DSC",CommandMessageExt);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("DSC",CommandMessageExt);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.ErrorMessage") != ErrorMessage)
            {
               registerClassAlias("flex.messaging.messages.ErrorMessage",ErrorMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.ErrorMessage",ErrorMessage);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.HTTPMessage") != HTTPRequestMessage)
            {
               registerClassAlias("flex.messaging.messages.HTTPMessage",HTTPRequestMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.HTTPMessage",HTTPRequestMessage);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.MessagePerformanceInfo") != MessagePerformanceInfo)
            {
               registerClassAlias("flex.messaging.messages.MessagePerformanceInfo",MessagePerformanceInfo);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.MessagePerformanceInfo",MessagePerformanceInfo);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ObjectProxy") != ObjectProxy)
            {
               registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
         }
         var styleNames:Array = ["paragraphStartIndent","breakOpportunity","kerning","alternatingItemColors","wordSpacing","leading","labelWidth","layoutDirection","ligatureLevel","downColor","dropShadowColor","shadowColor","interactionMode","dominantBaseline","justificationStyle","todayColor","fontSharpness","footerColors","whiteSpaceCollapse","textDecoration","fontStyle","digitWidth","indicatorGap","highlightColor","focusColor","themeColor","fontSize","textAlignLast","selectionDisabledColor","trackingRight","showErrorSkin","backgroundDisabledColor","unfocusedTextSelectionColor","textAlpha","baselineShift","textRotation","tabStops","dropdownBorderColor","firstBaselineOffset","lineThrough","symbolColor","focusedTextSelectionColor","depthColors","disabledColor","alignmentBaseline","modalTransparencyColor","modalTransparencyDuration","proposedColor","modalTransparency","lineHeight","typographicCase","selectionColor","fontAntiAliasType","cffHinting","contentBackgroundAlpha","fontFamily","digitCase","textSelectedColor","clearFloats","paragraphEndIndent","disabledIconColor","strokeColor","fontWeight","dividerColor","textAlign","accentColor","sortFontStyle","shadowCapColor","headerColors","contentBackgroundColor","fontLookup","chromeColor","verticalGridLineColor","listAutoPadding","blockProgression","listStyleType","textRollOverColor","horizontalGridLineColor","strokeWidth","fontGridFitType","paragraphSpaceAfter","errorColor","justificationRule","color","textShadowColor","paragraphSpaceBefore","textIndent","locale","barColor","fontThickness","touchDelay","textShadowAlpha","sortFontFamily","renderingMode","textJustify","sortFontWeight","direction","separatorColor","letterSpacing","trackingLeft","rollOverColor","listStylePosition","modalTransparencyBlur","iconColor","inactiveTextSelectionColor","leadingModel","sortFontSize","showErrorTip"];
         var i:int = 0;
         while(i < styleNames.length)
         {
            styleManager.registerInheritingStyle(styleNames[i]);
            i++;
         }
      }
   }
}
