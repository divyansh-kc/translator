#!/usr/bin/perl

use strict;

print "Content-type: text/html\n\n";
use CGI ':standard';

my $input_string = param('input_string');
my $ret = `python /home/divyansh/Desktop/test.py "$input_string"`;

#print $input_string;
print $ret;

=pod
print <<END_HTML;
<html>
	<head>
	 <meta charset="UTF-8">
		<title>Response</title>
	</head>
	<body>
		<h1>$ret</h1>
	<body>
</html>
END_HTML
=cut
