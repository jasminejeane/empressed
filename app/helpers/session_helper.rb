module SessionHelper

  def login(user)
    if user.class.name == 'Stylist'
      session[:user_id] = user.id
      current_user = Stylist.find_by(id:user.id)
    else
      session[:user_id] = user.id
      current_user = Client.find_by(id:user.id)
    end
  end

  def current_user
    binding.pry
    @current_user ||= Client.find_by(id:session[:user_id]) || Stylist.find_by(session[:user_id])
  end

  def logged_in?
    if current_user == nil
      redirect_to "/sign_in"
    end
  end

  def logout
    binding.pry
    @current_user = session[:user_id] = nil
    binding.pry
  end

end