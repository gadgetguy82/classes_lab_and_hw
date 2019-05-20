class Team

  attr_reader(:team_name, :players, :points)
  attr_accessor(:coach)

  def initialize(team_name, player_list, coach)
    @team_name = team_name
    @players = player_list
    @coach = coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_player_in_team(name_to_search)
    for player in @players
      if (player[:name] == name_to_search)
        return true
      end
    end
    return false
  end

  def update_points(result)
    if (result == 'win')
      @points += 1
    end
  end
end
