class BocaApartment::CLI
  attr_accessor :name, :bed, :bath, :sqaure_ft, :price

  def call
    list_floorplans
    menu
  end

  def list_floorplans
    @floorplans = BocaApartments::CLI.list
    @floorplans.each.with.index(1) do |floorplan, i|
      puts "#{i}. #{floorplan.name} - #{floorplan.bed} - #{floorplan.bath} - #{floorplan.sqaure_ft} - #{floorplan.price}."
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts " Enter the number of the apartment you want more more inforation about or type exit to end search"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @floorplans[input.to_i-1]
      elsif input == "list"
        list_floorplans
      else
        puts "That number isnt an options, type list or exit."
      end
    end
  end

  def goodbye
    puts "Come back again for more availability!!"
  end
end
