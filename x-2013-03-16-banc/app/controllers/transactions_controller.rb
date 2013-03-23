class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    bank = Bank.find(params[:bank_id])
    bank.transactions << Transaction.create(params[:transaction])
    @deposits = bank.transactions.where('amount >= 0').order(:created_at)
    @withdrawals = bank.transactions.where('amount < 0').order(:created_at)
  end
end
