#!/usr/bin/perl

use strict;
use HTML::Template;
my $template = HTML::Template->new(filename => 'template.tmpl');

print "Content-type: text/html\n\n", $template->output;

=pod
print <<END_HTML;
<html>
  <head>
    <title>Perl Testing</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script type="text/javascript">

\$(document).ready(function(){
	\$('#input_text').keyup(function(){
		\$.ajax({
			url : '/cgi-bin/server_test.pl',
			data : {
				input_string : \$('#input_text').val()
			},
			contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			success : function(responseText){
				\$('#response').text(responseText);
			}
		});
	});
});
</script>
    </head>
    <body>
        <h3>Enter Text:</h3>
        <br>
        <form>
        <textarea style="white-space:pre-wrap;" cols="50" id="input_text" type="textarea" name="input_string">
        </textarea>
	<br>
        <br>
        <button type="submit">Translate</button>
	</form>
        <br><br>
	<h3>Input Text:</h3>
        <h3>Translated Text:</h3>
        <br><br>
        <div style="white-space:pre-wrap;" id="response"></div>
	</body>
</html>
END_HTML
=cut
