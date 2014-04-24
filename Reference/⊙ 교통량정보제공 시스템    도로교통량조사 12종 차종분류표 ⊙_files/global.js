function MM_swapImage() { //v3.0
	var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
	if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_swapImgRestore() { //v3.0
	var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
	var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
	var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
	if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
	var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_jumpMenu(targ,selObj,restore, view_text) { //v3.0
	if ( selObj.options[selObj.selectedIndex].value == "" ){
		alert(view_text);
		return;
	}

	eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
	if (restore) selObj.selectedIndex=0;
}

function MM_openBrWindow(theURL,winName,features){ //v2.0
  window.open(theURL,winName,features);
}

function showFlash(flashpath,width,height,page) { 
	document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+width+'" height="'+height+'" id="FC2Column" align="center">');
	document.write(' <param name="movie" value="'+flashpath+'">');
	document.write(' <param name="quality" value="high">');
	document.write(' <param name="wmode" value="transparent">');
	document.write(' <param name="menu" value="false">');
	document.write(' <param name="FlashVars" value="'+page+'">');
	document.write(' <embed src="'+flashpath+'" quality="high" FlashVars="'+page+'" wmod="transparent" menu="false" width="'+width+'" height="'+height+'" name="member" align="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>');
	document.write('</object>');
}

// 공백 제거
function Trim(str)
{
    var m = str.match(/^\s*(\S+(\s+\S+)*)\s*$/);

    return (m == null) ? "" : m[1];

}
    
//(/\W|\s/g) > -1)

// 숫자인지 검사
function check_num(num)
{
	for (var i=0 ; i<num.length ; i++)
	{
		if (num.substr(i, 1) < "0" || num.substr(i, 1) > "9")
			return false;
	}

	return true;
}

// 엔터키 값 적용
function check_enter()
{
}

// 엔터키 값 적용
function search_check_enter()
{
	if (event.keyCode == 13)
		search_all();
}

// 로그인 윈도우
function login_win()
{
	var left = parseInt(screen.availWidth / 2, 10) - 150;
	var top = parseInt(screen.availHeight / 2, 10) - 150;

	window.open("../road/login_1.asp", "login", "left=" + left + ",top=" + top + ",width=300,height=300,menubar=no,toolbar=no,scrobars=yes,status=no")
}

// 메뉴 보이기
function show_menu(name)
{
	var display = eval("document.getElementById('" + name + "').style.display;");
	var submenu = eval("document.getElementById('" + name + "').style;");

	if (display == "none")
	{
		if (navigator.appName.charAt(0) == "M")
			submenu.display = "block";
		else
			submenu.display = "table-row";	
	}
}

// 메뉴 숨기기
function hide_menu(start_no, end_no)
{
	var form = document.all("frmdata");
	var main_no, submenu;

	if (Trim(form.main_no.value) == "")
		return;
		
	if (!check_num(Trim(form.main_no.value)))
		return;
	
	main_no = parseInt(Trim(form.main_no.value), 10);

	for (var i=start_no ; i<=end_no ; i++)
	{
		if (i != main_no)
		{
			// 메뉴를 숨길지 여부
			if (!check_menu(i))
				continue;

			submenu = eval("document.getElementById('" + i + "').style;");
			submenu.display = "none";
		}
	}
}

// 메뉴 숨기기에 관한 속성
// false : 계속 보여줌
// true : 숨김
function check_menu(id)
{
	// 메뉴가 없어지거나 하위 메뉴가 없는 경우
	// 10 : 수시조사지점 => 하위메뉴가 없음
	// 12 : 수시통합조회 => 메뉴가 없어짐
	// 13 : 상시조사지점 => 하위메뉴가 없음
	// 15 : 상시조사통합조회 => 하위메뉴가 없음
	// 16 : 중량조사지점 => 하위메뉴가 없음
	if (id == 10 || id == 12 || id == 13 || id == 15 || id == 16)
		return false;

	return true;
}

var g_bCheckFlag = false;

// 도움말이 나타나 있는 경우 도움말 닫기
function check_detail_layer()
{
	if (g_bCheckFlag)
		showHelp(tblcontent, 1, 815, 120, 1, "../help/help.asp", "help", "../img/icon/icon_plus.gif", "도움말 보기", "../img/icon/icon_minus.gif", "도움말 닫기");
}

// Help iframe show
function showHelp(tbl, row, cx, cy, cs, url, img_id, img_src, alt, click_img_src, click_alt)
{
	var main_no = Trim(document.all("main_no").value);
	var sub_no = Trim(document.all("sub_no").value);
	var source = "";

	// 여러개 보여지는걸 방지
	if (g_bCheckFlag == true)
	{
		tbl.deleteRow(row);

		// 이미지 변경
		if (img_id != "")
		{
			document.all(img_id).src = img_src;
			document.all(img_id).alt = alt;
		}

		g_bCheckFlag = false;
		return;
	}
	else
		g_bCheckFlag = true;

	if (main_no == "")
		return;
	
	if (sub_no == "")
		return;

	if (!check_num(main_no))
		return;
	
	if (!check_num(sub_no))
		return;

	// 세부사항 레이어가 떠있을 경우 닫기
	if (document.all("data_detail_table"))
		data_detail_table.style.display = "none";

	if (tbl.tagName != "TABLE")
		return;

	newRow = tbl.insertRow(row);
	newCell = newRow.insertCell();

	if (cs != undefined)
		newCell.colSpan = cs;
	
	// 이미지 변경
	if (img_id != "")
	{
		document.all(img_id).src = click_img_src;
		document.all(img_id).alt = click_alt;
	}

	url += "?main_no=" + main_no + "&sub_no=" + sub_no;

	source = "<table bgcolor='#ffffff' width='100%' border='0' cellpadding='0' cellspacing='0'>";
	source += " <tr>";
	source += "  <td align='center'>";
	source += "   <iframe id='nationcredits' src='" + url + "' frameborder='no' scrollbars='no' style='border: 0px solid #d0d0d0'" + (cx ? " width=" + cx : "") + (cy ? " height=" + cy : "") + "></iframe>";
	source += "  </td>";
	source += " </tr>";
	source += "</table>";

	newCell.innerHTML = source;
}

// 통합검색 텍스트박스에서 엔터키를 친 경우
// 현재 사용안함
// (회원가입등의 페이지에서 엔터처리를 따로 해둠으로 인해 원하는 결과가 않나옴)
function check_key()
{
	if (event.keyCode == 13)
		search_all();
}

// 통합검색 닫기 클릭시
function search_close()
{
	viewer.innerHTML = "";
}

// 통합검색의 검색 클릭시
function search_all()
{
	var search_word = Trim(document.all("textfield").value);
	var source = "";

	if (search_word == "")
	{
		alert("검색어를 입력하십시오!");
		document.all("textfield").focus();
		return;
	}

// 일반 특수문자 체크

var s=Trim(document.all("textfield").value);

    for (i=0; i<s.length; i++){
        if (s.charAt(i) == "~" || s.charAt(i) == "`" || s.charAt(i) == "!" || s.charAt(i) == ";" || s.charAt(i) == ":" ||
        s.charAt(i) == "#" || s.charAt(i) == "$" || s.charAt(i) == "%" || s.charAt(i) == "^" || s.charAt(i) == "&" ||
        s.charAt(i) == "|" || s.charAt(i) == "'" || s.charAt(i) == "<" || s.charAt(i) == ">" || s.charAt(i) == "?" ||
        s.charAt(i) == "{" || s.charAt(i) == "}" || s.charAt(i) == "_" || s.charAt(i) == "'" || s.charAt(i) == "=" ||
        s.charAt(i) == "*" || s.charAt(i) == "^" || s.charAt(i) == "!" || s.charAt(i) == "@" || s.charAt(i) == "-" ||
        s.charAt(i) == "(" || s.charAt(i) == ")" || s.charAt(i) == "<" || s.charAt(i) == ">" || s.charAt(i) == "/" ||
        s.charAt(i) == "[" || s.charAt(i) == "]" || s.charAt(i) == "+" ||
        s.charAt(i) == "or" || s.charAt(i) == "and" || s.charAt(i) == "union" || s.charAt(i) == "select" || s.charAt(i) == "from" ||
        s.charCodeAt(i) == "92" ){
            alert(s.charAt(i)+"사용하실 수 없는 문자입니다. ");
            return ;
        }
    }
  
  
//영문 입력 제한 (한글만 입력)

var s=Trim(document.all("textfield").value);

	for (i=0; i<s.length; i++){
			if (!((s.charCodeAt(i) > 0x3130 && s.charCodeAt(i) > 0x318F) || (s.charCodeAt(i) > 0xAC00 && s.charCodeAt(i) > 0xD7A3)))
      
      	{
          alert("한글로 입력하세요! ");
          return ;
        }
    }

    
	source = "<div id='result' style='z-index:+999;position:absolute;left:48px;top:30px;'>";
	source += "<table bgcolor='#fdfdd5' border='0' cellspacing='0' cellpassing='0'>";
	source += " <tr>";
	source += "  <td>";
	source += "   <table width='300' height=29' border='0' background='../img/search_top.gif' cellspacing='0' cellpassing='0'>";
	source += "    <tr>";
	source += "     <td height='29' style='padding-left:20px;padding-top:5px;'><b>" + search_word + " 검색결과</b></td>";
	source += "     <td align='right' style='padding-right:20px'><img src='../img/botton/search_close.gif' width='15' height='15' onClick='search_close()' style='cursor:hand' alt='닫기' border='0'></td>";
	source += "    </tr>";
	source += "   </table>";
	source += "  </td>";
	source += " </tr>";
	source += " <tr bgcolor='#fdfdd5'>";
	source += "  <td>";
	source += "   <iframe id='nationcredits' src='../main/search_all.asp?search_word=" + search_word + "' frameborder='no' scrollbars='no' style='border: 1px solid #8392a9; width:298px'></iframe>";
	source += "  </td>";
	source += " </tr>";
	source += "</table>";
	source += "</div>";

	document.all("viewer").innerHTML = source;
	viewer.innerHTML = source;
}

// 전자지도 띄우기
function winmap(form, spot)
{
	var left = (screen.availWidth / 2) - 70;
	var top = (screen.availHeight / 2) - 297;

	var win = window.open("", "map", "left=" + left + ",top=" + top + ",width=550,height=594,menubar=no,toolbar=no,scrollbars=no,status=no");

	form.stat_spot.value = spot;
	form.action = "../elecmap/itms_map.asp";
	form.target = "map";
	form.submit();

	win.focus();
}