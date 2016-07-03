class InquiryMailer < ActionMailer::Base
  default from: ENV['MAIL_USR']   # 送信元アドレス
  default to: ENV['MAIL_USR']     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'We have received an inquiry')
  end

end
