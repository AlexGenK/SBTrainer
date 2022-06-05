class AccountsController < ApplicationController
  def show
    if current_user.account == nil 
      @account = current_user.create_account()
      @account.save
    else
      @account = current_user.account
    end
    @bets = current_user.bets.order(created_at: 'desc')
  end

  def update
    @account = current_user.account
    @account.sum += params[:replenish].to_i
    @account.save
    redirect_to user_account_path(current_user, @account) 
  end
end
