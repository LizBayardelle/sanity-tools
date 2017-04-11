class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :less_busy, :less_stressed, :happier, :more_relaxed, :less_panicked, :more_motivated, :less_worried, :more_organized, :other, :opt_in, :admin, :subscriber)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :less_busy, :less_stressed, :happier, :more_relaxed, :less_panicked, :more_motivated, :less_worried, :more_organized, :other, :opt_in, :admin, :subscriber)
  end
end