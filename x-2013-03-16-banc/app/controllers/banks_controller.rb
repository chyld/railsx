class BanksController < ApplicationController
  def index
    @banks = Bank.order(:name)
  end

  def new
    @bank = Bank.new
  end

  def create
    Bank.create(params[:bank])
    @banks = Bank.order(:name)
  end
end
