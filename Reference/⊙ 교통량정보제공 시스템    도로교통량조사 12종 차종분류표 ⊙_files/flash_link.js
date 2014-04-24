
/*
   해당화일의 화일명만 넣어주시구요 이부분은 버전관리가 잘 안됩니다. 반드시 고치실떄 말씀해주셔야합니다.
   pageNum=1--->이부분은 1댑스 subNum=1----->2댑스 입니다. 

*/
function FlashInsert(FlashIDName, FlashFileName, FlashWidth, FlashHeight, DNSSetting, WMODESetting, FlashBGColor, QSetting, FlashAlign)
{
	document.write('<OBJECT CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"');
	document.write('CODEBASE="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab#version=8,0,22,0" ');
	document.write(' ID="'+FlashIDName+'" WIDTH="' + FlashWidth + '" HEIGHT="' + FlashHeight + '" ALIGN="'+FlashAlign+'">');
	document.write('<PARAM NAME="movie" VALUE="'+ FlashFileName +'">');
	document.write('<PARAM NAME="quality" VALUE="'+QSetting+'">');
	document.write('<PARAM NAME="bgcolor" VALUE="'+FlashBGColor+'">');
	document.write('<PARAM NAME="wmode" VALUE="'+WMODESetting+'">');
	document.write('<PARAM NAME="allowScriptAccess" VALUE="'+DNSSetting+'">');
	document.write('<EMBED SRC="'+ FlashFileName +'"  NAME="'+FlashIDName+'"');
	document.write(' WIDTH="' + FlashWidth + '" HEIGHT="' + FlashHeight + '" QUALITY="'+QSetting+'" BGCOLOR="'+FlashBGColor+'"');
	document.write(' ALLOWSCRIPTACCESS="'+DNSSetting+'" ALIGN="'+FlashAlign+'" WMODE="'+WMODESetting+'" TYPE="application/x-shockwave-flash" ');
	document.write(' PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer" >');
	document.write('</EMBED>');
	document.write('</OBJECT>');
}

function flash_link(sMenu, iPage){
	var default_url = "";
	var url = default_url+"/main/main.asp";

	if(sMenu == "A")				//도로교통량조사
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/intro/intro_01.asp?pageNum=1&subNum=1";				//개요
			break;
		case 2 :
			url = default_url+"/intro/intro_02.asp?pageNum1&subNum2";				//수시조사
			break;
		case 3 :
			url = default_url+"/intro/intro_03.asp?pageNum=1&subNum=3";				//상시조사
			break;
		case 4 :
			url = default_url+"/intro/intro_04.asp?pageNum=1&subNum=4";				//차종분류표
			break;
		}
	}
	else if(sMenu == "B")			//통계자료분석
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/analysis/analysis_01.asp?pageNum=2&subNum=1";		//전체도로현황
			break;
		case 2 :
			url = default_url+"/analysis/analysis_02.asp?pageNum=2&subNum=2";		//도로등급별현황
			break;	
		case 3 :
			url = default_url+"/analysis/analysis_03.asp?pageNum=2&subNum=3";		//등급별서비스수준
			break;	
		case 4 :
			url = default_url+"/analysis/analysis_04.asp?pageNum=2&subNum=4";		//상시조사 교통량
			break;	
		case 5 :
			url = default_url+"/analysis/analysis_05.asp?pageNum=2&subNum=5";		//관련통계자료
			break;
		}

	}
	else if(sMenu == "C")			//통계자료
	{
		
		switch (iPage)
		{
		case 1 :
			url = default_url+"/itms/itms_1.asp?pageNum=3&subNum=1";				//수시조사지점
			break;
		case 2 :
			url = default_url+"/itms/itms_01.asp?pageNum=3&subNum=2";				// 도로등급별교통량
			break;
		case 3 : url = default_url+"/itms/itms_2.asp?pageNum=3&subNum=3";			//상시조사지점 <-- 수시조사통합조회
			break;
		case 4 :
			url = default_url+"/itms/itms_02.asp?pageNum=3&subNum=4";				//상시조사교통량 <-- 상시조사지점
			break;
		case 5:
			url = default_url+"/itms/itms_21.asp?pageNum=3&subNum=5";				//상시조사통합조회 <-- 상시조사교통량
			break;
		case 6 :
			url = default_url+"/itms/itms_3.asp?pageNum=3&subNum=6";				//중량조사지점 <-- 상시조사통합조회
			break;
		case 7 :
			url = default_url+"/itms/itms_03.asp?pageNum=3&subNum=7";				//중량통계 
			break;
		}
	

	}
	else if(sMenu == "D")			// 전자지도
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/elecmap/";		//전자지도
			var left = (screen.availWidth / 2) - 499;
			var top = (screen.availHeight / 2) - 330;
			var win = window.open(url, "map", "left=" + left + ",top=" + top + ",width=1023,height=588,menubar=yes,toolbar=no,scrollbars=no,status=no,resizable=yes");
			return;
			break;
		}
    
	}
	else if(sMenu == "E")			// 이북
	{	
		switch (iPage)
		{
		case 1 :
			//url = default_url+"/ebook/index.html?pageNum=5&subNum=1";	//이북
			url = default_url+"/ebook/index.asp";	//이북
			var left = (screen.availWidth / 2) - 499;
			var top = (screen.availHeight / 2) - 330;
			var win = window.open(url, "ebook", "left=" + left + ",top=" + top + ",width=998,height=600,menubar=no,toolbar=no,scrollbars=no,status=no,resizable=yes");
			return;
			break;
			break;	
		}

	}
	else if(sMenu == "F")			//사용자광장
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/plaza/notice_list.asp?pageNum=6&subNum=1";			//공지사항
			break;	
		case 2 :
			url = default_url+"/plaza/qna_list.asp?pageNum=6&subNum=2";				//자유게시판
			break;
		case 3 :
			url = default_url+"/plaza/sul_list.asp?pageNum=6&subNum=3";				//설문조사
			break;
		case 4 :
			url = default_url+"/plaza/site.asp?pageNum=6&subNum=3";					//관련사이트
			break;
		}
		
	}
	else if(sMenu == "G")			//자료실
	{	
		switch (iPage)
		{
		case 1 :
			url = default_url+"/pds/genaral_list.asp?pageNum=7&subNum=1";			//일반자료실
			break;
		case 2 :
			url = default_url+"/pds/request_list.asp?pageNum=7&subNum=2";			//요청자료
			break;
		case 3 :
			url = default_url+"/pds/data_02.asp?pageNum=7&subNum=3";				//통계자료
			break;
		}
	
			
    }
	else if(sMenu == "H")			//상단
	{	
		switch (iPage)
		{
		case 1 :
			url = default_url+"/member/member_login.asp";							//로긴
			break;
		case 2 :
			url = default_url+"/member/member_main.asp";							//회원가입
			break;
		case 3 :
			url = default_url+"/member/logout.asp";									//로그아웃
			break;
		case 4 :
			url = default_url+"/mypage/member_update.asp";							//마이페이지
			break;
		case 5 :
			url = default_url+"/customer/contact.asp?pageNum=3&subNum=3";			//컨텍어스
			break;
		case 6 :
			url = default_url+"/company/sitemap.asp";								//사이트맵
			break;
		}
    }
	else if(sMenu == "I")			//기타
	{	
		switch (iPage)
		{
		case 1 :
			url = default_url+"/service/calendar.php ";								//기타
			break;	
		}
	}
	//alert(url);
	location.replace(url);
}