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
                "#{num1 / num2}..#{num1 % num2}"
              rescue ZeroDivisionError => e 
                e
              end
            end  
  end
end