require "spec_helper"

describe UserMailer do
  describe 'welcome email' do
  	let(:user) { FactoryGirl.create(:user) }
  	let(:mail) { UserMailer.welcome_email(user) }

  	it 'renders the subject' do
  		expect(mail.subject).to eql('Welcome to Cultivate.land!')
  	end

  	it 'renders the receiver email' do
  		expect(mail.to).to eql([user.email])
  	end

  	it 'renders the sender email' do
  		expect(mail.from).to eql(['welcome@cultivate.land'])
  	end

  	it 'assigns @url' do
  		expect(mail.body.encoded).to match("http://cultivate.land/users/sign_in")
  	end
  end
end
