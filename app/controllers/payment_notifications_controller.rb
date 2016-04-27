class PaymentNotificationsController < ApplicationController
  protect_from_forgery except: [:create]
  
  def create
    pn = PaymentNotification.new(params: params, 
                                 cart_id: params[:invoice], 
                                 status: params[:payment_status], 
                                 transaction_id: params[:txn_id])
                                 
                                 
    if params[:payment_status] == "Completed"
      cart = Cart.find params[:invoice]
      cart.update_attribute(:checked_out_at, Time.now)
    end
                                 
    pn.save!
    
    head :no_content
  end
  
end