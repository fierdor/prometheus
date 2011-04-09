<?php
session_start();
$_SESSION['router1'] = $_POST['router1'];
$_SESSION['router2'] = $_POST['router2'];
?>
<MAP NAME="map1">
<?php
include("database.php");
function coord($pt,$side){
$row=mysql_query("select * from graph_nodes where id='".$pt."'");
$res=mysql_fetch_array($row);
return $res[$side];
}
$res1=mysql_query("select * from graph_nodes where state='up'");
while($row=mysql_fetch_array($res1)){
?>
<AREA id="<?php echo $row['name'];?>" href="#" ALT="<?php echo $row['name'];?>" TITLE="<?php echo $row['name'];?>" SHAPE=circle COORDS="<?php echo ($row['x'].",".$row['y'].",20");?>">
<?php
}
$res=mysql_query("select * from graph_links");
while($row=mysql_fetch_array($res)){
if($row['state']=="up")
//imageline($image,coord($row['pt1'],x),coord($row['pt1'],y),coord($row['pt2'],x),coord($row['pt2'],y),$green);
?>
<AREA href="#" ALT="Link <?php echo ($row['pt1']."-".$row['pt2']);?>" TITLE="Link <?php echo ($row['pt1']."-".$row['pt2']);?>" id="<?php echo ($row['pt1']."-".$row['pt2']);?>" SHAPE=POLY COORDS="<?php echo coord($row['pt1'],"x");?>,<?php echo coord($row['pt1'],"y");?>, <?php echo coord($row['pt1'],"x");?>,<?php echo (coord($row['pt1'],"y")+1);?>, <?php echo coord($row['pt2'],"x");?>,<?php echo (coord($row['pt2'],"y")+1);?>,<?php echo coord($row['pt2'],"x");?>,<?php echo coord($row['pt2'],"y");?>">
<?php
}
?>
</MAP>
<?
echo "<img src='draw_viewajax.php' usemap='#map1'>";
?>

