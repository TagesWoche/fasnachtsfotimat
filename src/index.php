<?php


$directory = "images";
$images = glob($directory . "*.jpg");

echo $images

foreach($images as $image)
{
  echo '<img src="images/'.$image.'" border="0" />';
}

?>


<html>
<? php
echo $images
?>

</html>