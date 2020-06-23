class SportsTeam

    attr_accessor :team_name, :players, :coach

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0

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

    def points
        return @points
    end

    def add_player(name)
        @players << name
    end


    # def set_coach(coach)
    #     @coach = coach
    # end

    def check_player(name)
        for player in @players
            return true if player == name
        end
        return false
    end

    def update_game_score(result)
        @points += 100 if result == "won"
    end


end