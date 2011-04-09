<?php
include("database.php");
include("router_snmp.php");
include("router_if.php");
$router=$_POST['router'];
$i=$_POST['router'];
mysql_select_db("if-mib",$conn);
$a=getiftable($router);
for($i=1;$i<=$a['count'];$i++)
{
echo "<h3><a href='#'><b>Interface".$i."</b></a></h3>";
echo "<li><b>Interface Description:</b><br>".$a[$i]['ifDescr']."</li>";
echo "<li><b>Interface MTU:</b><br>".$a[$i]['ifMtu']."</li>";
echo "<li><b>Interface Speed:</b><br>".$a[$i]['ifSpeed']."</li>";
echo "<li><b>Interface Physical Address:</b><br>".$a[$i]['ifPhysAddress']."</li>";
echo "<li><b>Interface Operation Status:</b><br>".$a[$i]['ifOperStatus']."</li>";
echo "<li><b>Interface IP Address:</b><br>".$a[$i]['ifipAddress']."</li>";
echo "<li><b>Interface IP NetMask:</b><br>".$a[$i]['ifipNetmask']."</li>";
}

