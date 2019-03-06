class CalcsController < ApplicationController
  def show
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    operator = params[:operator]

    @result = case operator
              when "addition"
                num1 + num2.to_f
              when "subtraction" 
                num1 - num2.to_f
              when "multiplication" 
                num1 * num2.to_f
              when "division"
                num1 / num2.to_f
              else
                @result = "計算できません"
    end
  end
end

