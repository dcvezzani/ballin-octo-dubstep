class Vote
  include MongoMapper::EmbeddedDocument
  key :user_name,         String
  key :rating,        Integer
  timestamps!
end
