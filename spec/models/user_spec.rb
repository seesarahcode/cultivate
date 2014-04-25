require 'spec_helper'

describe User do
  
	before do
		@user = User.new(name: "Sarah", email: "test@example.com")
	end

	subject (@user)

	it { should respond_to(:name) }
	it { should respond_to(:email) }

end
