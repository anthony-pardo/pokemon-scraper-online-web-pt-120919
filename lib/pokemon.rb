class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db 
  
  @@all = []
  
  def initialize(id:nil, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type 
    @db = db 
    @@all << self
  end
end
