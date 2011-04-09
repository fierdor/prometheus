


<script type="text/javascript">                                         
$(function() {
		$( "#accordion" ).accordion({collapsible: true,autoHeight: false});
	});
$(function() {
		$( "#accordion1" ).accordion({collapsible: true,autoHeight: false });
	});

$(document).ready(function() {
<<<<<<< HEAD
	/*$("#sidebar").accordion({
			collapsible: true
	});
$("#interface").accordion({
			collapsible: true
	});*/	   
 $("AREA").click(function() {
=======
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
>>>>>>> 9eb6bc3f25a24d7dcda56bb175422245fc5db974
     var router=$(this).attr('id');
     
$.post("routerajax.php",{router:router},function(data){
				if(data.length>0)
				{
					
					$("#snmp").html(data);
					
				}
				else{
					$("#snmp").html("");
				}
			});

	
   });


	
 });
/* $("AREA").click(function() {
     var router=$(this).attr('id');
$.post("interfaceajax.php",{router:router},function(data){
				if(data.length>0)
				{
					
					$("#interface").html(data);
					
				}
				else{
					$("#interface").html("");
				}
			});

	
   });
});*/
</script>  

<<<<<<< HEAD
<div id="accordion">
 <h3><a href="#">Router Details</a></h3>
   <div id = 'snmp'></div>
</div>
<!--div id="accordion1">
   
   <h3><a href="#">Interfaces</a></h3>
   <div id ='interface'></div>

</div-->

=======
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
>>>>>>> 9eb6bc3f25a24d7dcda56bb175422245fc5db974
