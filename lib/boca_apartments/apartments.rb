class BocaApartment::CLI

  def call
    list apartments
    menu
  end

  def list_apartments
    puts "See a list of apartment floorplans"
    @floorplans = BocaApartments::Scraper
  end

  def menu
    input = nil
    while input != "exit"
      puts " Enter the number of the apartment you want more more inforation about or type exit to end search"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more infor on apartment 1.."
      when "2"
        puts "more infor on apartment 2.."
      when "list"
        list_apartments
      else
        puts "That number isnt an options, type list or exit."
      end
    end
  end

  def goodbye
    puts "Come back again for more availability!!"
  end
end
