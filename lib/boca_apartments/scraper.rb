require 'pry'

class BocaApartments::Scraper
  attr_accessor :name, :bed, :bath, :sqaure_ft, :price

  def self.list
    self.scrape_floorplans
  end

  def self.scrape_floorplans
    floorplans = []
    floorplans << self.scrape
  end

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.miznercourtapts.com/floor-plans.aspx"))

    doc.css(".floorplan-block").collect do |f|
      floorplan = BocaApartments::Apartment.new
    binding.pry
      floorplan.name = f.attributes["data-floorplan-name"].value
      floorplan.bed =
      floorplan.bath =
      floorplan.sqaure_ft =
      floorplan.price =
      floorplan
    end

  end

end
