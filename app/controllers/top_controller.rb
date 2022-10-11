class TopController < ApplicationController

def main
    
    if session[:login_uid]
       session[:login_pass]
       render 'main'
        
    else 
        
        render  "login" 
         
    end
end

def login 
    
    if params[:uid] == 'kindai' and params[:pass] == 'sanriko'
        session[:login_uid] = params[:uid]
        session[:login_pass] = params[:pass]
        
        redirect_to root_path
    else 
        render 'error'
    
    end
end



end
