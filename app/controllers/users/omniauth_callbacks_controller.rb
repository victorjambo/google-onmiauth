class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      if @user.project.nil?
        sign_in @user
        redirect_to users_path
      else
        sign_in_and_redirect @user, event: :authentication
      end
      
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra)
      redirect_to root_path, alert: @user.errors.full_messages.join("\n")
    end
  end
end