class BillsController < ApplicationController
  before_filter :must_be_logged_in

  def index
    @bills = @auth.bills.order(:day)
  end
  def new
    @bill = Bill.new
  end
  def create
    bill = Bill.create(params[:bill])
    @auth.bills << bill
    redirect_to(bills_path)
  end

  private
  def must_be_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end
