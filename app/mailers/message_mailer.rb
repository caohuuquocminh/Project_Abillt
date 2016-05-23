class MessageMailer < ApplicationMailer
	default :to => "nguyenbichtramvt243@gmail.com"
  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end
