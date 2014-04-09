//
//*****************************************************************************
// Name        : lhjModule.pas
// Description : ���� ������ ����
// Author      : ��ȣ��(lhjtop@hanmail.net)
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
  // WorkingTime1,2 : ���� �ν� ���ð� ���ǥ
  WorkingTime1: array[0..7] of Integer=(0,2,9,15,21,27,33,999999);
  WorkingTime2: array[0..11] of Integer=(0,2,5,9,12,16,20,24,27,30,36,999999);



 implementation

uses Booth, Main1, Security, CoManager;

//==================================================================
// Name      : IIFs
// Desc      :  VB�� IIF������ ���� (String)
//   �����̿����� ���׿����ڰ� �ִ�(IFThen - uses: Math)
//   ���� ���� integer���̶� ���� �����ϱ⿡�� �ܼ��ؼ�
//   ���� IIF�� �����ؼ� ����  ( 2014.4.7)
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
// Desc      :  ���ڿ��� ������� �˻��ؼ� ���ϴ� ���� ���� ( 2014.4.9)
//==================================================================
 Function IFEmpty(str1,str2: Ansistring): Ansistring;
 begin
   if  length(trim(str1)) = 0 then
      Result:=str2
   else
      Result:=str1;

 end;

 end.