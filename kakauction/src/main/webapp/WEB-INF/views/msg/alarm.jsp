<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
setInterval(newrefresh,1000);
var cnt1;
var cnt2=0;
function newrefresh(){
	$.ajax({
		url : "<c:url value='/msg/myMsgAla.do'/>",
		type : "POST",
		dataType : "json",
		success : function(count) {
			if(count>0){
				$("#message").html("메세지("+count+")").css("color", "red").css("font-weight","bold");
			}else{
				$("#message").html("메세지("+count+")").css("color", "").css("font-weight","");
			}
	   	}
	});
}
</script>

<span id="message">메세지(${newMsgCount })</span>