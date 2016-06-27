DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite://#{Dir.pwd}/sunconcept.sqlite")

class Story
  include DataMapper::Resource

  property :id, Serial, :key => true
  property :created_at, DateTime
  property :author, String
  property :headline, String
  property :body, Text
  property :images, Text

end

DataMapper.finalize
DataMapper.auto_upgrade!
