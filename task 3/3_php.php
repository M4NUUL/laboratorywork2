<?php
echo "Введите количество чисел: ";
$repets = intval(trim(fgets(STDIN)));

$lastElement = -1;
$repit = 0;

for ($i = 0; $i < $repets; $i++) {
    $element = intval(trim(fgets(STDIN)));
    if ($element === $lastElement) {
        $repit++;
    }
    $lastElement = $element;
}

echo "Количество повторов: $repit" . PHP_EOL;
