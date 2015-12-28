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
            name => 'gen_sorter-sbe',
            tags => ['gen_sorter', 'sbe'],
            module => 'Sort::ByExample',
            code_template => 'Sort::ByExample::sbe(<spec>)',
        },
        {
            name => 'gen_sorter-sbs',
            tags => ['gen_sorter', 'sbs'],
            module => 'Sort::BySpec',
            code_template => 'Sort::BySpec::sort_by_spec(spec => <spec>)',
        },

        {
            name => 'sort-sbe',
            tags => ['sort', 'sbe'],
            module => 'Sort::ByExample',
            code_template => 'state $sorter = Sort::ByExample::sbe(<spec>); [$sorter->(@{<list>})]',
        },
        {
            name => 'sort-sbs',
            tags => ['sort', 'sbs'],
            module => 'Sort::BySpec',
            code_template => 'state $sorter = Sort::BySpec::sort_by_spec(spec => <spec>); [$sorter->(@{<list>})]',
        },
    ],

    datasets => [
        {
            name => 'eg-num5-list10',
            args => {
                spec => [5,4,3,2,1],
                # currently unwieldy, need to use hash
                #'list@' => [
                #    [1..10],  # 10-elem
                #    [1..100], # 100-elem
                #],
                'list' => [1..10],
            },
        },
        {
            name => 'eg-num5-list100',
            args => {
                spec => [5,4,3,2,1],
                'list' => [1..100],
            },
        },
        {
            name => 'eg-num5-list1000',
            args => {
                spec => [5,4,3,2,1],
                'list' => [1..1000],
            },
        },
    ],
};

1;
# ABSTRACT:

=head1 SYNOPSIS

 % bencher -m SortBySpec ...


=head1 DESCRIPTION
