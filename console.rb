require_relative( './models/album' )
require_relative( './models/artist' )

require( 'pry-byebug' )

artist1 = Artist.new( {'name' => 'Muse'} ).save();
album1 = Album.new( {'name' => 'Origin of Symmetry', 'artist_id' => artist1.id} ).save();
album2 = Album.new( {'name' => 'Drones', 'artist_id' => artist1.id} ).save();

artist2 = Artist.new( {'name' => 'The Go Team'} ).save();
album3 = Album.new( {'name' => 'Thunder, Lightning, Strike', 'artist_id' => artist2.id} ).save();
album4 = Album.new( {'name' => 'The Scene Between', 'artist_id' => artist2.id} ).save();

artist3 = Artist.new( {'name' => 'De La Soul'} ).save();
album5 = Album.new( {'name' => '3 Feet High and Rising', 'artist_id' => artist3.id} ).save();
album6 = Album.new( {'name' => 'De La Soul is Dead', 'artist_id' => artist3.id} ).save();

artist4 = Artist.new( {'name' => 'Fingathing'} ).save();
album7 = Album.new( {'name' => 'Superhero Music', 'artist_id' => artist4.id} ).save();
album8 = Album.new( {'name' => 'And the Big Red Nebula Band', 'artist_id' => artist4.id} ).save();

artist5 = Artist.new( {'name' => 'Radiohead'} ).save();
album9 = Album.new( {'name' => 'In Rainbows', 'artist_id' => artist5.id} ).save();
album10 = Album.new( {'name' => 'A Moon Shaped Pool', 'artist_id' => artist5.id} ).save();