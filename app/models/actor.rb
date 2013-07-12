class Actor
  include MongoMapper::Document
  key :name,  String
  belongs_to :movie
  timestamps!
end
