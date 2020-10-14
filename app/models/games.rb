class Games 

    attr_reader :home_team, :away_team, :location, :duration, :score

    @@all_games = []

    def initialize(home_team, away_team, location)
        @home_team = home_team
        @away_team = away_team
        @location = location
        @duration = 60.00 #shown in minutes, not including timeouts, etc.
        @score = {} #hash, with home team (key) => score (value), same for away
        @@all_games << self 
    end    

    def self.all_games
        @@all_games
    end

    #what channel is each game on?
    def find_channel_for_game
        TVschedule.full_schedule.select do |game_list|
            game_list.game == self 
            game_list.channel
        end
    end
    
    #how many games are on today?
    def self.total_games
        @@all_games.count
    end
    
    #return array of all away teams
    def self.away_teams
        self.all_games.map do |game_list|
            game_list.away_team
            #binding.pry
        end
    end

    



end

# game1 = Games.new("Ravens", "Eagles", "Baltimore, MD")
# game2 = Games.new("Giants", "Cowboys", "Dallas, TX")

# puts "home team is a string"
# puts game1.home_team.is_a? String
# puts game2.home_team.is_a? String

# puts "away team is a string"
# puts game1.away_team.is_a? String
# puts game2.away_team.is_a? String

# puts "location is a string"
# puts game1.location.is_a? String

# puts "score is an Hash"
# puts game1.score.is_a? Hash

# puts "duration is a float"
# puts game1.duration.is_a? Float