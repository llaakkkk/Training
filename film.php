<?php
$mysqli = new mysqli('127.0.0.1', 'root', '', 'films');

if ($mysqli->connect_errno) {
    echo "Извините, возникла проблема на сайте";
    exit;
}

$sql = "SELECT * FROM actor_to_film INNER JOIN actors ON actor_to_film.actor_id = actors.id GROUP BY actor_id HAVING count(*) > 1 ";
if (!$result = $mysqli->query($sql)) {
    echo "Извините, возникла проблема в работе сайта.";
    exit;
}

if ($result->num_rows === 0) {
    echo "Мы не смогли найти совпадение для $aid, простите. Пожалуйста, попробуйте еще раз.";
    exit;
}
 echo "<h2>Играли более чем в одном фильме:</h2><ul>\n";
 while ($actors = $result->fetch_assoc()) {
     echo "<li>" . $actors['first_name'] . ' ' .$actors['last_name'] . "</li>";
 }
 echo "</ul>\n";

$result->free();
$mysqli->close();
?>