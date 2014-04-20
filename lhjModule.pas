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
  SysUtils, Classes, StrUtils;

  Function IIFs(c: Boolean; str1,str2: Ansistring): Ansistring;
  Function IFEmpty(str1,str2: Ansistring): Ansistring;
  Function bNULL(str1: Ansistring): Boolean;
  Function DateView(dDate:TDateTime): ansistring;
  function FixedLen(Str : string; Size : integer) : string;
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
//   str1이 공백이면 str2를 리턴
//==================================================================
 Function IFEmpty(str1,str2: Ansistring): Ansistring;
 begin
   if length(trim(str1)) = 0 then
      Result:=str2
   else
      Result:=trim(str1);

 end;

//==================================================================
// Name      : bNULL
// Desc      : 문자열이 빈것인지 검사해서 True/False값을 리턴 ( 2014.4.17)
//             빈 문자열(NULL) = True
//==================================================================
 Function bNULL(str1: Ansistring): Boolean;
 begin
   if  length(trim(str1)) = 0 then
      Result:= True
   else
      Result:=False;

 end;
//==================================================================
// Name      : DateView(dDate:TDateTime): ansistring
// Desc      : 날짜형을 년 월 일 요일로 표시
//==================================================================
Function DateView(dDate:TDateTime): ansistring;
var
  aDate,yy,mm,dd,ww : ansistring;
  const days: array[1..7] of string = ('일','월','화','수','목','금','토');
begin
  aDate:=DatetoStr(dDate);
  yy:=ansiMidStr(aDate,1,4);
  mm:=ansiMidStr(aDate,6,2);
  dd:=ansiMidStr(aDate,9,2);
  ww:= days[DayOfWeek(dDate)];
  DateView:= yy + ' 년 '+mm+' 월 '+dd+' 일 '+ ww+ '요일' ;
end;
//==================================================================
// Name      : FixedLen
// Desc      :  일정한 길이로 만들기 위해 앞에 공백을 채우는 함수
//           소스코드 출처: http://beodeulpiri.egloos.com/9799916
//==================================================================
function FixedLen(Str : string; Size : integer) : string;
var
  Str_Len, i : integer;
begin
  Str_Len := Length(Str);
  if Size >= Str_Len then
  begin
    for i := Str_len+1 to Size do
    begin
      Str := ' '+Str;
    end;
  end;
  FixedLen := Str;
end;

 end.
