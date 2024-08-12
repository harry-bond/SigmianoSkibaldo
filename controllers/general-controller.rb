get '/' do # Redirects straight to /home
    redirect '/home'
end

get '/home' do # Shows landing page
    erb :landing_page
end