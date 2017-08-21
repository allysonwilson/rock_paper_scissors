require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

require('json')

get '/winning_hand__1/scissors/paper' do
  play = RockPaperScissors.new(params[:scissors], params[:paper])
  result = play.winning_hand__1
end

get '/winning_hand__2' do
  return ""
end

get '/paper' do
  return ""
end
