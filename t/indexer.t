use strict;
use warnings;
use utf8;
use Test::More tests => 23;
my $builder = Test::More->builder;
binmode $builder->output,         ":utf8";
binmode $builder->failure_output, ":utf8";
binmode $builder->todo_output,    ":utf8";
binmode STDOUT, ":encoding(UTF-8)";
binmode STDERR, ":encoding(UTF-8)";

use AmuseWikiFarm::Utils::Amuse qw/muse_naming_algo
                                   muse_file_info/;

use HTML::Entities;
use Encode;
use Data::Dumper;
use File::Spec::Functions qw/catfile/;

my $string = "à&amp;è";
my $utf8 = encode("utf-8", $string);
is(decode_entities($string), "à&è", "encode entities is behaving correctly");
is(decode_entities($utf8), encode("utf-8", "à&è"));

is(muse_naming_algo("CrimethInc. Политика для тех, кому слишком скучно"),
   "crimethinc-politika-dlya-teh-komu-slishkom-skuchno",
   "checking naming algo 1, with cyrillic");


is(muse_naming_algo("Боб Блэк Анархия: Вопросы и Ответы"),
   "bob-blek-anarhiya-voprosy-i-otvety",
   "checking naming algo 2, with cyrillic");

is(muse_naming_algo(" Ò Purzel, my òààà\n\n\n"),
   "o-purzel-my-oaaa");

is(muse_naming_algo("g.c."), "g-c",
   "Testing not printable");

is(muse_naming_algo("äÄÅåöÖøõØÕäÄÅåöÖøõØÕ"),
   'aaaaooooooaaaaoooooo',
   "Testing new chars");

is(muse_naming_algo("čćžšđČĆŽŠĐ âÂāĀêÊîÎôÔûÛ"),
   'cczsdjcczsdj-aaaaeeiioouu',
   'Testing hr-sr chars');
   
is(muse_naming_algo("ĘęŁłŃńŚśŹźŻż ĘęŁłŃńŚśŹźŻż "),
   "eellnnsszzzz-eellnnsszzzz",
   "testing polish chars");

is(muse_naming_algo("ѓЃèÈѕЅѝЍjJљЉњЊќЌџЏјЈѐЀ"),
   "djdjeedzdziijjljljnjnjkjkjdzhdzhjjee",
   "testing macedonian cyril");

is muse_naming_algo("-ciao-"), "ciao", "testing hyphens";
is muse_naming_algo(",ciao,"), "ciao", "testing commas";
is muse_naming_algo(".ciao."), "ciao", "testing dots";
is muse_naming_algo('\\".-,ci\ao-,.'), "ci-ao", "testing weird chars";

my $testfile = catfile(t => not => parsable => 'ciao.muse');
ok (-f $testfile);
ok (!muse_file_info($testfile));
eval {
    muse_file_info("alksdjf");
};
ok ($@);

$testfile = catfile(t => a => at => 'another-test.muse');
ok (-f $testfile);

my $info = muse_file_info($testfile);

my $expected = {
                'f_name' => 'another-test',
                'site_id' => 'default',
                'uri' => 'another-test',
                'list_title' => 'Test',
                'parsed_categories' => [
                                        {
                                         'site_id' => 'default',
                                         'name' => "\x{e8}cole",
                                         'type' => 'topic',
                                         'uri' => 'ecole'
                                        },
                                        {
                                         'site_id' => 'default',
                                         'name' => "\x{c9}mile",
                                         'type' => 'author',
                                         'uri' => 'emile'
                                        },
                                       ],
                'f_suffix' => '.muse',
                'title' => 'Test',
               };


foreach my $k (qw/f_timestamp f_path f_archive_rel_path f_full_path_name/) {
    my $del = delete $info->{$k};
    ok $del, "Found $k $del";
}

is_deeply $info, $expected, "Info returned correctly";
