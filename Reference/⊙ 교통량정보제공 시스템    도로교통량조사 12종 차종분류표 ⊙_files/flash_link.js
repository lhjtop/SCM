
/*
   �ش�ȭ���� ȭ�ϸ� �־��ֽñ��� �̺κ��� ���������� �� �ȵ˴ϴ�. �ݵ�� ��ġ�ǋ� �������ּž��մϴ�.
   pageNum=1--->�̺κ��� 1�� subNum=1----->2�� �Դϴ�. 

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

	if(sMenu == "A")				//���α��뷮����
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/intro/intro_01.asp?pageNum=1&subNum=1";				//����
			break;
		case 2 :
			url = default_url+"/intro/intro_02.asp?pageNum1&subNum2";				//��������
			break;
		case 3 :
			url = default_url+"/intro/intro_03.asp?pageNum=1&subNum=3";				//�������
			break;
		case 4 :
			url = default_url+"/intro/intro_04.asp?pageNum=1&subNum=4";				//�����з�ǥ
			break;
		}
	}
	else if(sMenu == "B")			//����ڷ�м�
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/analysis/analysis_01.asp?pageNum=2&subNum=1";		//��ü������Ȳ
			break;
		case 2 :
			url = default_url+"/analysis/analysis_02.asp?pageNum=2&subNum=2";		//���ε�޺���Ȳ
			break;	
		case 3 :
			url = default_url+"/analysis/analysis_03.asp?pageNum=2&subNum=3";		//��޺����񽺼���
			break;	
		case 4 :
			url = default_url+"/analysis/analysis_04.asp?pageNum=2&subNum=4";		//������� ���뷮
			break;	
		case 5 :
			url = default_url+"/analysis/analysis_05.asp?pageNum=2&subNum=5";		//��������ڷ�
			break;
		}

	}
	else if(sMenu == "C")			//����ڷ�
	{
		
		switch (iPage)
		{
		case 1 :
			url = default_url+"/itms/itms_1.asp?pageNum=3&subNum=1";				//������������
			break;
		case 2 :
			url = default_url+"/itms/itms_01.asp?pageNum=3&subNum=2";				// ���ε�޺����뷮
			break;
		case 3 : url = default_url+"/itms/itms_2.asp?pageNum=3&subNum=3";			//����������� <-- ��������������ȸ
			break;
		case 4 :
			url = default_url+"/itms/itms_02.asp?pageNum=3&subNum=4";				//������米�뷮 <-- �����������
			break;
		case 5:
			url = default_url+"/itms/itms_21.asp?pageNum=3&subNum=5";				//�������������ȸ <-- ������米�뷮
			break;
		case 6 :
			url = default_url+"/itms/itms_3.asp?pageNum=3&subNum=6";				//�߷��������� <-- �������������ȸ
			break;
		case 7 :
			url = default_url+"/itms/itms_03.asp?pageNum=3&subNum=7";				//�߷���� 
			break;
		}
	

	}
	else if(sMenu == "D")			// ��������
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/elecmap/";		//��������
			var left = (screen.availWidth / 2) - 499;
			var top = (screen.availHeight / 2) - 330;
			var win = window.open(url, "map", "left=" + left + ",top=" + top + ",width=1023,height=588,menubar=yes,toolbar=no,scrollbars=no,status=no,resizable=yes");
			return;
			break;
		}
    
	}
	else if(sMenu == "E")			// �̺�
	{	
		switch (iPage)
		{
		case 1 :
			//url = default_url+"/ebook/index.html?pageNum=5&subNum=1";	//�̺�
			url = default_url+"/ebook/index.asp";	//�̺�
			var left = (screen.availWidth / 2) - 499;
			var top = (screen.availHeight / 2) - 330;
			var win = window.open(url, "ebook", "left=" + left + ",top=" + top + ",width=998,height=600,menubar=no,toolbar=no,scrollbars=no,status=no,resizable=yes");
			return;
			break;
			break;	
		}

	}
	else if(sMenu == "F")			//����ڱ���
	{
		switch (iPage)
		{
		case 1 :
			url = default_url+"/plaza/notice_list.asp?pageNum=6&subNum=1";			//��������
			break;	
		case 2 :
			url = default_url+"/plaza/qna_list.asp?pageNum=6&subNum=2";				//�����Խ���
			break;
		case 3 :
			url = default_url+"/plaza/sul_list.asp?pageNum=6&subNum=3";				//��������
			break;
		case 4 :
			url = default_url+"/plaza/site.asp?pageNum=6&subNum=3";					//���û���Ʈ
			break;
		}
		
	}
	else if(sMenu == "G")			//�ڷ��
	{	
		switch (iPage)
		{
		case 1 :
			url = default_url+"/pds/genaral_list.asp?pageNum=7&subNum=1";			//�Ϲ��ڷ��
			break;
		case 2 :
			url = default_url+"/pds/request_list.asp?pageNum=7&subNum=2";			//��û�ڷ�
			break;
		case 3 :
			url = default_url+"/pds/data_02.asp?pageNum=7&subNum=3";				//����ڷ�
			break;
		}
	
			
    }
	else if(sMenu == "H")			//���
	{	
		switch (iPage)
		{
		case 1 :
			url = default_url+"/member/member_login.asp";							//�α�
			break;
		case 2 :
			url = default_url+"/member/member_main.asp";							//ȸ������
			break;
		case 3 :
			url = default_url+"/member/logout.asp";									//�α׾ƿ�
			break;
		case 4 :
			url = default_url+"/mypage/member_update.asp";							//����������
			break;
		case 5 :
			url = default_url+"/customer/contact.asp?pageNum=3&subNum=3";			//���ؾ
			break;
		case 6 :
			url = default_url+"/company/sitemap.asp";								//����Ʈ��
			break;
		}
    }
	else if(sMenu == "I")			//��Ÿ
	{	
		switch (iPage)
		{
		case 1 :
			url = default_url+"/service/calendar.php ";								//��Ÿ
			break;	
		}
	}
	//alert(url);
	location.replace(url);
}