class BocaApartment::Apartments

  attr_accessor :name, :bed, :bath, :sqaure_ft, :price

  @@all = []

  def self.new_from_index_page(a)
    self.new(
    a.css...text, a.css...text, a,css...
    )
  end

  def initalize(name=nil, bed=nil, bath=nil, sqaure_ft=nil, price=nil)
    @name = name
    @bed = bed
    @bath = bath
    @sqaure_ft = sqaure_ft
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end



    
