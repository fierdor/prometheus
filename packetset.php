<?php
function setinpackets($router, $if, $count)
{
include("database.php");
$router = strtolower($router);
mysql_select_db('mpls-lsr-mib',$conn);
$result = mysql_query("UPDATE mplsinterfaceperftable_$router SET mplsInterfaceInPackets = mplsInterfaceInPackets+$count WHERE mplsInterfaceConfIndex='$if'");
echo (mysql_error());
$result1=mysql_query("UPDATE mplsinterfaceconftable_$router SET mplsInterfaceAvailableBuffer= mplsInterfaceAvailableBuffer -$count*1500 WHERE mplsInterfaceConfIndex='$if'");
echo (mysql_error());
if($result && $result1)
return true;
else
return false;
}


function setinsegmentpackets($router, $if, $count)
{
include("database.php");
$router = strtolower($router);
mysql_select_db("mpls-lsr-mib",$conn);
$result = mysql_query("UPDATE mplsinsegmentperftable_$router SET mplsInSegmentPackets = mplsInSegmentPackets+$count WHERE mplsInterfaceConfIndex=$if");
if($result)
return true;
else
return false;
}


function setoutpackets($router, $if, $count)
{
include("database.php");
$router = strtolower($router);
mysql_select_db('mpls-lsr-mib',$conn);
$result = mysql_query("UPDATE mplsinterfaceperftable_$router SET mplsInterfaceOutPackets = mplsInterfaceOutPackets+$count WHERE mplsInterfaceConfIndex=$if");
$result1=mysql_query("UPDATE mplsinterfaceconftable_$router SET mplsInterfaceAvailableBuffer= mplsInterfaceAvailableBuffer -$count*1500 WHERE mplsInterfaceConfIndex=$if");
if($result)
return true;
else
return false;
}


function setoutsegmentpackets($router, $if, $count)
{
include("database.php");
$router = strtolower($router);
mysql_select_db("mpls-lsr-mib",$conn);
$result = mysql_query("UPDATE mplsoutsegmentperftable_$router SET mplsOutSegmentPackets = mplsOutSegmentPackets+$count WHERE mplsInterfaceConfIndex=$if");
if($result)
return true;
else
return false;
}
?>
