<?php
echo "Введите строку: ";
$input = strtolower(trim(fgets(STDIN)));

$letters = [];

foreach (str_split($input) as $char) {
    if (ctype_alpha($char)) {
        $letters[$char] = true; // Используем ассоциативный массив как Set
    }
}

if (count($letters) === 26) {
    echo "True" . PHP_EOL;
} else {
    echo "False" . PHP_EOL;
}
