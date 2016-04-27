module CartsHelper
  def paypal_url(return_url, cart, notify_url)
    values = {
      :business => 'bparanj-facilitator@rubyplus.com',
      :cmd => '_cart',
      :upload => 1,
      :return => return_url,
      :invoice => cart.id,
      :notify_url => notify_url
    }
    cart.line_items.each_with_index do |item, index|
      values.merge!({
        "amount_#{index+1}" => item.unit_price,
        "item_name_#{index+1}" => item.product.name,
        "item_number_#{index+1}" => item.id,
        "quantity_#{index+1}" => item.quantity
      })
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end
  
end
