package Bencher::Scenario::ArrayData::Word::ID::KBBI::pick_items;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark picking words',
    participants => [
        {name=>'ArrayData::Word::ID::KBBI-pick_items-1' , module=>'ArrayData::Word::ID::KBBI', code_template=>'my $ary = ArrayData::Word::ID::KBBI->new;                                                                         $ary->pick_items(n=>1)  for 1..20; my ($w) = $ary->pick_items(n=>1); $w'},
        {name=>'WordList::ID::KBBI-pick-1'              , module=>'WordList::ID::KBBI'       , code_template=>'my $wl  = WordList::ID::KBBI->new;        Role::Tiny->apply_roles_to_object($wl, "WordListRole::RandomSeekPick"); $wl ->pick              for 1..20; my ($w) = $wl->pick; $w'},
        {name=>'ArrayData::Word::ID::KBBI-pick_items-10', module=>'ArrayData::Word::ID::KBBI', code_template=>'my $ary = ArrayData::Word::ID::KBBI->new;                                                                         $ary->pick_items(n=>10) for 1..20; my @w = $ary->pick_items(n=>10); \@w'},
        {name=>'WordList::ID::KBBI-pick-10'             , module=>'WordList::ID::KBBI'       , code_template=>'my $wl  = WordList::ID::KBBI->new;        Role::Tiny->apply_roles_to_object($wl, "WordListRole::RandomSeekPick"); $wl ->pick      (10)    for 1..20; my @w = $wl->pick(10); \@w'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=head1 SEE ALSO
