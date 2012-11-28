class NotificationMailer < ActionMailer::Base
  #default from: 'srawlins@email.arizona.edu'
  default from: 'james.gedarovich@uconn.edu'

  def environments_notification
    @environments = Environment.all
    @envestigations = @environments.map { |env| env.envestigate_build_number }
    #mail(:to => 'srawlins@email.arizona.edu', :subject => 'Environment Status')
    mail(:to => 'james.gedarovich@uconn.edu', :subject => 'Environment Status')
  end
end
