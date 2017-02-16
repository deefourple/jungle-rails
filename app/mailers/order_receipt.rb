class OrderReceipt < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_complete(order)
    @order = order
    @url = 'http://localhost:3000/login'
    mail(to: @order.email, subject: order.id)
  end
end
