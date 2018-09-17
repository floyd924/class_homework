class ElephantPoloTeam

  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)

    @name = name
    @players = players
    @coach = coach

  end

  def change_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_for_player(player)
    @players.each { |player_searched|
      return true if player == player_searched
    }
return false
  end

end
