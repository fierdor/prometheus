<script type="text/javascript">                                         
$(function() {
		$( "#accordion1" ).accordion({collapsible: true,autoHeight: false });
	});

$(document).ready(function() {
 $("AREA").click(function() {
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
   });
</script>  
<div id="accordion1">
<h3><a href="#">Interface Details</a></h3>
  <div id= 'interface'></div>
</div>
<!--div id="accordion1">
   
   <h3><a href="#">Interfaces</a></h3>
   <div id ='interface'></div>
</div-->
