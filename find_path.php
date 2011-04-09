<?php

include("router_if.php");
include("router_vpn.php");
include("router_ftn.php");
include("router_lsr.php");

function find_path_pe($router1)
{
include("database.php");
mysql_select_db('ip-mib',$conn);
$a=array('ce1_1','ce1_2','ce1_3','ce2_1','ce2_2','p1','p2','p3','p4','pe1','pe2');
$pe = 0;
$bcast_r1 = getbcastaddr($router1,1);
$count = sizeof($a);

for($i=0;$i<$count;$i++) {
if ($a[$i]!=$router1)
{
$rifcount = getiftable($a[$i]);
$countif = $rifcount['count'];
	for($j=1;$j<=$countif;$j++)
	{
	$rbcast = getbcastaddr($a[$i],$j);
	if($rbcast == $bcast_r1)
		{
		$pe = $a[$i];
		return $pe;
		}
	}
}
}
}

function find_path_p($router1, $router2)
{
$pe = find_path_pe($router1);

$pe_ftntable = getmplsftntable($pe);
$pe_xctable = getmplsxctable($pe);
$pe_outtable = getmplsoutsegmenttable($pe);

for($i=1;$i<=$pe_ftntable['count'];$i++)
	{
	for($j=1;$j<=$pe_ftntable['count'];$j++)
	{
		if ($pe_ftntable[$i]['mplsFTNActionPointer'] == $pe_outtable[$j]['mplsOutSegmentXCIndex'])
		{
		$outlabel = $pe_outtable[$j]['mplsOutSegmentTopLabel'];
		$outif = $pe_outtable[$j]['mplsOutSegmentIfIndex'];
		$out = array($outlabel, $outif);
		return $out;
		}
	}
	}

}


function find_pp($pe, $inlabel, $inif)
{
$pe_intable = getmplsinsegmenttable($pe);
$pe_xctable = getmplsxctable($pe);
$pe_outtable = getmplsoutsegmenttable($pe);

for($i=1;$i<=$pe_xctable['count'];$i++)
	{
	for($j=1;$j<=$pe_xctable['count'];$j++)
	{
		if (($pe_intable[$i]['mplsInSegmentXCIndex'] == $pe_outtable[$j]['mplsOutSegmentXCIndex']) && ($inlabel == $pe_intable[$i]['mplsInSegmentLabel']) )
		{
		$outlabel = $pe_outtable[$j]['mplsOutSegmentTopLabel'];
		$outif = $pe_outtable[$j]['mplsOutSegmentIfIndex'];
		$out = array($outlabel, $outif);
		return $out;
		}
	}
	}

}

function find_next_p($router1, $router2)
{
$pe = find_path_pe($router1);
$out = find_path_p($router1,$router2);
$bcast = getbcastaddr($pe,$out[1]);
$a=array('p1','p2','p3','p4');

$count = sizeof($a);

for($i=0;$i<$count;$i++) {
if ($a[$i]!=$router1)
{
$rifcount = getiftable($a[$i]);
$countif = $rifcount['count'];
	for($j=1;$j<=$countif;$j++)
	{
	$bcast_r1 = getbcastaddr($a[$i],$j);
	if($bcast_pe == $bcast_r1)
		{
		$pe = $a[$i];
		$pe_if = $j;
		$p = array($pe,$pe_if);
		return $p;
		}
	}
}
}
}

function get_last_p($router1,$router2)
{
$pe = find_path_pe($router1);
$p = find_path_p($router1,$router2);
$nextp = find_pp($p,$
while(
}
?>
