<?php
include("find_path.php");
include("packetset.php");
$arr1 = array('ce1_1','ce1_2','ce1_3','ce2_1','ce2_2');
$arr1 = array('ce1_1','ce1_2','ce1_3','ce2_1','ce2_2');
$router1 = "ce1_1";
$router2 = "ce1_3";
$arr = findpath($router1,$router2);
$size = sizeof($arr[0]);
$count = 100;
//print_r($arr);
for($i=1; $i<$size-1 ; $i++)
    {
        if($i==1)
	{
        setoutpackets($arr[0][$i], $count);
	echo "Packets out from $arr[0][$i] is $count";	
	}
        else if($i==size-2)
	{
        setinpackets($arr[0][$i], $count);
	echo "Packets out from $arr[0][$i] is $count";
	}        
	else
        {
            setinpackets($arr[0][$i], $count);
            setoutpackets($arr[0][$i], $count);
	    echo "Packets out and in from $arr[0][$i] is $count";
        }
    }


?>
