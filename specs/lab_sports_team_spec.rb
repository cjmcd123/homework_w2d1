require("minitest/autorun")
require("minitest/rg")

require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    assert_equal("G6", team1.team_name)
  end

  def test_players
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    assert_equal(["Craig", "Angelina", "Matt"], team1.players)
  end

  def test_coach
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    assert_equal("John", team1.coach)
  end

  def test_set_team_name
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    # team1.set_team_name("G7")
    team1.team_name = "G7"
    assert_equal("G7", team1.team_name)
  end

  def test_set_players
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    # team1.set_players(["Craig", "Angelina", "Matt", "Bob"])
    team1.players = ["Craig", "Angelina", "Matt", "Bob"]
    assert_equal(["Craig", "Angelina", "Matt", "Bob"], team1.players)
  end

  def test_set_coach
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    # team1.set_coach("George")
    team1.coach = "George"
    assert_equal("George", team1.coach)
  end

  def test_add_player
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    team1.add_player("Bob")
    assert_equal(["Craig", "Angelina", "Matt", "Bob"], team1.players)
  end

  def test_player_search
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    result = team1.player_search("Craig")
    assert_equal(true, result)
  end

  def test_player_search_false
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    result = team1.player_search("Bob")
    assert_equal(false, result)
  end

  def test_win_or_lose
    team1 = SportsTeam.new("G6", ["Craig", "Angelina", "Matt"], "John")
    team1.win_or_lose("win")
    assert_equal(1, team1.points)
  end

end
