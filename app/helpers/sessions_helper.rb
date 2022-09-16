module SessionsHelper
    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end
    end
    def login(user)
        session[:user_id] =user.id
    end
end
