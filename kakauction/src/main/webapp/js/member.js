/**
 * 
 */
	$(document).ready(function(){
		$("#email2").change(function(){
			if($(this).val()=="etc"){
				$("#email3").css("visibility","visible");
				$("#email3").focus();
				$("#email3").val("");
			}else{
				$("#email3").css("visibility","hidden");
			}
		});//change
		
		$("#btnZipcode").click(function(){
			window.open("/springherb/zipcode/zipcode.do",
					"zip",
			"width=500,height=500,left=10,top=50,resizable=yes,location=yes");
		});//zipcode click
	});//document.ready

	function validate_userid(memberId){
		var pattern = new RegExp(/^[a-z][a-zA-Z0-9_-]$/g);
		
		return pattern.test(memberId);
		
	}
	
	function validate_hp(hp) {
		var pattern = new RegExp(/^[0-9]*$/g);
		
		return pattern.tset(hp);
	}
	
	function validate_pwd(pwd){
		var pattern = new RegExp(/^[A-Za-z-9_-]{6,18}$/);
		//숫자 6~18자리
		return pattern.test(pwd);
		
	}