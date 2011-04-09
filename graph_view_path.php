<html>
<head>
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


$("#showpath").click(function() {
	alert(this.id);
     $.post("viewajax.php",function(data){
				if(data.length>0)
				{
					
					$("#network").html(data);
					
				}
				else{
					$("#network").html("");
				}
			});

	
   });
	
 });
</script>  
</head>
<body>
<div align=center width=400px>
<div id="router" style="float:left" width=100px>
<div id="navmenu">
<ul id="sidemenu">
	<h4>SNMP</h4>
    	<li id="snmpdata"><a href="#" id="snmp">SNMP</a>
        	<ul>
            <li></li>
   			<li></li>
            <li></li>
			<li></li>			
   		    </ul>
        </li>
        <li id="interface"><a href="#">Interface</a>
        	<ul>
            <li></li>
   	        <li></li>
			<li></li>	
   		    </ul>
        </li>
        
        <li><a href="#">Support</a>
        	<ul>
            <li><a href="support.php">Support Cases</a></li>
   			<li><a href="supportarch.php">Support Case Archives</a></li>
            <li><a href="blog.php">Camelot Blog</a></li>
			<li><a href="enhancereq.php">Enhancement Request</a></li>
			<li><a href="cdets.php">File CDETS</a></li>
   		    </ul>
        </li>
        
        <li><a href="#">Team</a>
        	<ul>
            <li><a href="aboutus.php">Members</a></li>
   			<li><a href="administrator">Administrator Page</a></li>
            <li><a href="http://wwwin-vts.cisco.com/camelot/internal_new/internal_home.htm">Internal Pages</a></li>         
   	</ul>
        </li>
    </ul>
</div>
</div>
<div>

<MAP NAME="map1">
<?php
include("database.php");
function coord($pt,$side){
$row=mysql_query("select * from graph_nodes where id='".$pt."'");
$res=mysql_fetch_array($row);
return $res[$side];
}
$res1=mysql_query("select * from graph_nodes where state='up'");
while($row=mysql_fetch_array($res1)){
?>
<AREA id="<?php echo $row['name'];?>" href="#" ALT="<?php echo $row['name'];?>" TITLE="<?php echo $row['name'];?>" SHAPE=circle COORDS="<?php echo ($row['x'].",".$row['y'].",20");?>">
<?php
}
$res=mysql_query("select * from graph_links");
while($row=mysql_fetch_array($res)){
if($row['state']=="up")
//imageline($image,coord($row['pt1'],x),coord($row['pt1'],y),coord($row['pt2'],x),coord($row['pt2'],y),$green);
?>
<AREA href="#" ALT="Link <?php echo ($row['pt1']."-".$row['pt2']);?>" TITLE="Link <?php echo ($row['pt1']."-".$row['pt2']);?>" id="<?php echo ($row['pt1']."-".$row['pt2']);?>" SHAPE=POLY COORDS="<?php echo coord($row['pt1'],"x");?>,<?php echo coord($row['pt1'],"y");?>, <?php echo coord($row['pt1'],"x");?>,<?php echo (coord($row['pt1'],"y")+1);?>, <?php echo coord($row['pt2'],"x");?>,<?php echo (coord($row['pt2'],"y")+1);?>,<?php echo coord($row['pt2'],"x");?>,<?php echo coord($row['pt2'],"y");?>">
<?php
}
?>
</MAP>
<div id="network">
<img src="draw_graph.php" usemap="#map1">
<br>
<a id="showpath" href="#">Show path</a>
</div>
</div>


<div id="link" style="float:right">

</div>
</div>
</body>
</html>
