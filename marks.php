<style>
	td {
		width: 80px;
	}
</style>
<?php
$name = [ 
  'John 0',
  'John 1',
  'John 2',
  'John 3',
  'John 4',
  'John 5',
  'John 6',
  'John 7',
  'John 8',
  'John 9'
];
$ukr = [ 4, 11, 5, 8, 12, 8, 2, 7, 10, 9 ];
$eng = [ 11, 7, 8, 6, 9, 8, 5, 4, 11, 7 ];
$sb = array();
$all_sb = 0;
echo "<table><tr><td>№</td><td>Имя</td><td>Укр</td><td>Англ</td><td>С/Б</td></tr>";
for($i = 1, $size = count($name); $i <= $size; $i++) {	
	$sb[$i-1] = ($ukr[$i-1] + $eng[$i-1])/2;
	echo "<tr><td>".$i."</td><td>".$name[$i-1]."</td><td>".$ukr[$i-1]."</td><td>".$eng[$i-1]."</td><td>".$sb[$i-1]."</td></tr>";
	$all_sb += $sb[$i-1];
}
echo "</table>";
echo "Средний бал всех ".$all_sb/count($sb);
