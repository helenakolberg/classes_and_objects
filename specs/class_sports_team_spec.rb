require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < Minitest::Test

    def test_team_name()
        team = SportsTeam.new("Cubs", ["Smith", "Jones", "MacDonald"], "Duncan")
        assert_equal("Cubs", team.team_name())
    end


end