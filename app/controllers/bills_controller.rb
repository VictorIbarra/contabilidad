class BillsController < ApplicationController
  before_action :authenticate_user!
  def index
    @bills = Bill.all
  end

  def show
    @bills =Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
    @clients = Client.all
    @users = User.all

  end

  def create
   @bill = Bill.new(bill_params)

    if @bill.save
      redirect_to @bill
    else
      render :bill
    end
 end

  def destroy
   @bill = bill.find(params[:id])
    @bill.destroy
    redirect_to @bill
  end

 private
  def bill_params
    params.require(:bill).permit(:user_id,:client_id,:date,:invoice_number,:address,:city,:phone,:company_name,:rfc,:postalcode,:quantity,:description,:price,:mail,:total,:subtotal,:observations,:taxas,:date_of_issue,:date_expiration,:billing_period)
    end
end
