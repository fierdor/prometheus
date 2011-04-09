<?php
include("database.php");
include("router_snmp.php");
include("router_if.php");
mysql_select_db("snmpv2-mib",$conn);
$router=$_POST['router'];

echo "<li><a href='#'><h4>SNMP</h4></a>";
echo "<ul>";
echo "<li>Name:".$router."</li>";
echo "<li>Description:".getsysDescr($router)."</li>";
echo "<li>Object ID:".getsysObjectID($router)."</li>";
echo "<li>Contact:".getsysContact($router)."</li>";
echo "<li>Location:".getsysLocation($router)."</li>";
echo "<li>Services:Network Layer</li>";
echo "<li>Uptime:".getsysUpTime($router)."</li>";
echo "</ul>";
echo "</li>";
mysql_select_db("if-mib",$conn);

echo "<h4>Interfaces</h4>";
$a=getiftable($router);
//print_r ($a);
//echo "<li>Interface Description".$a[1]['ifDescr']."</li>";

for($i=1;$i<=$a['count'];$i++)
{
echo "<h3>Interface".$i."</h3>";
echo "<li>Interface Description:".$a[$i]['ifDescr']."</li>";
echo "<li>Interface MTU:".$a[$i]['ifMtu']."</li>";
echo "<li>Interface Speed:".$a[$i]['ifSpeed']."</li>";
echo "<li>Interface Physical Address:".$a[$i]['ifPhysAddress']."</li>";
echo "<li>Interface Operation Status:".$a[$i]['ifOperStatus']."</li>";
echo "<li>Interface IP Address:".$a[$i]['ifipAddress']."</li>";
echo "<li>Interface IP NetMask:".$a[$i]['ifipNetmask']."</li>";
}

echo "<script type='text/javascript' src='scripts/accordion.js'></script>";

?>
