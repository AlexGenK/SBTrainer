class AccountsController < ApplicationController
  def show
    if current_user.account == nil 
      @account = current_user.create_account()
      @account.save
    else
      @account = current_user.account
    end
  end
end
