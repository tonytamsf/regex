use strict;

use YAPE::Regex::Explain;

use Data::Dumper;
my $regex = qr/reg(ular\s+)?exp?(ression)?/i;
my $p = YAPE::Regex::Explain->new($regex);
print $p->explain();


my $parser = YAPE::Regex->new($regex);

# here is the tokenizing part
while (my $chunk = $parser->next) {
    print "   ", $chunk->fullstring(),"\n";
}
