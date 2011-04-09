
$bcast_pe = getbcastaddr($pe,$ifindex);
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
