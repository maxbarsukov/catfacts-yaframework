# frozen_string_literal: true

require 'yaframework'
require 'mongoid'

app = Yaframework::Application

Dir[File.join(__dir__, 'models', '*.rb')].sort.each do |file|
  require file
end

app.configure do
  Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml'))
end

app.get '/' do
  render 'index'
end

app.get '/random_cat_fact/:num' do
  @number = params[:num].to_i || 1
  @number = 1 if @number < 1

  @alert = "That's all folks!" if @number > CatFact.count

  @facts = CatFact.all.pluck(:fact).sample(@number)
  render 'facts'
end
