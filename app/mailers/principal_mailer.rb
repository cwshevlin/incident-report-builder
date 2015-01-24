class PrincipalMailer < ActionMailer::Base
  default from: "action-needed@stuccostuc.co"

  def action_needed(principal, incident)
  	@principal = principal 
  	@incident = incident
  	mail(to: @principal.email, subject: 'Your action is required')
  end

end