//
//*****************************************************************************
// Name        : lhjModule.pas
// Description : 전역 데이터 변수
// Author      : 이호종(lhjtop@hanmail.net)
// History     : 
//      1. 2014.4.4 make
//*****************************************************************************

unit lhjModule;

interface
 uses
  SysUtils, Classes;
  Function IIFs(c: Boolean; str1,str2: Ansistring): Ansistring;
  Function IFEmpty(str1,str2: Ansistring): Ansistring;
const
  MyOver=  -9999;
  MyMax = 100000;
  pPW = '22';
  MQ = #39; // '
  MS = #35; // #

var
  ResultReturn : AnsiString;
  // WorkingTime1,2 : 도장 부스 사용시간 계산표
  WorkingTime1: array[0..7] of Integer=(0,2,9,15,21,27,33,999999);
  WorkingTime2: array[0..11] of Integer=(0,2,5,9,12,16,20,24,27,30,36,999999);



 implementation

uses Booth, Main1, Security, CoManager;

//==================================================================
// Name      : IIFs
// Desc      :  VB의 IIF문장을 응용 (String)
//   델파이에서도 삼항연산자가 있다(IFThen - uses: Math)
//   리턴 값은 integer형이라 내가 응용하기에는 단순해서
//   비베의 IIF를 응용해서 만듦  ( 2014.4.7)
//==================================================================
 Function IIFs(c: Boolean; str1,str2: Ansistring): Ansistring;
 begin
   if c then
    Result:=str1
   else
    Result:=str2;
 end;

 //==================================================================
// Name      : IFEmpty
// Desc      :  문자열이 빈것인지 검사해서 원하는 값을 리턴 ( 2014.4.9)
//==================================================================
 Function IFEmpty(str1,str2: Ansistring): Ansistring;
 begin
   if  length(trim(str1)) = 0 then
      Result:=str2
   else
      Result:=str1;

 end;

 end.
