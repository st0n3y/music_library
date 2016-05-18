require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/album.rb'
require_relative './models/artist.rb'
require_relative 'album_controller.rb'
require_relative 'artist_controller.rb'