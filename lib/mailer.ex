defmodule Starbeast.Mailer do

	@from "postmaster@sandbox9ddf700296ad4bf0a817cedfe2a09d99.mailgun.org"
	@to "info@starbeast.com"

	use Mailgun.Client, 
		domain: Application.get_env(:starbeast, :mailgun_domain),
		key: Application.get_env(:starbeast, :mailgun_key)

	def send_contact_email(name, email, message) do
		send_email to: @to,
			from: @from,
			subject: "Contact request from #{name}",
			html: Phoenix.View.render_to_string(Starbeast.EmailView, "email.html", name: name, email: email, message: message)
	end

	def send_application_email(name, email, message) do
		send_email to: @to,
			from: @from,
			subject: "Job application from #{name}",
			html: Phoenix.View.render_to_string(Starbeast.EmailView, "email.html", name: name, email: email, message: message)
	end
end