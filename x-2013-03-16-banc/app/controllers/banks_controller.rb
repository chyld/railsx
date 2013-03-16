class BanksController < ApplicationController
  def index
  end

  def new
    @bank = Bank.new
  end
end
