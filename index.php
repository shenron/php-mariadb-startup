<html>
<?php

echo "<h1>hello world (php)</h1>";

$host = 'db';
$user = 'devuser';
$password = 'devpwd';
$db_name = 'dbdev';

$dbh = new PDO('mysql:host='.$host.';dbname='.$db_name, $user, $password);

$res = $dbh->query('SELECT now() as now;');
$rows = $res->fetchAll();
$time = $rows[0]['now'];
echo '<p>It\'s: '.$time.' (come from database)</p>';
?>
</html>
