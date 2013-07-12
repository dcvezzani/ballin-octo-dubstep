class Movie
  include MongoMapper::Document
  key :title,         String
  key :actor_ids,     Array
  many :actors, :in => :actor_ids
  many :votes
  timestamps!
end
