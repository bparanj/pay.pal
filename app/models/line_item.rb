class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
    
  def full_price
    unit_price * quantity
  end
  
end
