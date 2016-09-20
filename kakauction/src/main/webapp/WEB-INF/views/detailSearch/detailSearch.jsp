<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(".accordion").click(function() {
		$( this ).toggleClass( "active" );
		$( this ).next().toggleClass( "show" );
	});
</script>
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<p style="color: white; font-size: 2.0em; padding-left: 20px;">상세검색</p>
		<button class="accordion">Section 1</button>
			<div class="panel">
				<p>Lorem ipsum...</p>
		</div>
	
		<button class="accordion">Section 2</button>
			<div class="panel">
				<p>Lorem ipsum...</p>
		</div>
	
		<button class="accordion">Section 3</button>
			<div class="panel">
				<p>Lorem ipsum...</p>
		</div>

