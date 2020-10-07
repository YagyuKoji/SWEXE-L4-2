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
        uid =  params[:uid]
        pass =  params[:pass]
        if  User.find_by(uid: uid, pass: pass)
          session[:login_uid] = uid
          redirect_to root_path
        else
          render :error
        end
    end
    
end
