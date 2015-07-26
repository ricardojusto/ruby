class NintendoLibrary


  def initialize(games)
 new_list= games.select do |game|
      game.system == "Nintendo"
    end

    @games = new_list
  end
  
  def games
    @games
  end
  
  def games=(games)
    new_list= games.select do |game|
      game.system == "Nintendo"
    end

    @games = new_list
  end
end


class Game
  attr_accessor :system
 
  def initialize(options)
    self.system = options[:system]
  end
end

games = [
  Game.new({ system: "Nintendo" }),
  Game.new({ system: "SEGA" })
]

some_library = NintendoLibrary.new(games)

p some_library.games