class PaymentNotification < ApplicationRecord
  belongs_to :cart
  serialize :params
  
  
  
end
