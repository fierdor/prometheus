<?php
include("database.php");
function coord($pt,$side){
$row=mysql_query("select * from graph_nodes where id='".$pt."'");
$res=mysql_fetch_array($row);
return $res[$side];
}

$res=mysql_query("select * from graph_links where state='up'");
while($row=mysql_fetch_array($res)){
echo (coord($row['pt1'],"x").coord($row['pt1'],"y").coord($row['pt2'],"x").coord($row['pt2'],"y"));
}

?>
