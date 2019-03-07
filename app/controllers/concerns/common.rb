module Common
  extend ActiveSupport::Concern
  
  def calculation
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
            begin 
              if num1 % num2 == 0
              "#{num1 / num2}"
              else
              "#{num1 / num2}..#{num1 % num2}"
              end
            rescue ZeroDivisionError 
              "divided by 0"
            end
          else
            "URLが正しくありません"
          end
  end
end