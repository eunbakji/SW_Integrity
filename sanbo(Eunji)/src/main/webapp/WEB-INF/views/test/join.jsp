<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
	p.image_center {
	text-align:center;	
	}
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width", initial-scale="1">	
	<link rel="icon" href="../../icon/envm.png">
	
	  
	<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/tistory_admin/assets/tistory-web-top/1568685040/static/css/ext/swiper.min.css">	<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/tistory_admin/www/style/top/font.css">
	<link rel="stylesheet" type="text/css" href="https://t1.daumcdn.net/tistory_admin/assets/tistory-gnb/3.1.7/gnb.min.css">
	<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/tistory_admin/assets/tistory-web-top/1568685040/static/css/pc/top.css">
	

</head>
<body>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	   
	<script>
	function fn_idChk() {
		$.ajax({
			url : "./idChk.do",
			type : "post",
			dataType : "json",
			data : {"user_id" : $("#user_id").val()},
			success : function(data) {
				if (data == 1) {
					alert("중복된 아이디 입니당");

					}else if(data ==0) {
					$("#idChk").attr("value", "Y");
					
					alert("사용 가능한 아이디 입다");
					$('#user_id').attr("readonly",true);
						} 
				}
			})
	}
//그 있자나 내 코드 다 갈아엎고 너 방식대로 해도 돼 밍디야 ㅇ3ㅇ... 난 그저 회원가입 되셨습니다 라는 알럿창이 보고싶어서 그래 ㅠㅡㅠ
	/*function signupConfirm() {
			alert("된거니?");
			$.ajax({
	            url: "join",
	            type: "POST",
	            data: $("#joinform").serialize(),
	            success: function(data){
	                $('#result').text(data);
	            },
	            error: function(){
	                alert("serialize err");
	            }
	        });
		}*/

	function signupConfirm(){
           var user = {
                 user_id: $("#user_id").val(),
                 password: $("#password").val(),
                 email: $("#email").val()
           }
           $.ajax({
              url: "./join",
              type: "POST",
              data : JSON.stringify(user),
              contentType: "application/json; charset=utf-8;",
              success : function(result) {
            	  alert(result);
            	  if(result == "success"){
            		  alert("회원가입 성공");
            		  window.location.href='/eunji';
                	 }
            	  else{
            		  alert("회원가입 실패");
            		  window.location.href='https://www.naver.com/';
                 }
              },
              error : function() {
                 alert("fail");
              }
           }
           );
        }


	</script>
   
    <!--
    <script>
    $(document).ready(function(e) {
        $('#idChk').click(function(){
            $.ajax({
				url : "./idChk.do",
				type: "get",
				data : {
					"user_id":$('#user_id').val()
				},
				success : function(data) {
					if(data == 0 && $.trim($('#user_id').val()) != '' ){
						idx=true;
						$('#user_id').attr("readonly",true);
						var html="<tr><td colspan='3' style='color: green'>사용가능</td></tr>";
						
					} else {
						var html="<tr><td colspan='3' style='color: red'>사용불가능한 아이디 입니다.</td></tr>";

						}

					},
					error : function() {
						alert("서버에러");
						}	
                });
			//입력 값 체크
            });
        });

    </script>
    -->
     
<div id="mArticle">


	<div class="content_signup">
			<form id = "joinform" method="" action=""> <!-- 뭐냐 -->
			<fieldset class="fld_tistory" id="agreementFieldset" style="display:block;">
				<legend class="screen_out">회원가입 동의 폼</legend>
				<div class="wrap_signup"> <!-- 1번 wrap -->
					<div class="inp_chk"><!-- 체크 됐을시 checked 클래스 추가 -->
						<input type="checkbox" id="agreeAll" class="inp_radio">
						<label for="agreeAll" class="lab_g lab_type1"><span class="img_top ico_check"></span>
						<span class="txt_lab">산업제어시스템 SW 보안 무결성 관리 웹 서비스 이용 약관, 개인정보 수집 및 이용에 모두 동의합니다.</span>
						</label>
					</div>
				</div>
				
				<div class="wrap_signup"> <!-- 2번 wrap -->
					<div class="inp_chk"><!-- 체크 됐을시 checked 클래스 추가 -->
						<input type="checkbox" id="agreeServicePolicy" name="agreeServicePolicy" class="inp_radio" value="1">
						<label for="agreeServicePolicy" class="lab_g lab_type1"><span class="img_top ico_check"></span><span class="txt_lab">산업제어시스템 SW 보안 무결성 관리 웹 서비스 이용 약관</span></label>
					</div>
					<div class="box_cont">
					<strong class="tit_info">제1조 (목적)</strong>
					<p class="desc_info">본 약관은 회원(본 약관에 동의한 자를 말하며 이하 "회원"이라고 합니다)이 주식회사 SanBo(이하 "회사"라고 합니다)가 제공하는 산업제어시스템 SW 보안 무결성 관리 웹 서비스(이하 "서비스"라고 합니다)를 이용함에 있어 회사와 회원의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.</p>
					<strong class="tit_info">제2조 (약관의 명시, 효력 및 개정)</strong>
					<ol class="list_info">
						<li>(1) 회사는 본 약관의 내용을 회원이 알 수 있도록 서비스 화면에 게시함으로써 이를 공지합니다.</li>
						<li>(2) 회사는 콘텐츠산업 진흥법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</li>
						<li>(3) 회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 일십오(15)일 전부터 적용일 이후 상당한 기간 동안 공지만을 하고, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 삼십(30)일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 공지하고 회사가 부여한 이메일 주소로 약관 개정 사실을 발송하여 고지합니다.</li>
						<li>(4) 회사가 전항에 따라 회원에게 통지하면서 공지 또는 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 불구하고 거부의 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 제14조 제1항의 규정에 따라 이용계약을 해지할 수 있습니다.</li>
					</ol>
					<strong class="tit_info">제3조 (서비스의 제공)</strong>
					<ol class="list_info">
						<li>
							(1) 회사가 제공하는 서비스의 종류는 아래 각 호로 합니다.
							<ol class="list_sub">
								<li><span class="txt_num">①</span><p class="txt_info">산업제어시스템 SW 보안 무결성 관리 웹 서비스</p></li>
								<li><span class="txt_num">②</span><p class="txt_info">기타 회사가 자체 개발하는 등의 방법으로 추가적으로 회원에게 제공하는 일체의 서비스</p></li>
							</ol>
						</li>
						<li>
							(2) 회원이 되고자하는 자는 아래와 같은 방법으로 회원이 되어 서비스를 이용할 수 있습니다.
							<ol class="list_sub">
								<li><span class="txt_num">①</span><p class="txt_info">산업제어시스템 SW 보안 무결성 관리 프로그램에서 이용 ID 및 비밀번호를 등록하여 서비스를 이용</p></li>
								
							</ol>
						</li>
					</ol>
					<strong class="tit_info">제4조 (서비스 이용)</strong>
					<ol class="list_info">
						<li>(1) 서비스 이용시간은 회사의 업무상 또는 기술상 불가능한 경우를 제외하고는 연중무휴 1일 24시간(00:00-24:00)으로 함을 원칙으로 합니다. 다만, 서비스설비의 정기점검 등의 사유로 회사가 서비스를 특정범위로 분할하여 별도로 날짜와 시간을 정할 수 있습니다.</li>
						<li>(2) 제3조의 서비스 내용이 추가, 변경 또는 삭제됨에 있어 회사가 필요하다고 인정하는 경우 회사는 회원의 등록된 메일주소로 서비스 내용의 추가, 변경 또는 삭제된 내용 등을 통지할 수 있습니다.</li>
						<li>(3) 전항의 경우 불특정 다수인을 상대로 통지를 함에 있어서는 웹사이트 기타 회사의 공지사항 페이지를 통하여 회원들에게 통지할 수 있습니다.</li>
					</ol>
					<strong class="tit_info">제5조 (이용계약의 성립)</strong>
					<ol class="list_info">
						<li>(1) 회원은 회사가 제시하는 이용계약에 대한 내용을 인지하고 이를 수락함으로써 회사의 서비스에 대한 동의를 표시하고 회사는 이를 승낙함으로써 회원에게 서비스를 제공합니다.</li>
						<li>(2) 이용계약에 대한 동의는 인증 이메일에 전달되어진 인증링크를 클릭함으로써 의사표시를 합니다.</li>
					</ol>
					<strong class="tit_info">제6조 (서비스내용변경 통지 등)</strong>
					<ol class="list_info">
						<li>(1) 회사가 서비스 내용을 변경하거나 종료하는 경우 회사는 회원의 등록된 전자우편 주소로 이메일을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다.</li>
						<li>(2) 전 항의 경우 불특정 다수인을 상대로 통지를 함에 있어서는 웹사이트 기타 회사의 공지사항 페이지를 통하여 회원들에게 통지할 수 있습니다.</li>
					</ol>
					<strong class="tit_info">제7조 (권리의 귀속 및 저작물의 이용)</strong>
					<ol class="list_info">
						<li>(1) 회사가 회원에게 제공하는 각종 서비스에 대한 저작권을 포함한 일체의 권리는 회사에 귀속되며 회원이 서비스를 이용하는 과정에서 작성한 게시물 등(이하 “게시물 등”이라 합니다)에 대한 저작권을 포함한 일체에 관한 권리는 별도의 의사표시가 없는 한 각 회원에게 귀속됩니다.</li>
						<li>(2) 게시물 등은 회사가 운영하는 인터넷 사이트 및 모바일 어플리케이션을 통해 노출될 수 있으며, 검색결과 내지 관련 프로모션 등에도 노출될 수 있습니다. 또한, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 편집되어 게시될 수 있습니다. 이 경우, 회사는 저작권법 규정을 준수하며, 회원은 언제든지 고객센터 또는 각 서비스 내 관리기능을 통해 해당 게시물 등에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있습니다.</li>
						<li>(3) 회사는 제2항 이외의 방법으로 회원의 게시물 등을 이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 회원의 동의를 얻습니다.</li>
					</ol>
					<strong class="tit_info">제8조 (서비스이용의 제한 및 중지)</strong>
					<ol class="list_info">
						<li>
							(1) 회사는 아래 각 호의 1에 해당하는 사유가 발생한 경우에는 회원의 서비스 이용을 제한하거나 중지시킬 수 있습니다.
							<ol class="list_sub">
								<li><span class="txt_num">①</span><p class="txt_info">회원이 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우</p></li>
								<li><span class="txt_num">②</span><p class="txt_info">회원이 제11조의 의무를 위반한 경우</p></li>
								<li><span class="txt_num">③</span><p class="txt_info">서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우</p></li>
								<li><span class="txt_num">④</span><p class="txt_info">전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우</p></li>
								<li><span class="txt_num">⑤</span><p class="txt_info">국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때</p></li>
								<li><span class="txt_num">⑥</span><p class="txt_info">기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우</p></li>
							</ol>
						</li>
						<li>
							(2) 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간등을 회원에게 알려야 합니다.
						</li>
						<li>
							(3) 제14조 제2항에 의해 회사가 회원과의 계약을 해지하고 탈퇴시키기로 결정한 경우 회사는 회원의 탈퇴 처리 전에 이를 통지하고, 회원은 회사의 통지를 받은 날로부터 30일 이내에 이에 대한 항변의 기회를 가집니다.
						</li>
						<li>
							(4) 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 “정보통신망법”이라 합니다)의 규정에 의해 다른 회원의 공개된 게시물 등이 본인의 사생활을 침해하거나 명예를 훼손하는 등 권리를 침해 받은 회원 또는 제3자(이하 “삭제 등 신청인”이라 합니다)는 그 침해사실을 소명하여 회사에 해당 게시물 등의 삭제 또는 반박 내용의 게재를 요청할 수 있습니다. 이 경우 회사는 해당 게시물 등의 권리 침해 여부를 판단할 수 없거나 당사자 간의 다툼이 예상되는 경우 해당 게시물 등에 대한 접근을 임시적으로 차단하는 조치(이하 “임시조치”라 합니다)를 최장 30일까지 취합니다.
						</li>
						<li>
							(5) 제4항에 의해 본인의 게시물 등이 임시조치된 회원(이하 “게시자”라 합니다)은 임시조치기간 중 회사에 해당 게시물 등을 복원해 줄 것을 요청(이하 “재게시 청구”라 합니다)할 수 있으며, 회사는 임시조치된 게시물의 명예훼손 등 판단에 대한 방송통신심의위원회 심의 요청에 대한 게시자 및 삭제 등 신청인의 동의가 있는 경우 게시자 및 삭제 등 신청인을 대리하여 이를 요청하고 동의가 없는 경우 회사가 이를 판단하여 게시물 등의 복원 여부를 결정합니다. 게시자의 재게시 청구가 있는 경우 임시조치 기간 내에 방송통신심의위원회 또는 회사의 결정이 있으면 그 결정에 따르고 그 결정이 임시조치 기간 내에 있지 않는 경우 해당 게시물 등은 임시조치 만료일 이후 복원됩니다. 재게시 청구가 없는 경우 해당 게시물 등은 임시조치 기간 만료 이후 삭제됩니다.
						</li>
						<li>
							(6) 회사는 서비스 내에 게시된 게시물 등이 사생활 침해 또는 명예훼손 등 제3자의 권리를 침해한다고 인정하는 경우 제5항에 따른 회원 또는 제3자의 신고가 없는 경우에도 임시조치(이하 “임의의 임시조치”라 합니다)를 취할 수 있습니다. 임의의 임시조치된 게시물의 처리 절차는 제4항 후단 및 제5항의 규정에 따릅니다.
						</li>
						<li>
							(7) 회원의 게시물 등으로 인한 법률상 이익 침해를 근거로, 다른 회원 또는 제3자가 회원 또는 회사를 대상으로 하여 민형사상의 법적 조치(예: 형사고소, 가처분 신청∙손해배상청구 등 민사소송의 제기)를 취하는 경우, 회사는 동 법적 조치의 결과인 법원의 확정판결이 있을 때까지 관련 게시물 등에 대한 접근을 잠정적으로 제한할 수 있습니다. 게시물 등의 접근 제한과 관련한 법적 조치의 소명, 법원의 확정 판결에 대한 소명 책임은 게시물 등에 대한 조치를 요청하는 자가 부담합니다.
						</li>
					</ol>
					
					<strong class="tit_info">제9조 (회사의 의무)</strong>
					<ol class="list_info">
						<li>(1) 회사는 회사의 서비스 제공 및 보안과 관련된 설비를 지속적이고 안정적인 서비스 제공에 적합하도록 유지, 점검 또는 복구 등의 조치를 성실히 이행하여야 합니다.</li>
						<li>(2) 회사는 회원이 원하지 아니하는 영리 목적의 광고성 전자우편을 발송하지 아니합니다.</li>
						<li>(3) 회사는 서비스의 제공과 관련하여 알게 된 회원의 개인정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않고, 이를 보호하기 위하여 노력합니다. 회원의 개인정보보호에 관한 기타의 사항은 정보통신망 이용촉진 및 정보보호등에 관한 법률 등 관계법령 및 회사가 별도로 정한 “개인정보처리방침”에 따릅니다.</li>
					</ol>
					<strong class="tit_info">제10조 (회원의 의무)</strong>
					<ol class="list_info">
						<li>
							(1) 회원은 아래 각 호의 1에 해당하는 행위를 하여서는 안됩니다.
							<ol class="list_sub">
								<li><span class="txt_num">①</span><p class="txt_info">회원정보에 허위내용을 등록하는 행위</p></li>
								<li><span class="txt_num">②</span><p class="txt_info">회사의 서비스에 게시된 정보를 변경하거나 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 영리 또는 비영리의 목적으로 복제, 출판, 방송 등에 사용하거나 제3자에게 제공하는 행위</p></li>
								<li><span class="txt_num">③</span><p class="txt_info">회사가 제공하는 서비스를 이용하여 제3자에게 본인을 홍보할 기회를 제공 하거나 제3자의 홍보를 대행하는 등의 방법으로 금전을 수수하거나 서비스를 이용할 권리를 양도하고 이를 대가로 금전을 수수하는 행위</p></li>
								<li><span class="txt_num">④</span><p class="txt_info">회사 기타 제3자의 명예를 훼손하거나 지적재산권을 침해하는 등 회사나 제3자의 권리를 침해하는 행위</p></li>
								<li><span class="txt_num">⑤</span><p class="txt_info">다른 회원의 이메일주소 및 비밀번호를 도용하여 부당하게 서비스를 이용한 경우</p></li>
								<li><span class="txt_num">⑦</span><p class="txt_info">정보통신망이용촉진및정보보호등에관한법률 등 관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 등)를 전송, 게시하거나 청소년보호법에서 규정하는 청소년유해매체물을 게시하는 행위</p></li>
								<li><span class="txt_num">⑧</span><p class="txt_info">공공질서 또는 미풍양속에 위배되는 내용의 정보, 문장, 도형, 음성 등을 유포하는 행위</p></li>
								<li><span class="txt_num">⑨</span><p class="txt_info">회사의 직원이나 서비스의 관리자를 가장하거나 사칭하여 또는 타인의 명의를 모용하여 글을 게시하거나 메일을 발송하는 행위</p></li>
								<li><span class="txt_num">⑩</span><p class="txt_info">컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 전자우편으로 발송하는 행위</p></li>
								<li><span class="txt_num">⑪</span><p class="txt_info">스토킹(stalking) 등 다른 회원의 서비스 이용을 방해하는 행위</p></li>
								<li><span class="txt_num">⑫</span><p class="txt_info">다른 회원의 개인정보를 그 동의 없이 수집, 저장, 공개하는 행위</p></li>
								<li><span class="txt_num">⑬</span><p class="txt_info">불특정 다수의 회원을 대상으로 하여 광고 또는 선전을 게시하거나 스팸메일을 전송하는 등의 방법으로 회사에서 제공하는 서비스를 이용하여 영리목적의 활동을 하는 행위</p></li>
								<li><span class="txt_num">⑭</span><p class="txt_info">회사가 제공하는 소프트웨어 등을 개작하거나 리버스 엔지니어링, 디컴파일, 디스어셈블 하는 행위</p></li>
								<li><span class="txt_num">⑮</span><p class="txt_info">회사가 제공하는 서비스에 정한 약관 기타 서비스 이용에 관한 규정을 위반하는 행위</p></li>
							</ol>
						</li>
						<li>
							(2) 회사는 회원이 제1항의 행위를 하는 경우 해당 게시물 등을 삭제 또는 임시조치할 수 있고 회원의 서비스 이용을 제한하거나 일방적으로 본 계약을 해지할 수 있습니다.
						</li>
						<li>
							(3) 회사가 제공하는 서비스 중 관련 법령 등의 규정에 의하여 성인인증이 필요한 경우 회원은 해당 서비스를 이용하기 위하여 회사가 제공하는 방법에 따라 실명정보를 회사에 제공하여야 합니다.
						</li>
					</ol>
					<strong class="tit_info">제11조 (회원 ID 등의 관리책임)</strong>
					<ol class="list_info">
						<li>(1) 회원은 서비스 이용을 위한 회원 ID, 비밀번호의 관리에 대한 책임, 본인 ID의 제3자에 의한 부정사용 등 회원의 고의∙과실로 인해 발생하는 모든 불이익에 대한 책임을 부담합니다. 단, 이것이 회사의 고의∙과실로 인하여 야기된 경우에는 회사가 책임을 부담합니다.</li>
						<li>(2) 회원은 회원 ID, 비밀번호 등을 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 본인의 비밀번호를 수정하는 등의 조치를 취하여야 하며, 즉시 이를 회사에 통보하여 회사의 안내를 따라야 합니다.</li>
					</ol>
					<strong class="tit_info">제12조 (양도금지)</strong>
					<p class="desc_info">회원의 서비스 받을 권리는 이를 양도 내지 증여하거나 질권의 목적으로 할 수 없습니다.</p>
					<strong class="tit_info">제13조 (이용계약의 해지)</strong>
					<ol class="list_info">
						<li>회원은 서비스 이용계약을 해지하고자 하는 때에는 회사가 제공하는 서비스 내의 회원탈퇴 기능을 이용하여 탈퇴를 요청할 수 있습니다. 회사는 탈퇴를 요청한 시점에서 제8조 제(1)항의 각호에 해당하는 범위 외 불가피한 사정이 없는 한 즉시 탈퇴요청을 처리합니다.</li>
						<li>회원이 제11조의 규정을 위반한 경우 회사는 일방적으로 본 계약을 해지할 수 있고, 이로 인하여 서비스 운영에 손해가 발생한 경우 이에 대한 민∙형사상 책임도 물을 수 있습니다.</li>
						<li>회원이 서비스를 이용하는 도중, 연속하여 일(1)년 동안 서비스를 이용하기 위해 회사의 서비스에 log-in한 기록이 없는 경우 회사는 회원의 회원자격을 상실시킬 수 있습니다.</li>
						<li>본 이용 계약이 해지된 경우 회원의 게시물 등 일체는 삭제됩니다. 단, 제9조 제(4)항의 경우에는 그러하지 않습니다.</li>
					</ol>
					
					<strong class="tit_info">제14조 (면책조항)</strong>
					<ol class="list_info">
						<li>
							(1) 회사는 다음 각 호의 경우로 서비스를 제공할 수 없는 경우 이로 인하여 회원에게 발생한 손해에 대해서는 책임을 부담하지 않습니다.
							<ol class="list_sub">
								<li><span class="txt_num">①</span><p class="txt_info">천재지변 또는 이에 준하는 불가항력의 상태가 있는 경우</p></li>
								<li><span class="txt_num">②</span><p class="txt_info">서비스 제공을 위하여 회사와 서비스 제휴계약을 체결한 제3자의 고의적인 서비스 방해가 있는 경우</p></li>
								<li><span class="txt_num">③</span><p class="txt_info">회원의 귀책사유로 서비스 이용에 장애가 있는 경우</p></li>
								<li><span class="txt_num">④</span><p class="txt_info">제1호 내지 제3호를 제외한 기타 회사의 고의∙과실이 없는 사유로 인한 경우</p></li>
							</ol>
						</li>
						<li>
							(2) 회사는 제3자가 제공하거나 회원이 작성하는 등의 방법으로 서비스에 게재된 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며 이로 인해 발생한 회원의 손해에 대하여는 책임을 부담하지 아니합니다.
						</li>
					</ol>
					<strong class="tit_info">제15조 (분쟁의 해결)</strong>
					<p class="desc_info">본 약관은 대한민국법령에 의하여 규정되고 이행되며, 서비스 이용과 관련하여 회사와 회원간에 발생한 분쟁에 대해서는 회사의 본점 소재지를 관할하는 법원을 합의관할로 합니다.</p>
					<strong class="tit_info">제16조 (규정의 준용)</strong>
					<p class="desc_info">이 약관에 명시되지 않은 사항에 대해서는 관계법령에 의하고, 법에 명시되지 않은 부분에 대하여는 관습에 의합니다.</p>
					<strong class="tit_info">부칙 (2020. 7. 23.)</strong>
					<p class="desc_info">본 약관은 2020년 7월 23일부터 적용합니다.</p>
					</div><!-- box_cont -->
				</div> <!-- wrap_signup -->
				
				
				<div class="wrap_signup"> <!-- 3번 wrap -->
					<div class="inp_chk"><!-- 체크 됐을시 checked 클래스 추가 -->
						<input type="checkbox" id="agreePrivacyPolicy" name="agreePrivacyPolicy" class="inp_radio" value="1">
						<label for="agreePrivacyPolicy" class="lab_g lab_type1"><span class="img_top ico_check"></span><span class="txt_lab">개인정보 수집 및 이용 동의</span></label>
					</div>
					<div class="box_cont">
						<strong class="tit_info">1. 수집하는 개인정보 항목</strong>
						<p class="desc_sub">- 필수정보의 수집 : 회원가입 시 이용자의 이메일 주소, 비밀번호를 수집하고 있습니다.</p>
						<p class="desc_sub">서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>o 방문 일시, 서비스 이용 기록, 불량 이용 기록, 기기정보</p>
						<strong class="tit_info">2. 개인정보의 수집 • 이용목적</strong>
						<ol class="list_info">
							<li>1) 회원으로 가입한 이용자를 식별하고 가입의사 확인, 불량회원의 부정한 이용을 방지하기 위하여 사용합니다.</li>
							<li>2) 이용자에게 SanBo의 다양한 서비스를 제공하고 서비스 이용 과정에서 이용자의 문의사항이나 불만을 처리하고 공지사항 등을 전달하기 위해 사용합니다.</li>
							
						</ol>
						<strong class="tit_info">3. 개인정보의 보유 • 이용기간</strong>
						<p class="desc_info">
							SanBo는 이용자의 개인정보를 회원가입을 하는 시점부터 서비스를 제공하는 기간 동안에만 제한적으로 이용하고 있습니다. 이용자가 회원탈퇴를 요청하거나 제공한 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 또는 수집 및 이용목적이 달성되거나 보유 및 이용기간이 종료한 경우 해당 이용자의 개인정보는 지체 없이 파기 됩니다.
							또한 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 이용자의 개인정보를 별도로 분리 보관하며, 분리 보관된 개인정보는 4년간 보관 후 지체 없이 파기합니다.
						</p>
						<p class="desc_info">그리고 관계법령의 규정에 따라 아래와 같이 관계 법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.</p>
						<ol class="list_info">
							<li>1) 서비스 이용 관련 개인정보 (로그인기록)/보존 근거 : 통신비밀보호법/보존 기간 : 3개월</li>
							<li>2) 표시/광고에 관한 기록/보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률/보존 기간 : 6개월</li>
							<li>3) 계약 또는 청약철회 등에 관한 기록/보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률/보존 기간 : 5년</li>
							<li>4) 대금결제 및 재화 등의 공급에 관한 기록/보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률/보존 기간 : 5년</li>
							<li>5) 소비자의 불만 또는 분쟁처리에 관한 기록/보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률/보존 기간 : 3년</li>
							<li>6) 개인위치정보에 관한 기록/보존근거 : 위치정보의 보호 및 이용 등에 관한 법률/보존기간 : 6개월</li>
							<li>7) 전자금융 거래에 관한 기록 : 전자금융거래법/보존기간 : 5년</li>
						</ol>
					</div>
					
					
					<div class="wrap_btn">
						<button type="reset" class="btn_tistory" onclick="_tiq.push(['__trackEvent', 'join', 'step1', 'prev']);">취소</button>
						<button type="button" class="btn_next btn_tistory btn_tistory_type5" disabled="disabled" onclick=_tiq.push(['__trackEvent', 'join', 'step1', 'next']);">다음</button><!-- 등록버튼 활성화시 disabled="disabled" 삭제 -->
					</div>
				</div> <!-- wrap_signup -->
			</fieldset>
			<fieldset id = "infoFieldset" style="display:none;">
				<legend class="screen_out">정보입력 폼</legend>
				<p class="image_center">
				
				   
				<img src="<c:url value="/resources/envm.png" />" width="72" height="72"  style="text-align:center; padding:10px"><br />	
			
				<strong class="tit_step">회원 정보 입력</strong>
				</p>
				
				<div class="cont_data">
					<dl>
						<dt>
							<label for="loginId">아이디</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3" style="float:left;">
								<input type="text" id="user_id" name="user_id" class="inp_g" placeholder="아이디를 입력해주세요 (인증 시 필요)" value="">
								
								<button type = "button" id = "modal_close_btn" onclick="fn_idChk();" value = "N">중복확인</button>
								
							</div>
						</dd>
					</dl>
					
					<dl>
						<dt>
							<label for="loginId">이메일</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3">
								<input type="text" id="email" name="email" class="inp_g" placeholder="이메일을 입력해주세요" value="">
							</div>
						</dd>
					</dl>
				
					<dl>
						<dt>
							<label for="pw">비밀번호</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3">
								<input type="password" id="password" name="password" class="inp_g" placeholder="영문, 숫자, 특수문자를 조합하여 10자 이상 적어주세요." value="">
							</div>
						</dd>
					</dl>
					
					<dl>
						<dt>
							<label for="pw2">비밀번호 확인</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3">
								<input type="password" id="pw2" name="password_confrim" class="inp_g" placeholder="비밀번호를 한번 더 입력해주세요">
							</div>
						</dd>
					</dl>
					
					<!--  
					<dl>
						<dt>
							<label for="name">이름</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3">
								<input type="text" id="pw2" name="name" class="inp_g" placeholder="이름을 입력해주세요">
							</div>
						</dd>
					</dl>
					
					<dl>
						<dt>
							<label for="company">소속 회사명</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3">
								<input type="text" id="pw2" name="userName" class="inp_g" placeholder="이름을 입력해주세요">
							</div>
						</dd>
					</dl>
					
					<dl>
						<dt>
							<label for="company">직급</label>
						</dt>
						<dd>
							<div class="inp_text inp_text_type3">
								<input type="text" id="pw2" name="userName" class="inp_g" placeholder="이름을 입력해주세요">
							</div>
						</dd>
					</dl>
					-->			
				</div><!-- cont_data-->
				<div id="recaptchaWidget" class="g-recaptcha recaptcha-wrap"></div>
				<div class="wrap_btn">				
				<button type="submit" id = "signupBtn" onclick="signupConfirm();" class="btn_next btn_tistory btn_tistory_type5 btn btn-primary form-control" value="회원가입"> </button>
				</div>
			
			</fieldset>
			
			</form>			
	</div> <!-- content_signup -->	
	<div class ="dimm_g" style="display:none;">
	</div><!-- dimm_g -->
	<div class="tistory_layer" style="display:none;">
		<div class="inner_tistory_layer inner_tistory_layer1">
			<div class="layer_body">
				<p class="desc_layer"></p>
			</div>
			<div class="layer_foot">
				<button type="button" class="btn_tistory btn_tistory_type1">확인</button>
			</div>
		</div>
	
	</div><!-- tistory layer -->
	
				
</div> <!-- mArticle -->
		<script src="//t1.daumcdn.net/tistory_admin/assets/tistory-web-top/1568685040/static/js/pc/T.gnb.min.js"></script>		
		<script src="//t1.daumcdn.net/tistory_admin/assets/tistory-web-top/1568685040/static/js/pc/T.p.top.join.layer.js"></script>
		<script src="//t1.daumcdn.net/tistory_admin/assets/tistory-web-top/1568685040/static/js/pc/T.p.top.join.js"></script>
		<script src="//t1.daumcdn.net/tistory_admin/assets/tistory-web-top/1568685040/static/js/pc/T.p.top.join.authenticate.js"></script>
</body>
</html>