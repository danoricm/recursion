# recursion.pl
sub factorial {
    my ($param) = @_;
    if ($param <= 1) {
        return 1;
    } else {
        return $param * factorial($param - 1);
    }
}

print "Enter an integer: ";
my $input = <STDIN>;
chomp($input);
my $param = int($input);

if ($param == 0 && $input ne "0") {
    print "Invalid input\n";
} else {
    print factorial($param) . "\n";
}
