class AdminMailer < ActionMailer::Base
  default from: "from@example.com"
  #
  def order_notification(order)
  	@order=order
  	mail(to: "dawid.marszalek@gmx.com", subject: "notification")
  end
end
