class InviteMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invite_mailer.invite_requested.subject
  #
  def invite_requested(invite)
    @invite = invite

    mail :to => "to@example.org"
  end
end
