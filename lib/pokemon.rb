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
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL
    db.execute(sql, self.name, self.type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
