class BocaApartment::Scraper
  attr_accessor :name, :bed, :bath, :sqaure_ft, :price

  def self.list
    self.scrape_floorplans
  end

  def self.scrape_floorplans
    floorplans = []
    floorplans << self.scrape
  end

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.miznercourtapts.com/home.aspx"))

    floorplan = self.new
    floorplan.name =
    floorplan.bed =
    floorplan.bath =
    floorplan.sqaure_ft =
    floorplan.price =

    floorplan
  end

end
