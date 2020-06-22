class SportsTeam

    attr_accessor :team_name, :players, :coach

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
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

    def add_player(name)
        @players << name
    end


    def set_coach(coach)
        @coach = coach
    end

    def check_player(name)
        for player in @players
            return player if player == name
        end
        return nil
    end




end