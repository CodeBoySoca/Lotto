require 'sinatra'


class Lotto < Sinatra::Base
    set :environment, ENV['RACK_ENV']

    configure do
        Dir[File.join(File.dirname(__FILE__), 'models', '*.rb')].each{ |model| require model }
    end

    require './models/projects'

    get '/' do
      erb :index, :escape_html => false
    end

    get '/project' do
      erb :project, :escape_html => false
    end

    post '/project' do
        
       erb :project, :escape_html => false
    end

    get '/get/project' do
      erb :project, :escape_html => false
    end

    get '/history' do
      erb :history, :escape_html => false
    end
end