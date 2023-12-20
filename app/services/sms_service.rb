class SmsService
  def send_sms(phone_number, body)
    client = Twilio::REST::Client.new(
      Rails.application.config.x.twilio.account_sid,
      Rails.application.config.x.twilio.auth_token
    )

    message = client.messages.create(
      body:,
      from: Rails.application.config.x.twilio.phone_number,
      to: phone_number
    )

    Rails.logger.info("SMS sent: #{message.sid}")
  end
end
