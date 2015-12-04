class Contact < MailForm::Base
	attribute :name
	attribute :email
	attribute :phone
	attribute :message
	attribute :nickname, :captcha => true

	def headers
		{
			:subject => 'DIP Contact Form Message',
			:to => 'mark@thedipapp.com <mark@thedipapp.com>',
			:from => %("#{name}" <#{email}>),
			:reply_to => %("#{name}" <#{email}>)
		}
	end
end 