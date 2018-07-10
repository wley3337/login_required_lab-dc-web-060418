class SessionsController< ApplicationController

def new

end


def create

  if params[:name]!= nil && params[:name] != ""
    session[:name] = params[:name]
    redirect_to "/show"
  else
    redirect_to "/"
  end
end

def destroy
  if current_user != nil && current_user != ''
    session.clear
    redirect_to new_session_path
  else
    redirect_to new_session_path
  end
end




end
