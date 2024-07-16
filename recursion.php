// recursion.php
function factorial($param) {
    if ($param <= 1) {
        return 1;
    } else {
        return $param * factorial($param - 1);
    }
}

echo "Enter an integer: ";
$input = trim(fgets(STDIN));
$param = intval($input);

if ($param == 0 && $input !== "0") {
    echo "Invalid input\n";
} else {
    echo factorial($param) . "\n";
}
