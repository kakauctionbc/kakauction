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

	function validate_userid(userid){
		var pattern = new RegExp(/^[a-zA-Z0-9_]{5,20}$/);
		
		return pattern.test(userid);
		
	}
	
	function validate_hp(hp) {
		var pattern = new RegExp(/^[0-9]*$/g);
		
		return pattern.tset(hp);
	}