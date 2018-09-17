require('minitest/autorun')
require('minitest/rg')
require_relative('../elephant_polo.rb')

class TestElephantPoloTeam < MiniTest::Test

  def test_return_team_name
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    assert_equal("Scotland", team.name)
  end

  def test_return_players_array
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    assert_equal(["Duke of Argyll", "Iain Floyd", "Graham Stein" ], team.players )
  end

  def test_return_coach
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    assert_equal("Jim Long", team.coach )
  end


  def test_change_coach
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    team.change_coach("Bill Withers")
    assert_equal("Bill Withers", team.coach)
  end

  def test_add_player
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    team.add_player("Larry")
    assert_equal(4, team.players.count)
  end

  def test_check_for_player__true
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    assert_equal(true,team.check_for_player("Graham Stein"))
  end

  def test_check_for_player__false
    team = ElephantPoloTeam.new("Scotland",["Duke of Argyll", "Iain Floyd", "Graham Stein" ], "Jim Long")
    assert_equal(false,team.check_for_player("Ruby"))
  end





end
