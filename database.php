<?php
/*Connect to MySQL Database*/

$conn = mysql_connect("localhost","root","") or die(mysql_error());
mysql_select_db('prometheus_graph',$conn) or die(mysql_error());
?>
