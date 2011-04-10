<?php
include("find_path.php");
include("packetset.php");

$arr = find_path($router1,$router2);
$size = sizeof($arr);

for($i=1; $i<$size-1 ; $i++)
    {
        if($i==1)
        setoutpackets($arr[$i], $count);
        else if($i==size-2))
        setinpackets($arr[$i], $count);
        else
        {
            setinpackets($arr[$i], $count);
            setoutpackets($arr[$i], $count);
        }
    }

?>
