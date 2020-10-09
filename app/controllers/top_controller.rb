class TopController < ApplicationController
    
    def main
        if session[:login_uid] != nil
            session.delete(:login_uid)
            render :main
        else
            render :login
        end
    end
    
    def login
        if  user = User.find_by(uid: params[:uid], pass: params[:pass])
          session[:login_uid] = params[:uid]
          redirect_to root_path
        else
          render :error
        end
    end
    
end
