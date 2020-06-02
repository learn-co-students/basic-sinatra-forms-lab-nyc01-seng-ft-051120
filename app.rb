require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end


    post '/team' do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]
        erb :team
      end

    # Wrong code
    # post '/newteam' do
    #     : #{params[:name]}"
    #     "Coach: #{params[:coach]}"
    #     "Point Guard: #{params[:pg]}"
    #     "Shooting Guard: #{params[:sg]}"
    #     "Power Forward: #{params[:pf]}"
    #     "Small Forward: #{params[:sf]}"
    #     "Center: #{params[:c]}"
    #   end


    #   Team name ('name') Coach ('coach') Point Guard ('pg') Shooting Guard ('sg') 
    #   Power Forward ('pf') Small Forward ('sf') Center ('c')
end

