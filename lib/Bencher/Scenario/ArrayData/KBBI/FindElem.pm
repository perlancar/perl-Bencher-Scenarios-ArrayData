package Bencher::Scenario::ArrayData::KBBI::FindElem;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

# XXX why as --precision is increased, WordList participant becomes slower?

our $scenario = {
    summary => 'Benchmark finding element',
    participants => [
        {name=>'ArrayData::Word::ID::KBBI-has_item'  , module=>'ArrayData::Word::ID::KBBI', code_template=>'my $ary = ArrayData::Word::ID::KBBI->new; Role::Tiny->apply_roles_to_object($ary, "Role::TinyCommons::Collection::FindItem::Iterator"); for(1..3) { $ary->has_item   ("zebra"); $ary->has_item   ("nama"); $ary->has_item   ("foo") }'},
        {name=>'WordList::ID::KBBI-word_exists'      , module=>'WordList::ID::KBBI'       , code_template=>'my $wl  = WordList::ID::KBBI->new;                                                                                                      for(1..3) { $wl ->word_exists("zebra"); $wl ->word_exists("nama"); $wl ->word_exists("foo") }'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=head1 SEE ALSO
