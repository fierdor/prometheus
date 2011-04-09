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
?>
