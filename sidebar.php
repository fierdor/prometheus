<script type="text/javascript" src="scripts/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.11.custom.min.js"></script>
<LINK href="css/smoothness/jquery-ui-1.8.11.custom.css" rel="stylesheet" type="text/css">


<script type="text/javascript">                                         
$(document).ready(function() {
	$("#sidebar").accordion({
			collapsible: true
	});
	    $("AREA").click(function() {
     var router=$(this).attr('id');
     
$.post("routerajax.php",{router:router},function(data){
				if(data.length>0)
				{
					
					$("#sidebar").html(data);
					
				}
				else{
					$("#sidebar").html("");
				}
			});

	
   });


	
 });
</script>  

<div id="sidebar">


</div>
