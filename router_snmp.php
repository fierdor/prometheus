<?php
include("database.php");
mysql_select_db("snmpv2-mib", $conn);

function getsysDescr($routername)
{
$result = mysql_query("SELECT * FROM snmpv2objects where sysName='$routername'");
while($row = mysql_fetch_array($result))
return $row['sysDescr'];
}

function getsysUpTime($routername)
{
$result = mysql_query("SELECT * FROM snmpv2objects where sysName='$routername'");
while($row = mysql_fetch_array($result))
return $row['sysUpTime'];
}


function getsysContact($routername)
{
$result = mysql_query("SELECT * FROM snmpv2objects where sysName='$routername'");
while($row = mysql_fetch_array($result))
return $row['sysContact'];
}

function getsysObjectID($routername)
{
$result = mysql_query("SELECT * FROM snmpv2objects where sysName='$routername'");
while($row = mysql_fetch_array($result))
return $row['sysObjectID'];
}

function getsysLocation($routername)
{
$result = mysql_query("SELECT * FROM snmpv2objects where sysName='$routername'");
while($row = mysql_fetch_array($result))
return $row['sysLocation'];
}

function getsysServices($routername)
{
$result = mysql_query("SELECT * FROM snmpv2objects where sysName='$routername'");
while($row = mysql_fetch_array($result))
return $row['sysServices'];
}
?>
