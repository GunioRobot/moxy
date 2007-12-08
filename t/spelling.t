use strict;
use warnings;
use Test::More;
BEGIN {
    eval q[use Test::Spelling];
    plan(skip_all => "Test::Spelling required for testing spelling") if $@;
}

my @stopwords = split /\n/, <<'...';
Tokuhiro
Matsuno
IP
ip
yaml
kensiro
sinsu
Miyagawa
Tatsuhiko
http
TODO
referer
DoCoMo
UA
XHTML
DoCoMo's
Firefox
orz
ControlPanel
Moxy
moxy
Moxy's
plugins
QRCode
Subno
EZweb
Kan
Fushihara
ezweb
img
GPS
gps
...

add_stopwords(@stopwords);
all_pod_files_spelling_ok;
