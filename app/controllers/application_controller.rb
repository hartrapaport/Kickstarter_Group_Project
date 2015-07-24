require_relative "../../config/environment"
require_relative "../models/user.rb"
require_relative "../models/project.rb"
require 'sinatra'
class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public, "public"
  
  
  get "/" do
      erb :index
  end
  post '/project' do
    @project = Project.new({:project_name => params[:project_name], :genre => params[:genre], :rewards => params[:rewards], :goal => params[:goal], :days => params[:days], :owner => params[:owner]})
    @project.save
    erb :project
  end
  post '/project_sign_up' do
    erb :project_sign_up
  end
  
  post '/user' do
     @user = User.new({:username => params[:username]})
     @user.save
     erb :user
  end
  
  post '/user_sign_up' do
    erb :user_sign_up
  end
  
end
