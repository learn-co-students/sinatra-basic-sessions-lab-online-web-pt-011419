require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "secret_sesssion"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @session = session
        session[:item] = params[:item]
       

        erb :display
    end
end