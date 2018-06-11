package
{
   import flash.media.Sound;
   
   public class Byoyomi
   {
      
      private static const V2_01:Class = Byoyomi_V2_01;
      
      private static const V2_02:Class = Byoyomi_V2_02;
      
      private static const V2_03:Class = Byoyomi_V2_03;
      
      private static const V2_04:Class = Byoyomi_V2_04;
      
      private static const V2_05:Class = Byoyomi_V2_05;
      
      private static const V2_06:Class = Byoyomi_V2_06;
      
      private static const V2_07:Class = Byoyomi_V2_07;
      
      private static const V2_08:Class = Byoyomi_V2_08;
      
      private static const V2_09:Class = Byoyomi_V2_09;
      
      private static const V2_10:Class = Byoyomi_V2_10;
      
      private static const V2_20:Class = Byoyomi_V2_20;
      
      private static const V2_30:Class = Byoyomi_V2_30;
      
      private static const V2_40:Class = Byoyomi_V2_40;
      
      private static const V2_50:Class = Byoyomi_V2_50;
      
      private static const V2_byoyomi:Class = Byoyomi_V2_byoyomi;
      
      private static const V2_timeup:Class = Byoyomi_V2_timeup;
      
      private static const V3_01:Class = Byoyomi_V3_01;
      
      private static const V3_02:Class = Byoyomi_V3_02;
      
      private static const V3_03:Class = Byoyomi_V3_03;
      
      private static const V3_04:Class = Byoyomi_V3_04;
      
      private static const V3_05:Class = Byoyomi_V3_05;
      
      private static const V3_06:Class = Byoyomi_V3_06;
      
      private static const V3_07:Class = Byoyomi_V3_07;
      
      private static const V3_08:Class = Byoyomi_V3_08;
      
      private static const V3_09:Class = Byoyomi_V3_09;
      
      private static const V3_10:Class = Byoyomi_V3_10;
      
      private static const V3_20:Class = Byoyomi_V3_20;
      
      private static const V3_30:Class = Byoyomi_V3_30;
      
      private static const V3_40:Class = Byoyomi_V3_40;
      
      private static const V3_50:Class = Byoyomi_V3_50;
      
      private static const V3_byoyomi:Class = Byoyomi_V3_byoyomi;
      
      private static const V3_timeup:Class = Byoyomi_V3_timeup;
      
      private static const V4_01:Class = Byoyomi_V4_01;
      
      private static const V4_02:Class = Byoyomi_V4_02;
      
      private static const V4_03:Class = Byoyomi_V4_03;
      
      private static const V4_04:Class = Byoyomi_V4_04;
      
      private static const V4_05:Class = Byoyomi_V4_05;
      
      private static const V4_06:Class = Byoyomi_V4_06;
      
      private static const V4_07:Class = Byoyomi_V4_07;
      
      private static const V4_08:Class = Byoyomi_V4_08;
      
      private static const V4_09:Class = Byoyomi_V4_09;
      
      private static const V4_10:Class = Byoyomi_V4_10;
      
      private static const V4_20:Class = Byoyomi_V4_20;
      
      private static const V4_30:Class = Byoyomi_V4_30;
      
      private static const V4_40:Class = Byoyomi_V4_40;
      
      private static const V4_50:Class = Byoyomi_V4_50;
      
      private static const V4_byoyomi:Class = Byoyomi_V4_byoyomi;
      
      private static const V4_timeup:Class = Byoyomi_V4_timeup;
      
      private static var _voice01:Sound;
      
      private static var _voice02:Sound;
      
      private static var _voice03:Sound;
      
      private static var _voice04:Sound;
      
      private static var _voice05:Sound;
      
      private static var _voice06:Sound;
      
      private static var _voice07:Sound;
      
      private static var _voice08:Sound;
      
      private static var _voice09:Sound;
      
      private static var _voice10:Sound;
      
      private static var _voice20:Sound;
      
      private static var _voice30:Sound;
      
      private static var _voice40:Sound;
      
      private static var _voice50:Sound;
      
      private static var _voiceByoyomi:Sound;
      
      private static var _voiceTimeUp:Sound;
      
      private static var _voices:Array;
       
      
      public function Byoyomi()
      {
         super();
      }
      
      public static function init() : void
      {
         if(_voice01 == null)
         {
            setVoiceType(2);
         }
      }
      
      public static function setVoiceType(param1:int = 2) : void
      {
         if(param1 == 2)
         {
            _voice01 = new V2_01();
            _voice02 = new V2_02();
            _voice03 = new V2_03();
            _voice04 = new V2_04();
            _voice05 = new V2_05();
            _voice06 = new V2_06();
            _voice07 = new V2_07();
            _voice08 = new V2_08();
            _voice09 = new V2_09();
            _voice10 = new V2_10();
            _voice20 = new V2_20();
            _voice30 = new V2_30();
            _voice40 = new V2_40();
            _voice50 = new V2_50();
            _voices = new Array(null,_voice01,_voice02,_voice03,_voice04,_voice05,_voice06,_voice07,_voice08,_voice09,_voice10,_voice20,_voice30,_voice40,_voice50);
            _voiceByoyomi = new V2_byoyomi();
            _voiceTimeUp = new V2_timeup();
         }
         else if(param1 == 3)
         {
            _voice01 = new V3_01();
            _voice02 = new V3_02();
            _voice03 = new V3_03();
            _voice04 = new V3_04();
            _voice05 = new V3_05();
            _voice06 = new V3_06();
            _voice07 = new V3_07();
            _voice08 = new V3_08();
            _voice09 = new V3_09();
            _voice10 = new V3_10();
            _voice20 = new V3_20();
            _voice30 = new V3_30();
            _voice40 = new V3_40();
            _voice50 = new V3_50();
            _voices = new Array(null,_voice01,_voice02,_voice03,_voice04,_voice05,_voice06,_voice07,_voice08,_voice09,_voice10,_voice20,_voice30,_voice40,_voice50);
            _voiceByoyomi = new V3_byoyomi();
            _voiceTimeUp = new V3_timeup();
         }
         else if(param1 == 4)
         {
            _voice01 = new V4_01();
            _voice02 = new V4_02();
            _voice03 = new V4_03();
            _voice04 = new V4_04();
            _voice05 = new V4_05();
            _voice06 = new V4_06();
            _voice07 = new V4_07();
            _voice08 = new V4_08();
            _voice09 = new V4_09();
            _voice10 = new V4_10();
            _voice20 = new V4_20();
            _voice30 = new V4_30();
            _voice40 = new V4_40();
            _voice50 = new V4_50();
            _voices = new Array(null,_voice01,_voice02,_voice03,_voice04,_voice05,_voice06,_voice07,_voice08,_voice09,_voice10,_voice20,_voice30,_voice40,_voice50);
            _voiceByoyomi = new V4_byoyomi();
            _voiceTimeUp = new V4_timeup();
         }
      }
      
      public static function sayNumber(param1:int) : void
      {
         _voices[param1].play();
      }
      
      public static function sayByoyomi() : void
      {
         _voiceByoyomi.play();
      }
      
      public static function sayTimeUp() : void
      {
         _voiceTimeUp.play();
      }
   }
}
