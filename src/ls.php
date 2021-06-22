<?php
function getDirContents($dir, &$results = array()) {
    $files = scandir($dir);

    foreach ($files as $key => $value) {
        $path = realpath($dir . DIRECTORY_SEPARATOR . $value);
        if (!is_dir($path)) {
            $results[] = $path;
        } else if ($value != "." && $value != "..") {
            getDirContents($path, $results);
            $results[] = $path;
        }
    }

    return $results;
}

$allFiles = getDirContents('.');
?>
<html>
  <ul>
<?php
  foreach ($allFiles as $file) {
    $link = preg_replace('/\/var\/www\/html\//', '', $file);
    echo '<li><a href="'.$link.'">'.$link.'</li>';
  }
?>
  </ul>
</html>

