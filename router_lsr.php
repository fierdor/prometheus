<?php

function getmplsMaxLabelStackDepth($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);
$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsMaxLabelStackDepth'];
}

function mplsInSegmentTrapEnable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsInSegmentTrapEnable'];
}

function mplsOutSegmentTrapEnable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsOutSegmentTrapEnable'];
}

function mplsXCTrapEnable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsXCTrapEnable'];
}

function mplsInSegmentUp($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsInSegmentUp'];
}

function mplsInSegmentDown($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsInSegmentDown'];
}

function mplsOutSegmentUp($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsOutSegmentUp'];
}

function mplsOutSegmentDown($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsOutSegmentDown'];
}

function mplsXCUp($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsXCUp'];
}

function mplsXCDown($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SELECT * FROM mplslsrobjects where router=$routername");
while($row = mysql_fetch_array($result))
return $row['mplsXCDown'];
}

function getmplsinsegmentperftable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplsinsegmentperftable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsInSegmentOctets'=>$row1['mplsInSegmentOctets'],'mplsInSegmentPackets'=>$row1['mplsInSegmentPackets'],'mplsInSegmentErrors'=>$row1['mplsInSegmentErrors'],'mplsInSegmentDiscards'=>$row1['mplsInSegmentDiscards'],'mplsInSegmentHCOctets'=>$row1['mplsInSegmentHCOctets'],'mplsInSegmentPerfDiscontinuityTime'=>$row1['mplsInSegmentPerfDiscontinuityTime']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}

function getmplsinsegmenttable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplsinsegmenttable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsInSegmentIfIndex'=>$row1['mplsInSegmentIfIndex'],'mplsInSegmentAdminStatus'=>$row1['mplsInSegmentAdminStatus'],'mplsInSegmentOperStatus'=>$row1['mplsInSegmentOperStatus'],'mplsInSegmentLabel'=>$row1['mplsInSegmentLabel'],'mplsInSegmentNPop'=>$row1['mplsInSegmentNPop'],'mplsInSegmentAddrFamily'=>$row1['mplsInSegmentAddrFamily'],'mplsInSegmentXCIndex'=>$row1['mplsInSegmentXCIndex'],'mplsInSegmentOwner'=>$row1['mplsInSegmentOwner'],'mplsInSegmentTrafficParamPtr'=>$row1['mplsInSegmentTrafficParamPtr'],'mplsInSegmentRowStatus'=>$row1['mplsInSegmentRowStatus'],'mplsInSegmentStorageType'=>$row1['mplsInSegmentStorageType']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}


function getmplsinterfaceconftable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplsinterfaceconftable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsInterfaceConfIndex'=>$row1['mplsInterfaceConfIndex'],'mplsInterfaceLabelParticipationType'=>$row1['mplsInterfaceLabelParticipationType'],'mplsInterfaceConfStorageType'=>$row1['mplsInterfaceConfStorageType'],'mplsInterfaceLabelMinIn'=>$row1['mplsInterfaceLabelMinIn'],'mplsInterfaceLabelMaxIn'=>$row1['mplsInterfaceLabelMaxIn'],'mplsInterfaceLabelMinOut'=>$row1['mplsInterfaceLabelMinOut'],'mplsInterfaceLabelMaxOut'=>$row1['mplsInterfaceLabelMaxOut'],'mplsInterfaceTotalBandwidth'=>$row1['mplsInterfaceTotalBandwidth'],'mplsInterfaceAvailableBandwidth'=>$row1['mplsInterfaceAvailableBandwidth'],'mplsInterfaceTotalBuffer'=>$row1['mplsInterfaceTotalBuffer'],'mplsInterfaceAvailableBuffer'=>$row1['mplsInterfaceAvailableBuffer']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}

function getmplsinterfaceperftable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'getmplsinterfaceperftable_ $routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsInterfaceInLabelsUsed'=>$row1['mplsInterfaceInLabelsUsed'],'mplsInterfaceInPackets'=>$row1['mplsInterfaceInPackets'],'mplsInterfaceInDiscards'=>$row1['mplsInterfaceInDiscards'],'mplsInterfaceFailedLabelLookup'=>$row1['mplsInterfaceFailedLabelLookup'],'mplsInterfaceOutLabelsUsed'=>$row1['mplsInterfaceOutLabelsUsed'],'mplsInterfaceOutPackets'=>$row1['mplsInterfaceOutPackets'],'mplsInterfaceOutDiscards'=>$row1['mplsInterfaceOutDiscards'],'mplsInterfaceOutFragments'=>$row1['mplsInterfaceOutFragments']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}


function getmplslabelstacktable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplslabelstacktable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsLabelStackIndex'=>$row1['mplsLabelStackIndex'],'mplsLabelStackLabelIndex'=>$row1['mplsLabelStackLabelIndex'],'mplsLabelStackLabel'=>$row1['mplsLabelStackLabel'],'mplsLabelStackRowStatus'=>$row1['mplsLabelStackRowStatus'],'mplsLabelStackStorageType'=>$row1['mplsLabelStackStorageType']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}


function mplsoutsegmentperftable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplsoutsegmentperftable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsOutSegmentOctets'=>$row1['mplsOutSegmentOctets'],'mplsOutSegmentPackets'=>$row1['mplsOutSegmentPackets'],'mplsOutSegmentErrors'=>$row1['mplsOutSegmentErrors'],'mplsOutSegmentDiscards'=>$row1['mplsOutSegmentDiscards'],'mplsOutSegmentHCOctets'=>$row1['mplsOutSegmentHCOctets'],'mplsOutSegmentPerfDiscontinuityTime'=>$row1['mplsOutSegmentPerfDiscontinuityTime']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}



function getmplsoutsegmenttable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplsoutsegmenttable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsOutSegmentIndex'=>$row1['mplsOutSegmentIndex'],'mplsOutSegmentTrafficParamPtr'=>$row1['mplsOutSegmentTrafficParamPtr'],'mplsOutSegmentRowStatus'=>$row1['mplsOutSegmentRowStatus'],'mplsOutSegmentStorageType'=>$row1['mplsOutSegmentStorageType'],'mplsOutSegmentAdminStatus'=>$row1['mplsOutSegmentAdminStatus'],'mplsOutSegmentOperStatus'=>$row1['mplsOutSegmentOperStatus'],'mplsOutSegmentIfIndex'=>$row1['mplsOutSegmentIfIndex'],'mplsOutSegmentPushTopLabel'=>$row1['mplsOutSegmentPushTopLabel'],'mplsOutSegmentTopLabel'=>$row1['mplsOutSegmentTopLabel'],'mplsOutSegmentNextHopIpAddrType'=>$row1['mplsOutSegmentNextHopIpAddrType'],'mplsOutSegmentNextHopIpv4Addr'=>$row1['mplsOutSegmentNextHopIpv4Addr'],'mplsOutSegmentXCIndex'=>$row1['mplsOutSegmentXCIndex'],'mplsOutSegmentOwner'=>$row1['mplsOutSegmentOwner']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}

function mplstrafficparamtable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplstrafficparamtable$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
while($row1 = mysql_fetch_array($result1))
{
$a[$i++]=array('mplsTrafficParamIndex'=>$row1['mplsTrafficParamIndex'],'mplsTrafficParamMaxRate'=>$row1['mplsTrafficParamMaxRate'],'mplsTrafficParamMeanRate'=>$row1['mplsTrafficParamMeanRate'],'mplsTrafficParamMaxBurstSize'=>$row1['mplsTrafficParamMaxBurstSize'],'mplsTrafficParamRowStatus'=>$row1['mplsTrafficParamRowStatus'],'mplsTrafficParamStorageType'=>$row1['mplsTrafficParamStorageType']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}

function getmplsxctable($routername)
{
include("database.php");
mysql_select_db("mpls-lsr-mib", $conn);

$result = mysql_query("SHOW TABLES like 'mplsxctable_$routername'");
$i=1;
while($row = mysql_fetch_array($result))
{
$result1=mysql_query("SELECT * FROM $row[0]");
$rows=mysql_num_rows($result1);

while($row1 = mysql_fetch_array($result1))
{
$a['count']=$rows;
$a[$i++]=array('mplsXCIndex'=>$row1['mplsXCIndex'],'mplsXCLspId'=>$row1['mplsXCLspId'],'mplsXCIsPersistent'=>$row1['mplsXCIsPersistent'],'mplsXCOwner'=>$row1['mplsXCOwner'],'mplsXCRowStatus'=>$row1['mplsXCRowStatus'],'mplsXCStorageType'=>$row1['mplsXCStorageType'],'mplsXCAdminStatus'=>$row1['mplsXCAdminStatus'],'mplsXCOperStatus'=>$row1['mplsXCOperStatus']);
}
}
return $a;
 //Returns an array with the above mentioned keys
}


