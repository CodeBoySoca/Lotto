require 'sinatra'


class Lotto < Sinatra::Base
    set :environment, ENV['RACK_ENV']

    configure do
        Dir[File.join(File.dirname(__FILE__), 'models', '*.rb')].each{ |model| require model }
    end

    require './models/projects'

    get '/' do
      haml :index, :escape_html => false
    end

    get '/project' do
      haml :project, :escape_html => false
    end

    get '/history' do
      haml :history, :escape_html => false
    end
end