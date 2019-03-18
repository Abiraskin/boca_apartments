class BocaApartment::CLI


  def call
    list_floorplans
    menu
    goodbye
  end

  def list_floorplans
    puts "See below a list of apartment floorplans and styles, listed by name:"
    @floorplans = BocaApartments::CLI.list
    @floorplans.each.with.index(1) do |floorplan, i|
      puts "#{i}. #{floorplan.name} - #{floorplan.bed} - #{floorplan.bath} - #{floorplan.sqaure_ft} - #{floorplan.price}."
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts " Enter the number of the apartment you want more more inforation about or type list to display floorplan options or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        selcted_floorplan = @flooorplans[input.to_i-1]
        puts "#{selcted_floorplan.name} - #{selcted_floorplan.bed} - #{selcted_floorplan.bath} - #{selcted_floorplan.sqaure_ft} - #{selcted_floorplan.price}"
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
