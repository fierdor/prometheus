<?php
session_start();
include("database.php");
include("find_path.php");
$router1 = $_SESSION['router1'];
$router2 = $_SESSION['router2'];
function state($node){
include("database.php");
mysql_select_db('prometheus_graph',$conn);
$res=mysql_query("select state from graph_nodes where id='".$node."'");
return $res;
}

function coord($pt,$side){
include("database.php");
mysql_select_db('prometheus_graph',$conn);
$row=mysql_query("select * from graph_nodes where id='".$pt."'");
$res=mysql_fetch_array($row);
return $res[$side];
}

$arr = findpath($router1, $router2);
mysql_select_db('prometheus_graph',$conn);
$res=mysql_query("select * from graph_links");
$res1=mysql_query("select * from graph_nodes");
// create a blank image
$image = imagecreatetruecolor(560,400);

// fill the background color
$bg = imagecolorallocate($image, 0, 0, 0);
$red = imagecolorallocate($image, 255, 0, 0);
$green = imagecolorallocate($image, 0, 255, 0);
$blue = imagecolorallocate($image, 0, 0, 255);

// draw the white ellipse
imagesetthickness($image,4);
while($row=mysql_fetch_array($res)){
if($row['state']=="up")
imageline($image,coord($row['pt1'],"x"),coord($row['pt1'],"y"),coord($row['pt2'],"x"),coord($row['pt2'],"y"),$blue);
}

$count = sizeof($arr);
for($i=0;$i<$count-1;$i++)
{
$node1 = strtoupper($arr[$i]);
$node2 = strtoupper($arr[$i+1]);

$res2 = mysql_query("select id from graph_nodes where name = '$node1'");
$res3 = mysql_query("select id from graph_nodes where name = '$node2'");
while($row1 = mysql_fetch_array($res2) )
{
	while($row2 = mysql_fetch_array($res3))
	imageline($image,coord($row1['id'],"x"),coord($row1['id'],"y"),coord($row2['id'],"x"),coord($row2['id'],"y"),$green);
}
			  
}

while($row=mysql_fetch_array($res1)){
if($row['state']=="up")
imagefilledellipse($image, $row['x'], $row['y'], 20, 20, $red);
//imagefilledellipse($image, 200, 200, 10, 10, $red);
}
header ("Content-type: image/png");
imagepng($image);

?>

