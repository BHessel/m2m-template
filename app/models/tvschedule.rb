require_relative './channels.rb'
require_relative './games.rb'

class TVschedule
    
    @@full_schedule = []

    attr_reader :date, :time, :game, :channel

    def initialize(date, time, game, channel)
        @date = date
        @time = time
        @channel = channel
        @game = game
        @@full_schedule << self
    end
     
    def self.full_schedule
        @@full_schedule
    end


end

