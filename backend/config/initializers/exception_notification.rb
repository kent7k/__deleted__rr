Rails.application.config.middleware.use ExceptionNotification::Rack,
  :email => {
    :email_prefix         => "[PREFIX] ",
    :sender_address       => %{"notifier" <notifier@example.com>},
    :exception_recipients => %w{exceptions@example.com}
  }