class ExpendsController < ApplicationController
  def new
    @expend = Expend.new
  end

  def create
    Expend.create(expend_params)
  end

  private
  def expend_params
    params.require(:expend).permit(:subject, :memo, :money)
  end
end
