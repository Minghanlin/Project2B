class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)


    # if user is found
  if user && user.authenticate( params[:session][:password])
    flash[:success] = 'Successful login yay!'
    log_in(user)
    # authenticate it and redirect to user profile page => user/:id
    redirect_to user

  else
    # show error page
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
  end
end

end
