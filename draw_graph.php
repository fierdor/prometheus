<?php
include("database.php");
function state($node){
$res=mysql_query("select state from graph_nodes where id='".$node."'");
return $res;
}
function coord($pt,$side){
$row=mysql_query("select * from graph_nodes where id='".$pt."'");
$res=mysql_fetch_array($row);
return $res[$side];
}
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
imageline($image,coord($row['pt1'],"x"),coord($row['pt1'],"y"),coord($row['pt2'],"x"),coord($row['pt2'],"y"),$green);
}
while($row=mysql_fetch_array($res1)){
if($row['state']=="up")
imagefilledellipse($image, $row['x'], $row['y'], 20, 20, $red);
//imagefilledellipse($image, 200, 200, 10, 10, $red);
}
header ("Content-type: image/png");
imagepng($image);
?>

