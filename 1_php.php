<?php
echo "Введите строку: ";
$originalString = trim(fgets(STDIN));

if (strlen($originalString) === 0) {
    echo $originalString . PHP_EOL;
    exit;
}

$countOfChar = 1;
$newString = '';
$actualChar = $originalString[0];

for ($i = 1; $i < strlen($originalString); $i++) {
    if ($originalString[$i - 1] === $originalString[$i]) {
        $countOfChar++;
    } else {
        $newString .= $originalString[$i - 1] . $countOfChar;
        $countOfChar = 1;
        $actualChar = $originalString[$i];
    }
}

$newString .= $actualChar . $countOfChar;

if (strlen($newString) < strlen($originalString)) {
    echo $newString . PHP_EOL;
} else {
    echo $originalString . PHP_EOL;
}
