package Bencher::Scenario::ArrayData::KBBI::PickElems;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

# XXX why as --precision is increased, WordList participant becomes slower?

our $scenario = {
    summary => 'Benchmark picking elements',
    participants => [
        {name=>'ArrayData::Word::ID::KBBI-pick_item-1'  , module=>'ArrayData::Word::ID::KBBI', code_template=>'my $ary = ArrayData::Word::ID::KBBI->new; Role::Tiny->apply_roles_to_object($ary, "Role::TinyCommons::Collection::PickItems::Iterator"); $ary->pick_item for 1..20; $ary->pick_item'},
        {name=>'WordList::ID::KBBI-pick-1'              , module=>'WordList::ID::KBBI'       , code_template=>'my $wl  = WordList::ID::KBBI->new; $wl->pick for 1..20; my ($w) = $wl->pick; $w'},
        {name=>'ArrayData::Word::ID::KBBI-pick_items-10', module=>'ArrayData::Word::ID::KBBI', code_template=>'my $ary = ArrayData::Word::ID::KBBI->new; Role::Tiny->apply_roles_to_object($ary, "Role::TinyCommons::Collection::PickItems::Iterator"); $ary->pick_items(n=>10) for 1..20; my @w = $ary->pick_items(n=>10); \@w'},
        {name=>'WordList::ID::KBBI-pick-10'             , module=>'WordList::ID::KBBI'       , code_template=>'my $wl  = WordList::ID::KBBI->new; $wl->pick(10) for 1..20; my @w = $wl->pick(10); \@w'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=head1 SEE ALSO
