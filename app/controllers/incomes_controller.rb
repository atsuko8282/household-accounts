class IncomesController < ApplicationController
  def new
    @income = Income.new
  end

  def create
    Income.create(income_params)
  end

  private
  def income_params
    params.require(:income).permit(:subject, :memo, :money)
  end
end
