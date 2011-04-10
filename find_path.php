<?php

include("router_if.php");
include("router_vpn.php");
include("router_ftn.php");
include("router_lsr.php");

function firstpe($router1,$router2)
{
$pe = find_path_pe($router1);
$bcast_r2 = getbcastaddr($router2,1);
$rifcount = getiftable($pe);
$countif = $rifcount['count'];
for($j=1;$j<=$countif;$j++)
	{
	$rbcast = getbcastaddr($pe,$j);
	if($rbcast == $bcast_r2)
		{
		return true;
		}
	}
return false;
}

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

function find_p($router,$inlabel,$inif,$arr){
$pe_intable = getmplsinsegmenttable($router);
$pe_xctable = getmplsxctable($router);
$pe_outtable = getmplsoutsegmenttable($router);

for($i=1;$i<=$pe_xctable['count'];$i++)
	{
	for($j=1;$j<=$pe_xctable['count'];$j++)
	{
		if (($pe_intable[$i]['mplsInSegmentXCIndex'] == $pe_outtable[$j]['mplsOutSegmentXCIndex']) && ($inlabel == $pe_intable[$i]['mplsInSegmentLabel']) )
		{
		$outlabel = $pe_outtable[$j]['mplsOutSegmentTopLabel'];
		$outif = $pe_outtable[$j]['mplsOutSegmentIfIndex'];
		$nxt_router=match_if($router,$outif);
		array_push($arr,$nxt_router[0]);		
		if($outlabel!=0)		
		find_p($nxt_router[0],$outlabel,$outif,$arr);
		}
	}
	}
$out=array($arr,$nxt_router[0],$outif);
return $out;

}

function match_if($pe,$if){
$bcast_r1 = getbcastaddr($pe,$if);
$a=array('ce1_1','ce1_2','ce1_3','ce2_1','ce2_2','pe1','pe2','p1','p2','p3','p4');
$count = sizeof($a);
for($i=0;$i<$count;$i++) {
if ($a[$i]!=$pe)
{
$rifcount = getiftable($a[$i]);
$countif = $rifcount['count'];
	for($j=1;$j<=$countif;$j++)
	{
	$rbcast = getbcastaddr($a[$i],$j);
	if($rbcast == $bcast_r1)
		{
		$p = $a[$i];
		$inif = $j;		
		$out = array($p,$inif);			
		return $out;
		}
	}
}
}

}

function findpath($router1,$router2){
$path=array($router1);
$pe=find_path_pe($router1);
array_push($path,$pe);
if(firstpe($router1,$router2))
	{
	array_push($path,$router2);
	return $path;
	}
$pe_out=find_path_p($router1,$router2);
$next_p=match_if($pe,$pe_out[1]);
array_push($path,$next_p[0]);
$path1=find_p($next_p[0],$pe_out[0],$next_p[1],$path);
$last_pe=match_if($path1[1],$path1[2]);
array_push($path1[0],$last_pe[0]);
array_push($path1[0],$router2);
return $path1[0];
mysql_close($conn);
}
?>
