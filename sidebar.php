


<script type="text/javascript">                                         
$(function() {
		$( "#accordion" ).accordion({collapsible: true,autoHeight: false});
	});
$(function() {
		$( "#accordion1" ).accordion({collapsible: true,autoHeight: false });
	});

$(document).ready(function() {
	/*$("#sidebar").accordion({
			collapsible: true
	});
$("#interface").accordion({
			collapsible: true
	});*/	   
 $("AREA").click(function() {
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

<div id="accordion">
 <h3><a href="#">Router Details</a></h3>
   <div id = 'snmp'></div>
</div>
<!--div id="accordion1">
   
   <h3><a href="#">Interfaces</a></h3>
   <div id ='interface'></div>

</div-->

