get '/' do # Redirects straight to /home
    redirect '/home'
end

get '/our-team' do # Shows landing page
    @players = Player.all
    erb :our_team
end

get '/home' do # Shows landing page
    erb :landing_page
end