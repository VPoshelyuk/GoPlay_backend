class Api::V1::AuthController < ApplicationController

    def login
      user = User.find_by(username: params[:username])
  
      if user && user.authenticate(params[:password])
        token = encode_token(user.id)
        render json: {user: UserSerializer.new(user), token: token}
      else
        render json: {errors: "No username/password match!"}
      end
    end
  
    def auto_login
      if session_user
        token = encode_token(session_user.id)
        render json: {user: UserSerializer.new(session_user), token: token}
      else 
        render json: {errors: "That ain't no user I ever heard of!"}
      end
      
    end
end