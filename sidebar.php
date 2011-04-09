<script type="text/javascript" src="scripts/jquery.js"></script>
<!--script type="text/javascript" src="scripts/accordion.js"></script-->
<script type="text/javascript">                                         
$(document).ready(function() {
	$('#sidemenu ul').hide();
	$('#sidemenu ul:first').show();
	$('#sidemenu li a').live('click',function()
	{
	
	var temp=$(this).next('ul').toggle();
	
	});
    $("AREA").click(function() {
     var router=$(this).attr('id');
     
$.post("routerajax.php",{router:router},function(data){
				if(data.length>0)
				{
					
					$("#sidemenu").html(data);
					
				}
				else{
					$("#sidemenu").html("");
				}
			});

	
   });


	
 });
</script>  

<div id="sidebar">
	<h3><a href="#">SNMP</a></h3>
	<div id="sidemenu">        
	<ul>
        </ul>
	</div>
	<h3><a href="#">Interfaces</a></h3>        
		<ul>
            <li></li>
   	        <li></li>
			<li></li>	
   		    </ul>
        
</div>