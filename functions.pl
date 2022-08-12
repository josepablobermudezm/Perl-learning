#!/usr/bin/perl

#
# Perl functions don't have parameters, their arguments are passed
# in an array @_.  You can simulate parameters by assigning to a
# list, but you can just apply the usual array operations to @_.
#

use strict;

sub parg {
    my($a, $b, $c) = @_;
    
    #The important effect of the parentesis is when you initialize the variable at the same time that you declare it:

    #my ($a) = @b;   # assigns  $a = $b[0]
    #my $a = @b;     # assigns  $a = scalar @b (length of @b)
    #The other time it is important is when you declare multiple variables.

    #my ($a,$b,$c);  # correct, all variables are lexically scoped now
    #my $a,$b,$c;    # $a is now lexically scoped, but $b and $c are not

    #my $foo;            # declare $foo lexically local
    #my (@wid, %get);    # declare list of variables local
    #my $foo = "flurp";  # declare $foo lexical, and init it
    #my @oof = @bar;     # declare @oof lexical, and init it
    #my $x : Foo = $y;   # similar, with an attribute applied

    print "A: $a $b $c\n";
    print "B: $#_ [@_]\n\n"; # $#_ is the index of the last element in the array @_
}

parg("Hi", "there", "fred");

my @a1 = ("Today", "is", "the", "day");
parg(@a1);

parg("Me", @a1, "too");

my $joe = "sticks";
&parg ("Pooh $joe");

#& tells Perl to ignore the sub's prototype.
#& can allow you to use the caller's @_. (&foo; with no parens or arguments).
#goto &foo; and defined &foo.
#Getting a reference (e.g. \&foo).
#Some people (mostly beginners) use it to distinguish user subs from builtin functions, since builtin functions cannot be preceded by &.

parg;

my @a2 = ("Never", "Mind");
parg @a2, "Boris", @a1, $joe;