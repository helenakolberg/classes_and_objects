class SportsTeam

    attr_accessor :team_name, :players, :coach

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = []
        @coach = coach
    end

    def team_name
        return @team_name
    end

    def players
        return @players
    end

    def coach
        return @coach
    end


    # def set_coach(coach)
    #     @coach = coach
    # end


end