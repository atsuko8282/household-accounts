class SummariesController < ApplicationController
  def index
    # @expends = Expend.all
    # @incomes = Income.all

    @expends_month = Expend.where("created_at LIKE(?)", "2020-08%")
    @incomes_month = Income.where("created_at LIKE(?)", "2020-08%")

    @total_expends = 0
    @expends_month.each do |e|
      @total_expends += e.money
    end
    
    @total_incomes = 0
    @incomes_month.each do |i|
      @total_incomes += i.money
    end

    @balance = @total_incomes - @total_expends
  end

end
