class ElephantPoloTeam

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points=0)

    @name = name
    @players = players
    @coach = coach
    @points = points

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

  def result(res)
    if res == "w"
      @points += 10
    elsif res == "d"
      @points += 5
    else
      0
    end
  end


end
