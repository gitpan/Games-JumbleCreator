#!/usr/bin/perl -w
use strict;
use Games::JumbleCreator;

my $jumble = Games::JumbleCreator->new;
$jumble->num_words(6);
$jumble->dict('/home/doug/crossword_dict/unixdict.txt');

my @jumble = $jumble->create;

foreach my $word (@jumble) {
    print "$word\n";
}
