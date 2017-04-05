class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :busy, :stressed, :depressed, :anxious, :panicked, :lethargic, :worried, :indecisive, :other_feels, :opt_in)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :busy, :stressed, :depressed, :anxious, :panicked, :lethargic, :worried, :indecisive, :other_feels, :opt_in)
  end
end