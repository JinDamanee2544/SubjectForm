class MainController < ApplicationController
  def test
  end
  def grade 
    @subject1=params[:subject1]
    @subject2=params[:subject2]
    @subject3=params[:subject3]
    
    @score1=params[:score1].to_i
    @score2=params[:score2].to_i
    @score3=params[:score3].to_i

    @sum = @score1 + @score2 + @score3

    # max among score
    @max = [@score1, @score2, @score3].max

    # sum of score
    @maxId = [@score1,@score2,@score3].index(@max)
    @maxSubject = [@subject1, @subject2, @subject3][@maxId]
  end
end
