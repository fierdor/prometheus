<?php
include("find_path.php");
include("packetset.php");

$router1 = "ce1_1";
$router2 = "ce1_3";
$arr = findpath($router1,$router2);
$size = sizeof($arr);
$count = 100;
for($i=1; $i<$size-1 ; $i++)
    {
        if($i==1)
	{
        setoutpackets($arr[$i], $count);
	echo "Packets out from $arr[$i] is $count";	
	}
        else if($i==size-2)
	{
        setinpackets($arr[$i], $count);
	echo "Packets out from $arr[$i] is $count";
	}        
	else
        {
            setinpackets($arr[$i], $count);
            setoutpackets($arr[$i], $count);
	    echo "Packets out and in from $arr[$i] is $count";
        }
    }


?>
