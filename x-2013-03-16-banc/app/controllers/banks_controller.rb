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

  def show
    bank = Bank.find(params[:id])
    @deposits = bank.transactions.where('amount >= 0').order(:created_at)
    @withdrawals = bank.transactions.where('amount < 0').order(:created_at)
  end
end
