<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

</head>
<body>
	<h1>īī�� ���� �׽�Ʈ ����</h1>
	
<!-- 
	kakaoPay API
	�Ʒ��� Ŭ���̾�Ʈ-����-īī��(�ܺμ���) �� 3���� ���� �ְ� �޴� �����Դϴ�.
	
		** ����
		������û�غ� -> ���� ��û -> ���� ����

		1. Ŭ���̾�Ʈ���� ������ �ֹ����������� Post�� ������.
		2. ������ controller���� �� ���� �޾� īī�� ���ο�ûurl�� �����ش�.
		3. īī���� ���ΰ� ���ÿ� ���� ���������� url�� tid(�����ڵ�)�� ������ �����ְ� ������ Ŭ���̾�Ʈ�� url�� ������.
		4. Ŭ���Ʈ�� �� url�� qr�ڵ� ���� ȭ�鿡 �����Ѵ�.
		5. ����ó���� �Ǹ� īī������ �츮 ���� controller�� ���� url�� token���� �����ش�.
		6. ������ �� ��ū�� ó���� �޾Ҵ� tid�� ���������� ��û�ϰ� ������� ������ �޾ƿ´�.
		7. �ֹ����������� url�� Ŭ���̾�Ʈ�� ������ Ŭ���̾�Ʈ�� �� �������� ������ ��û�Ѵ�.
		8. ������ �ֹ��Ϸ� �������� Ŭ���̾�Ʈ�� �����ش�. 
		
		JS - ee9525481aa34d1160da9b4e2fa1b6f0
		admin - 2e7146bdfd1c57aff884a560be0d3af7
		REST API - 784bdb584ac5b2744a9ceb0d7b3a73c1
		
		
		*** cors(Cross-Origin Resource Sharing) ��������
		 - ������������ ajax�� ���ϼ����� ��û�ϴ� �� �������� �ܺμ����� ��û�ϴ� ����
		 ���� origin�� �ƴϱ⶧���� �� ��û�� �ź��ϴ� ���Ȱ��� �̽��� ����ϴ�.
		 
		
-->
	

<button id="payMe">�����ϱ�</button>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#payMe').click(function(){
			$.ajax({
				url:'../payment/kakaoPay',
				dataType: 'json',
				success: function(data){
					console.log("����");
					alert(data.next_redirect_pc_url);
					window.open(data.next_redirect_pc_url);
					
				},
				error: function(error){
					console.log("����");
					alert(error);
				}
			}); //end ajax
		}); //end #payMe.click()
	}); //end document
</script>

</body>
</html>