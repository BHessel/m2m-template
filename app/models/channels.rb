class Channels 

    attr_reader :number, :title

    @@all_channels = []

    def initialize(number, title)
        @number = number
        @title = title
        @@all_channels << self
    end

    def self.all_channels
        @@all_channels
    end

    def show_games_on_channel
        TVschedule.full_schedule.select do |game_list|
            game_list.channel == self
            game_list.game
        end
    end


    def self.game_times #what is this channel's game times?
        TVschedule.full_schedule.map do |game_list|
            game_list.channel == self
            game_list.time
        #binding.pry    
        end
    end




end



    # channel15 = Channels.new(15, "ABC")
    # puts "Shows number as integer"
    # puts channel15.number.is_a? Integer
    # puts "Shows channel as string"
    # puts channel15.title.is_a? String

