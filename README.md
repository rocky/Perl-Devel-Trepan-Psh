Devel::Trepan::Psh -- interactive shell support for Devel::Trepan
==================================================================

An interactive shell command for [Devel::Trepan](https://github.com/rocky/Perl-Devel-Trepan/wiki).

Motivation: <i>Devel::Trepan</i> is getting quite large and adding a
shell via <i>Psh</i> pulls in lots of other packages. Thus we
have this separated this portion.

SYNOPSIS
--------

This adds a "psh" command 
<i>Devel::Trepan</i> debugger, <i>trepan.pl</i>. The command goes into
a <i>Psh</i> shell from inside the debugger.

INSTALLATION
------------

To install <i>Devel::Trepan::Psh</i>, run the following commands:

	perl Build.PL
	make
	make test
	[sudo] make install

or:

    $ perl -MCPAN -e shell
    ...
    cpan[1]> install Devel::Trepan::Psh

LICENSE AND COPYRIGHT
---------------------

Copyright (C) 2012 Rocky Bernstein <rocky@cpan.org>

This program is distributed WITHOUT ANY WARRANTY, including but not
limited to the implied warranties of merchantability or fitness for a
particular purpose.

The program is free software. You may distribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation (either version 2 or any later version) and
the Perl Artistic License as published by O’Reilly Media, Inc. Please
open the files named gpl-2.0.txt and Artistic for a copy of these
licenses.
