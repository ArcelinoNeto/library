# frozen_string_literal: true

# This class inherits from ActionMailer::Base and sets the default from address and layout for all
# mailers in the application.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
