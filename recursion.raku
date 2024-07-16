# recursion.raku
sub factorial(Int $n) {
    if $n <= 1 {
        return 1;
    } else {
        return $n * factorial($n - 1);
    }
}

print "Enter an integer: ";
my $input = prompt '';
my $param = $input.Int;

if $param == 0 && $input != "0" {
    say "Invalid input";
} else {
    say "Factorial: ", factorial($param);
}
