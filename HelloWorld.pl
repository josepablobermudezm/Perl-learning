#!/usr/local/bin/perl
print "Hi there!\n";

#The difference between single quotes and double quotes is that single quotes mean that their contents should be taken literally
print "This string\nshows up on two lines.";
print 'This string \n shows up on only one.';

#variables
$apple_count = 5; 
$count_report = "There are $apple_count apples.";
print "The report is: $count_report\n";

#Math
$a = 5;
$b = $a + 10;       # $b is now equal to 15.
$c = $b * 10;       # $c is now equal to 150.
$a = $a - 1;        # $a is now 4, and algebra teachers are cringing.

$a = 5;
$a++;        # $a is now 6; we added 1 to it.
$a += 10;    # Now it's 16; we added 10.
$a /= 2;     # And divided it by 2, so it's 8.

$a = "8";    # Note the quotes.  $a is a string.
$b = $a + "1";   # "1" is a string too.
$c = $a . "1";   # But $b and $c have different values!

print $a;
print "\n";
print $b;
print "\n";
print $c;

#arrays

@lotto_numbers = (1, 2, 3, 4, 5, 6); 
@months = ("July", "August", "September");

print $months[0];   # This prints "July".
$months[2] = "Smarch";  # We just renamed September!

$winter_months[0] = "December";  # This implicitly creates @winter_months.

print $#months;         # This prints 2.
$a1 = $#autumn_months;  # We don't have an @autumn_months, so this is -1.
$#months = 0;           # Now @months only contains "July".

#Hashes 
%days_in_summer = ( "July" => 31, "August" => 31, "September" => 30 );

print $days_in_summer{"September"}; # 30, of course.
$days_in_summer{"February"} = 29;   # It's a leap year.

@month_list = keys %days_in_summer; # @month_list is now ('February', 'July', 'September', 'August') !
@month_list = values %days_in_summer; # @month_list is now ('29','31', '31', '30') !

#loops
for $i (1, 2, 3, 4, 5) {
         print "$i\n";
}

for $i (@month_list) {
    print "$i\n";
}

#A handy shortcut for defining loops is using .. to specify a range of numbers.
@one_to_ten = (1 .. 10);
$top_limit = 25;
for $i (@one_to_ten, 15, 20 .. $top_limit) {
    print "$i\n";
}

for $i (keys %days_in_summer) {
        print "$i has $month_has{$i} days.\n";
}

for $marx ('Groucho', 'Harpo', 'Zeppo', 'Karl') {

    print "$marx is my favorite Marx brother.\n";
}