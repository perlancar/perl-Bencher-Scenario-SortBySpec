package Bencher::Scenario::SortBySpec;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark Sort::BySpec (e.g. against Sort::ByExample, etc)',
    participants => [
        {
            tags => ['numeric'],
            fcall_template => 'List::Util::max(@{<list>})',
        },
    ],

    datasets => [
    ],
};

1;
# ABSTRACT:

=head1 SYNOPSIS


=head1 DESCRIPTION
