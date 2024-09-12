get '/' do # Redirects straight to /home
    redirect '/home'
end

get '/home' do # Shows landing page
    @teams = Team.all.sort_by { |team| -team[:points] }
    erb :landing_page
end

get '/our-team' do # Shows landing page
    @players = Player.all
    erb :our_team
end

get '/player-statistics' do # Shows landing page
    @teams = Team.all.sort_by { |team| -team[:points] }
    erb :player_statistics
end

get '/as-it-stands-awards' do # Shows landing page
    erb :as_it_stands_awards
end