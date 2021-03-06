<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">

    	$(function(){ 
		var carImgSrc;
		$(".agreementa").click(function(){
			$("#myPop").css("display", "block");
		});
		$(".closePop").click(function() {
			$("#myPop").css("display", "none");
		});
	});
</script>
<style type="text/css">
	.pop {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.7); /* Black w/ opacity */
	}
	
	/* Modal Content (Image) */
	.pop-content {
	    margin: auto;
	    display: block;
	    width: 80%;
	    max-width: 700px;
	}
	
	/* Caption of Modal Image (Image Text) - Same Width as the Image */
	#caption {
	    margin: auto;
	    display: block;
	    width: 80%;
	    max-width: 700px;
	    text-align: center;
	    color: #ccc;
	    padding: 10px 0;
	    height: 150px;
	}
	
	/* Add Animation - Zoom in the Modal */
	.pop-content, #caption { 
	    -webkit-animation-name: zoom;
	    -webkit-animation-duration: 0.6s;
	    animation-name: zoom;
	    animation-duration: 0.6s;
	}
	
	/* The Close Button */
	.closePop {
	    position: absolute;
	    top: 100px;
	    right: 400px;
	    color: #f1f1f1;
	    font-size: 40px;
	    font-weight: bold;
	    transition: 0.3s;
	}
	
	.closePop:hover, .closePop:focus {
	    color: #bbb;
	    text-decoration: none;
	    cursor: pointer;
	}
	
    .pop-content {
        width: 100%;
    }
   @media only screen and (max-width: 700px){
    .pop-content {
        width: 100%;
    }

</style>
</body>
	<!-- footer -->
	<footer>
	<div id="footer">
			<div id="footerdiv">
				<a href="#" class="agreementa">이용약관</a> 
				<a href="#">개인정보취급방침</a> 
				<a href="#">제휴문의</a> 
				<a href="#" class="green">KAKAUCTION</a>
			</div>
	</div>
	<div id="myPop" class="pop" style="overflow-x:hidden;">
		<span class="closePop">×</span>
			<iframe id="agreementPop" src="${pageContext.request.contextPath }/inc2/agreementPop.html" 
			style="width:800px; height:600px;" scrolling="yes"></iframe>
		<div id="caption"></div>
	</div>				
	</footer>
</html>