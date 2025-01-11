use LWP::UserAgent;

my $url = 'https://api.example.com/data';
my $ua = LWP::UserAgent->new;

my $req = HTTP::Request->new(GET => $url);
$req->header('Authorization' => 'Bearer YOUR_TOKEN');
$req->header('Content-Type' => 'application/json');

my $response = $ua->request($req);
print $response->decoded_content if $response->is_success;
