<?php

function getmplsftntable($routername) {
include("database.php");
mysql_select_db('mpls-ftn-mib',$conn);

$routername = strtolower($routername);
$result = mysql_query("SHOW TABLES like 'mplsftntable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);
while($row1 = mysql_fetch_array($result1))
{

$a['count']=$rows;
$a[$i++]=array('mplsFTNIndex'=>$row1['mplsFTNIndex'],'mplsFTNSourceIpv4AddrMin'=>$row1['mplsFTNSourceIpv4AddrMin'],'mplsFTNSourceIpv4AddrMax'=>$row1['mplsFTNSourceIpv4AddrMax'],'mplsFTNDestIpv4AddrMin'=>$row1['mplsFTNDestIpv4AddrMin'],'mplsFTNDestIpv4AddrMax'=>$row1['mplsFTNDestIpv4AddrMax'],'mplsFTNActionType'=>$row1['mplsFTNActionType'],'mplsFTNActionPointer'=>$row1['mplsFTNActionPointer']);
}
}
return $a;
}

