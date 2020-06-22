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

    def test_set_team_name()
        team = SportsTeam.new("Bears", ["Roberts", "Evans", "Green"], "Thompson")
        team.team_name = "Tigers"
        assert_equal("Tigers", team.team_name())
    end

    def test_set_players()
        team = SportsTeam.new("Bears", ["Roberts", "Evans", "Green"], "Thompson")
        team.players = ["Wood", "Potter", "Davies"]
        assert_equal(["Wood", "Potter", "Davies"], team.players())
    end

    def test_add_players()
        team = SportsTeam.new("Bears", ["Roberts", "Evans", "Green"], "Thompson")
        new_member = team.add_player("Walker")
        assert_equal(["Roberts", "Evans", "Green", "Walker"], new_member)
    end

    def test_check_player_found()
        team = team = SportsTeam.new("Cubs", ["Smith", "Jones", "MacDonald"], "Duncan")
        check_player = team.check_player("Smith")
        assert_equal(true, check_player)
    end

    def test_check_player_not_found()
        team = SportsTeam.new("Cubs", ["Smith", "Jones", "MacDonald"], "Duncan")
        check_player = team.check_player("Black")
        assert_equal(false, check_player)
    end

    def test_team_score_won()
        team = SportsTeam.new("Cubs", ["Smith", "Jones", "MacDonald"], "Duncan")
        game_result = team.update_game_score("won")
        assert_equal(100, team.points())
    end

    def test_team_score_lost()
        team = SportsTeam.new("Bears", ["Roberts", "Evans", "Green"], "Thompson")
        game_result = team.update_game_score("lost")
        assert_equal(0, team.points())
    end


end