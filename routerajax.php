<?php
include("database.php");
include("router_snmp.php");
include("router_if.php");
mysql_select_db("snmpv2-mib",$conn);
$router=$_POST['router'];

echo "<li>Name:".$router."</li>";
echo "<li>Description:".getsysDescr($router)."</li>";
echo "<li>Object ID:".getsysObjectID($router)."</li>";
echo "<li>Contact:".getsysContact($router)."</li>";
echo "<li>Location:".getsysLocation($router)."</li>";
echo "<li>Services:Network Layer</li>";
echo "<li>Uptime:".getsysUpTime($router)."</li>";

<<<<<<< HEAD
=======
mysql_select_db("if-mib",$conn);

echo "<h3><a href='#'>Interfaces</a></h3>";
$a=getiftable($router);
//print_r ($a);
//echo "<div id='interfaces'>Interface Description".$a[1]['ifDescr']."</div>";
echo "<div id='interface'>";
for($i=1;$i<=$a['count'];$i++)
{
echo "<a href='#'><h3>Interface".$i."</h3></a>";
echo "<li>Interface Description:".$a[$i]['ifDescr']."</li>";
echo "<li>Interface MTU:".$a[$i]['ifMtu']."</li>";
echo "<li>Interface Speed:".$a[$i]['ifSpeed']."</li>";
echo "<li>Physical Address:".$a[$i]['ifPhysAddress']."</li>";
echo "<li>Interface Operation Status:".$a[$i]['ifOperStatus']."</li>";
echo "<li>Interface IP Address:".$a[$i]['ifipAddress']."</li>";
echo "<li>Interface IP NetMask:".$a[$i]['ifipNetmask']."</li>";
}
echo "</div>";
>>>>>>> 9eb6bc3f25a24d7dcda56bb175422245fc5db974
?>
