class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(input_name, input_team, input_coach)
    @team_name = input_name
    @players = input_team
    @coach = input_coach
    @points = 0
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_team_name(new_name)
  #   @team_name = new_name
  # end
  #
  # def set_players(new_players)
  #   @players = new_players
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_search(player)
    for person in @players
      if person == player
        return true
      else
        return false
      end
    end
  end

  def win_or_lose(result)
    if result == "win"
      @points += 1
    end
  end

end
