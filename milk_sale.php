<?php
$sold = 1234;
$one_litre = 6;
$salary;
if ($sold < 1000) {
	$salary = $sold*0.2;
} elseif (($sold >= 1000) || ($sold < 2000)) {
	$salary = $sold*0.25;
} else {
	$salary = $sold*0.3;
}
echo "Зарплата продавца ".$salary."грн";