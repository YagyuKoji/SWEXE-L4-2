class TopController < ApplicationController
    
    def main
        if session[:login_uid] != nil
            render :main
        else
            render :login
        end
    end
    
    def login
        if User.authenticate(params[:uid], params[:pass])
          session[:login_uid] = params[:uid]
          redirect_to root_path
        else
          render :error
        end
    end
    
    def logout
        session.delete(:login_uid)
        #render :login
        redirect_to root_path
        logger.debug("ログアウトされました")
    end
    
end
