package Bencher::Scenario::ArrayData::Word::ID::KBBI::startup;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark startup of ArrayData::Word::ID::KBBI vs WordList::ID::KBBI',
    module_startup => 1,
    modules => {
    },
    participants => [
        {module=>'ArrayData::Word::ID::KBBI'},
        {module=>'WordList::ID::KBBI'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

The startup overhead is fairly close. L<WordList> modules used to have
significantly smaller overhead before the use of roles. But L<Role::Tiny>'s
overhead is still tiny (~2-3ms on my laptop) so startup overhead should not be
an issue in most cases.


=head1 SEE ALSO
