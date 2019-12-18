class Api::V1::UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        token = encode_token(user.id)
        render json: {user: UserSerializer.new(user), token: token}
    end

    def create
        user = User.create(user_params)
        if user.save
            token = encode_token(user.id)
            render json: {user: UserSerializer.new(user), token: token}, status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end


    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            token = encode_token(user.id)
            render json: {user: UserSerializer.new(user), token: token}, status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: "Successfully deleted!"
    end

    private

    def user_params
        params.permit(
            :username,
            :first_name,
            :last_name,
            :profile_pic,
            :email,
            :phone_number,
            :location,
            :birthday,
            :gender,
            :bio,
            :won_games,
            :tie_games,
            :lost_games,
            :admin,
            :password,
            :password_digest
        )
    end
end
