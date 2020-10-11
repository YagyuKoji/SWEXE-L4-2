class TopController < ApplicationController
    
    def main
        if session[:login_uid] != nil
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
    
    def delete
        session.delete(:login_uid)
        render :login
        logger.debug("ログアウトされました")
    end
    
end
