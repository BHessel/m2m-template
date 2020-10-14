require_relative '../config/environment.rb'


channel1 = Channels.new(15, "NBC")
channel2 = Channels.new(12, "Fox")

game1 = Games.new("Ravens", "Eagles", "Baltimore, MD")
game2 = Games.new("Giants", "Cowboys", "Dallas, TX")

morningschedule = TVschedule.new("11/17", "1pm", game1, channel1)
afternoon = TVschedule.new("11/17", "4pm", game2, channel1)

game1.find_channel_for_game
channel1.show_games_on_channel
puts Games.total_games
puts Games.away_teams
puts Channels.game_times

#binding.pry

0

# what channels each game is on?
# what games are on each channel?