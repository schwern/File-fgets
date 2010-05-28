#!/usr/bin/perl

use strict;
use warnings;

use File::fgets;
use Test::More;

my $string = "foo\nbar";
open my $fh, "<", \$string;

ok fileno $fh, "scalar filehandle has no fileno";

is fgets($fh, 5), "foo\n";
is fgets($fh, 5), "bar";
ok !fgets($fh, 5);

done_testing;
