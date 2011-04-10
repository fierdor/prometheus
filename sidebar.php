<script type="text/javascript">                                         
$(function() {
		$( "#accordion" ).accordion({collapsible: true,autoHeight: false,active: false});
	});

$(document).ready(function() {
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
</script>  

<div id="accordion">
 <h3><a href="#">Router Details</a></h3>
   <div id = 'snmp'></div>
</div>

