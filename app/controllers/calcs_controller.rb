class CalcsController < ApplicationController
  def show
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if params[:calcs] == "addition"
      @result = number1 + number2
    elsif params[:calcs] == "subtraction"
      @result = number1 - number2
    elsif params[:calcs] == "multiplication"
      @result = number1 * number2
    elsif params[:calcs] == "division"
      @result = number1 / number2
    end
  end
end
