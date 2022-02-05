package Bencher::Scenario::ArrayData::Word::ID::KBBI::has_item;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark checking if word exists',
    participants => [
        {name=>'ArrayData::Word::ID::KBBI-has_item'  , module=>'ArrayData::Word::ID::KBBI', code_template=>'my $ary = ArrayData::Word::ID::KBBI->new; for(1..3) { $ary->has_item   ("zebra"); $ary->has_item   ("nama"); $ary->has_item   ("foo") }'},
        {name=>'WordList::ID::KBBI-word_exists'      , module=>'WordList::ID::KBBI'       , code_template=>'my $wl  = WordList::ID::KBBI->new;        for(1..3) { $wl ->word_exists("zebra"); $wl ->word_exists("nama"); $wl ->word_exists("foo") }'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=head1 SEE ALSO
