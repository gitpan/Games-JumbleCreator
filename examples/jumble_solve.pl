#!/usr/bin/perl -w
use strict;
use Games::JumbleCreator;

my $jumble = Games::JumbleCreator->new;
$jumble->dict('/home/doug/crossword_dict/unixdict.txt');
my @good_words = $jumble->solve('rta');

if (@good_words) {
    foreach my $good_word (@good_words) {
        print "$good_word\n";
    }
} else {
    print "No words found\n";
}
