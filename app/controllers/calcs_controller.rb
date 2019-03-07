class CalcsController < ApplicationController
  def show
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    operator = params[:operator]

    @result = case operator
              when "addition"
                num1 + num2
              when "subtraction" 
                num1 - num2
              when "multiplication" 
                num1 * num2
              when "division"
                num1 / num2
              else
                "計算できません"
              end
  end
end

