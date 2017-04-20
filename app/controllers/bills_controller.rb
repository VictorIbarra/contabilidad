class BillsController < ApplicationController
  before_action :authenticate_user!, :except => []

  def index
    @bills = Bill.all


  end

  def show
    @bills =Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
    @clients = Client.all
    @product  = Product.where(:active => true)


  end


  def ws_get_total
    puts   params[:product_id]

    render :json => {:succes => 1}, :callback => params[:callback]
  end




  def create
    @bill = Bill.new(bill_params)
    @bill.date_expiration = Date.today
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
    params.require(:bill).permit(:user_id,:client_id,:date,:invoice_number,:address,:city,:rfc,:postalcode,:quantity,:description,:price,:total,:subtotal,:observations,:taxas,:date_of_issue,:date_expiration,:billing_period)
    end
end
