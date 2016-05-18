require( 'pg' )
require_relative('../db/sql_runner')

class Album

  attr_reader( :id, :name )

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @artist_id = options['artist_id']
  end

  def save()
    sql = "INSERT INTO albums (name, artist_id) VALUES ('#{ @name }', #{ @artist_id }) RETURNING *"
    album = SqlRunner.run( sql ).first
    result = Album.new( album )
    return result
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{ @artist_id }"
    artist = SqlRunner.run( sql )
    result = Artist.new( artist.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM albums"
    albums = SqlRunner.run( sql )
    result = albums.map { |s| Album.new( s ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM albums 
          WHERE id = #{id};"
    outcome = SqlRunner.run( sql )
    result = outcome.map {|a| Album.new(a)}
    return result.first
  end

  def self.delete( id )
    sql = "DELETE FROM albums
          WHERE id = #{id}
          "
    SqlRunner.run( sql )
  end

end