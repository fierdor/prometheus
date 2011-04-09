<?php

function getmplsvpninterfaceconftable($routername) {
include("database.php");
mysql_select_db('mpls-vpn-mib',$conn);

$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'mplsvpninterfaceconftable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);
while($row1 = mysql_fetch_array($result1))
{

$a['count']=$rows;
$a[$i++]=array('mplsVpnInterfaceConfIndex'=>$row1['mplsVpnInterfaceConfIndex'],'mplsVpnInterfaceLabelEdgeType'=>$row1['mplsVpnInterfaceLabelEdgeType'],'mplsVpnInterfaceVpnClassification'=>$row1['mplsVpnInterfaceVpnClassification'],'mplsVpnInterfaceVpnRouteDistProtocol'=>$row1['mplsVpnInterfaceVpnRouteDistProtocol']);
}
}
return $a;
}

function getmplsvpnvrfbgpnbraddrtable($routername) {
include("database.php");
mysql_select_db('mpls-vpn-mib',$conn);

$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'mplsvpnvrfbgpnbraddrtable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);
while($row1 = mysql_fetch_array($result1))
{

$a['count']=$rows;
$a[$i++]=array('mplsVpnVrfBgpNbrIndex'=>$row1['mplsVpnVrfBgpNbrIndex'],'mplsVpnVrfBgpNbrRole'=>$row1['mplsVpnVrfBgpNbrRole'],'mplsVpnVrfBgpNbrType'=>$row1['mplsVpnVrfBgpNbrType'],'mplsVpnVrfBgpNbrAddr'=>$row1['mplsVpnVrfBgpNbrAddr']);
}
}
return $a;
}

function  getmplsvpnvrfroutetable($routername) {
include("database.php");
mysql_select_db('mpls-vpn-mib',$conn);

$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'mplsvpnvrfroutetable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);
while($row1 = mysql_fetch_array($result1))
{

$a['count']=$rows;
$a[$i++]=array('mplsVpnVrfRouteDest'=>$row1['mplsVpnVrfRouteDest'],'mplsVpnVrfRouteMask'=>$row1['mplsVpnVrfRouteMask'],'mplsVpnVrfRouteNextHop'=>$row1['mplsVpnVrfRouteNextHop'],'mplsVpnVrfRouteIfIndex'=>$row1['mplsVpnVrfRouteIfIndex'],'mplsVpnVrfRouteType'=>$row1['mplsVpnVrfRouteType']);
}
}
return $a;
}

function  getmplsvpnvrftable($routername) {
include("database.php");
mysql_select_db('mpls-vpn-mib',$conn);

$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'mplsvpnvrftable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);
while($row1 = mysql_fetch_array($result1))
{

$a['count']=$rows;
$a[$i++]=array('mplsVpnVrfName'=>$row1['mplsVpnVrfName'],'mplsVpnVrfDescription'=>$row1['mplsVpnVrfDescription'],'mplsVpnVrfRouteDistinguisher'=>$row1['mplsVpnVrfRouteDistinguisher'],'mplsVpnVrfActiveInterfaces'=>$row1['mplsVpnVrfActiveInterfaces'],'mplsVpnVrfAssociatedInterfaces'=>$row1['mplsVpnVrfAssociatedInterfaces']);
}
}
return $a;
}

