<?php
include("database.php");

function setinpackets($router, $count)
{
$router = strtolower($router);
mysql_select_db("mpls-lsr-mib",$conn);
$result = mysql_query("UPDATE mplsinterfaceperftable_$router SET mplsInterfaceInPackets = mplsInterfaceInPackets+$count");

$result1=mysql_query("UPDATE mplsinterfaceconftable_$router SET mplsInterfaceAvailableBuffer= mplsInterfaceAvailableBuffer -$count*1500");

if($result && $result1)
return true;
else
return false;
}


function setinsegmentpackets($router, $count)
{
$router = strtolower($router);
mysql_select_db("mpls-lsr-mib",$conn);
$result = mysql_query("UPDATE mplsinsegmentperftable_$router SET mplsInSegmentPackets = mplsInSegmentPackets+$count");
if($result)
return true;
else
return false;
}


function setoutpackets($router, $count)
{
$router = strtolower($router);
mysql_select_db("mpls-lsr-mib",$conn);
$result = mysql_query("UPDATE mplsinterfaceperftable_$router SET mplsInterfaceOutPackets = mplsInterfaceOutPackets+$count");
if($result)
return true;
else
return false;
}


function setoutsegmentpackets($router, $count)
{
$router = strtolower($router);
mysql_select_db("mpls-lsr-mib",$conn);
$result = mysql_query("UPDATE mplsoutsegmentperftable_$router SET mplsOutSegmentPackets = mplsOutSegmentPackets+$count");
if($result)
return true;
else
return false;
}
?>


