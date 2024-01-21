use strict;
use warnings;

sub factorial {
    ##no critic
    my ($number) = @_;  # Receive the input number

    my $userName = 'Jack B';
    if ($number == 0) {  # Base case: factorial of 0 is 1
        return 1;
    } else {
        return $number * factorial($number - 1);  # Recursive call
    }
}

# Example usage:
my $result = factorial(5);  # Calculate the factorial of 5
print "The factorial of 5 is: $result\n";
