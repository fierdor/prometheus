<script type="text/javascript" src="scripts/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.11.custom.min.js"></script>
<LINK href="css/smoothness/jquery-ui-1.8.11.custom.css" rel="stylesheet" type="text/css">


<script type="text/javascript">                                         
$(document).ready(function() {
	$("#sidebar").accordion();
	
    $("#path").click(function() {
     var router2=$('#router2').val();
     var router1=$('#router1').val();
$.post("viewajax.php",{router1:router1,router2:router2},function(data){
				if(data.length>0)
				{
					
					$(".box1").html(data);
					
				}
				else{
					$(".box1").html("");
				}
			});

	
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

<div id="sidebar" >

</div>
<div>
<select id="router1">
  <option value="ce1_1">CE1_1</option>
  <option value="ce1_2">CE1_2</option>
  <option value="ce1_3">CE1_3</option>
</select>
<select id="router2">
  <option value="ce1_1">CE1_1</option>
  <option value="ce1_2">CE1_2</option>
  <option value="ce1_3">CE1_3</option>
</select>
<input type="button" id="path" value="Submit" />
</div>
