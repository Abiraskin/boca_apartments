require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./boca_apartments/version"
require_relative "./boca_apartments/scraper"
require_relative "./boca_apartments/apartments"
require_relative "./boca_apartments/cli"


module BocaApartments
  class Error < StandardError; end
  # Your code goes here...
end
