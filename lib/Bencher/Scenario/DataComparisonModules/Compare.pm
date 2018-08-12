package Bencher::Scenario::DataComparisonModules::Compare;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark data comparison modules',
    modules => {
        'Data::Compare' => {version=>0},
        'Data::Cmp' => {version=>0},
        'Test::Deep::NoTest' => {version=>0},
    },
    participants => [
        {
            fcall_template => 'Data::Compare::Compare(<d1>, <d2>)',
        },
        {
            fcall_template => 'Data::Cmp::cmp_data(<d1>, <d2>)',
        },
        {
            name => 'Test::Deep::NoTest::eq_deeply',
            code_template => 'use Test::Deep::NoTest; eq_deeply(<d1>, <d2>)',
        },
    ],
    datasets => [
        {name => 'simple scalar' , args=>{d1=>1, d2=>1}},
        {name => 'array len=10'  , args=>{d1=>[1..10], d2=>[1..10]}},
        {name => 'array len=1000', args=>{d1=>[1..1000], d2=>[1..1000]}},
        {name => 'hash keys=10'  , args=>{d1=>{1..20}, d2=>{1..20}}},
        {name => 'hash keys=1000', args=>{d1=>{1..2000}, d2=>{1..2000}}},
    ],
};

1;
# ABSTRACT:
