use Test::More tests => 9;

BEGIN {
  use Flickr::Testing;
  Flickr::Testing::setup;
  
  use_ok( 'Flickr::Person' );
}


diag("Testing Flickr::Person");

my $person = Flickr::Person->new({api_key => '224c32423d423423d4342a3bbb324234e342f234'});

isa_ok($person, 'Flickr::Person');

diag("Testing method: find");

my $ok = $person->find({username => 'Jane Doe'});
ok ($ok, 'find by username');

is ($person->username, 'Jane Doe', 'username method');
is ($person->id, '12345678@N00', 'id method');
is ($person->real_name, 'Jane Doe', 'realname method');
is ($person->is_pro, 1, 'ispro method');
is ($person->photo_firstdate_posted, '1071510391', 'photo_firstdate_posted method');
is ($person->photo_count, 573, 'photo_count method');

