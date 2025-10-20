<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src = "https:code.jquery.com/jquery-3.6.0.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id = "sendButton">카운트 버튼</button>
	<div id="responseContainer"> </div>
	<script>
        $(document).ready(function() {
            // 버튼 클릭 이벤트 핸들러
            $("#sendButton").click(function() {
                
                // Ajax 통신 시작
                $.ajax({
                    url: '/sendMessage', // 호출할 Spring Controller의 URL
                    type: 'GET',         // HTTP 요청 방식 (Controller의 @GetMapping과 일치)
                    dataType: 'text',    // 서버로부터 예상되는 응답 데이터 타입 (Controller가 String을 반환하므로 'text')
                    
                    // 통신 성공 시 실행되는 콜백 함수
                    success: function(response) {
                        // response 변수에 서버에서 반환한 응답 메시지(String)가 담깁니다.
                        
                        // 응답 메시지를 화면에 추가
                        var messageHtml = '<div class="message">' + 
                                          '✅ 서버 응답: **' + response + '**' + 
                                          '</div>';
                        $("#responseContainer").append(messageHtml);
                        console.log("클라이언트 응답 처리 성공: " + response);
                    },
                    
                    // 통신 실패 시 실행되는 콜백 함수
                    error: function(xhr, status, error) {
                        var errorMessage = "통신 실패! 상태: " + status + ", 에러: " + error;
                        var messageHtml = '<div class="message" style="color: red;">' + 
                                          '❌ ' + errorMessage + 
                                          '</div>';
                        $("#responseContainer").append(messageHtml);
                        console.error(errorMessage);
                    }
                });
            });
        });
    </script>
</body>
</html>