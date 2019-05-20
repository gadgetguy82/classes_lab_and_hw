require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test

  def setup
    @player1 = {
      name: 'John'
    }

    @player2 = {
      name: 'Michael'
    }

    @player3 = {
      name: 'Stuart'
    }

    @player4 = {
      name: 'Harry'
    }

    @players = [@player1, @player2, @player3]
  end

  def test_new_team
    team = Team.new('Spades', @players, 'Coach Smith')
    assert_equal('Spades', team.team_name)
    assert_equal(@players, team.players)
    assert_equal('Coach Smith', team.coach)
  end

  def test_set_new_coach
    team = Team.new('Diamonds', @players, 'Coach Johnson')
    team.coach = 'Coach Ruby'
    assert_equal('Coach Ruby', team.coach)
  end

  def test_add_player
    team = Team.new('Clubs', @players, 'Coach Gibson')
    team.add_player(@player4)
    assert_equal(4, team.players.length)
  end

  def test_check_if_player_in_team
    team = Team.new('Hearts', @players, 'Coach Hills')
    assert_equal(true, team.check_player_in_team('Michael'))
    assert_equal(false, team.check_player_in_team('Robert'))
  end

  def test_points_increase
    team = Team.new('Spades', @players, 'Coach Smith')
    team.update_points('win')
    assert_equal(1, team.points)
  end
end
