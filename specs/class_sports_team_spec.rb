require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < Minitest::Test

    def test_team_name()
        team = SportsTeam.new("Cubs", ["Smith", "Jones", "MacDonald"], "Duncan")
        assert_equal("Cubs", team.team_name())
    end

    def test_players()
        team = SportsTeam.new("Foxes", ["Wilson", "Clark", "Brown"], "Taylor")
        assert_equal(["Wilson", "Clark", "Brown"], team.players())
    end

    def test_coach()
        team = SportsTeam.new("Foxes", ["Wilson", "Clark", "Brown"], "Taylor")
        assert_equal("Taylor", team.coach())
    end

    def test_set_coach()
        team = SportsTeam.new("Cubs", ["Smith", "Jones", "MacDonald"], "Duncan")
        team.set_coach("White")
        assert_equal("White", team.coach())
    end

    def test_add_players()
        team = SportsTeam.new("Bears", ["Roberts", "Evans", "Green"], "Thompson")
        new_member = team.add_player("Walker")
        assert_equal(["Roberts", "Evans", "Green", "Walker"], new_member)
    end

end