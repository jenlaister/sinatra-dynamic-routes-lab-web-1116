require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    reversedname = @name.reverse
    "#{reversedname}"
  end


  get '/square/:number' do
    @number = params[:number]
    squarednum = (@number.to_i ** 2).to_s
    "#{squarednum}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @number.times do
    phrase += "#{@phrase}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = (params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + ".")
    "#{sentence}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    operated = @number1.send{@operation},@number2
    "#{operated}"
  end

end
