defmodule Starbeast.MailerController do
	use Starbeast.Web, :controller

	def contact(conn, %{"contact_form" => %{"email" => email, "name" => name, "message" => message}}) do
		Starbeast.Mailer.send_contact_email(name, email, message)
		conn = put_flash(conn, :info, "Thanks for your message! We'll get in touch soon.")
		redirect conn, to: "/"
	end

	def apply(conn, %{"application_form" => %{"email" => email, "name" => name, "message" => message}}) do
		Starbeast.Mailer.send_application_email(name, email, message)
		conn = put_flash(conn, :info, "Thanks for your message! We'll get in touch soon.")
		redirect conn, to: "/"
	end
end