class Contact < MailForm::Base
	attribute :name
	attribute :email
	attribute :phone
	attribute :listing_id
	attribute :message
	attribute :nickname, :captcha => true

	def headers
		{
			:subject => 'DIP Contact Form Message',
			:to => 'smukler.mark@gmail.com <smukler.mark@gmail.com>',
			:from => %("#{name}" <#{email}>),
			:reply_to => %("#{name}" <#{email}>)
		}
	end
end 