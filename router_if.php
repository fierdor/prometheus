<?php

function getifNumber($routername)
{
include("database.php");
mysql_select_db("if-mib", $conn);
$result = mysql_query("SELECT * FROM ifobjects where router='$routername'");
while($row = mysql_fetch_array($result))
return $row['ifNumber'];
}


function getiftable($routername)
{
include("database.php");
mysql_select_db("if-mib", $conn);

$routername = strtolower($routername);

$result = mysql_query("SHOW TABLES like 'iftable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);
while($row1 = mysql_fetch_array($result1))
{

$a['count']=$rows;
$ipaddr = getipaddr($routername,$row1['ifIndex']);
$ipnetmask = getipnetmask($routername,$row1['ifIndex']);
$a[$i++]=array('ifIndex'=>$row1['ifIndex'],'ifDescr'=>$row1['ifDescr'],'ifType'=>$row1['ifType'],'ifMtu'=>$row1['ifMtu'],'ifSpeed'=>$row1['ifSpeed'],'ifPhysAddress'=>$row1['ifPhysAddress'],'ifAdminStatus'=>$row1['ifAdminStatus'],'ifOperStatus'=>$row1['ifOperStatus'],'ifLastChange'=>$row1['ifLastChange'],'ifipAddress'=>$ipaddr,'ifipNetmask'=>$ipnetmask);
}
}
return $a;
}
 


function getipaddr($routername,$interface)
{
include("database.php");
mysql_select_db('ip-mib',$conn);
$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'ipaddrtable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0] WHERE ipAdEntIfIndex=$interface");
while($row1 = mysql_fetch_array($result1))
{
return $row1['ipAdEntAddr'];
}
}
return $a;
mysql_close($conn);
}


function getipnetmask($routername,$interface)
{
include("database.php");
mysql_select_db('ip-mib',$conn);
$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'ipaddrtable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0] WHERE ipAdEntIfIndex=$interface");

while($row1 = mysql_fetch_array($result1))
{
return $row1['ipAdEntNetMask'];
}
}
return $a;
mysql_close($conn);
}


function getbcastaddr($routername,$interface)
{
include("database.php");
mysql_select_db('ip-mib',$conn);
$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'ipaddrtable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0] WHERE ipAdEntIfIndex=$interface");
while($row1 = mysql_fetch_array($result1))
{
return $row1['ipAdEntBcastAddr'];
}
}
return $a;
mysql_close($conn);
}
?>
