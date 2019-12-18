class Api::V1::UserActivitiesController < ApplicationController
    def index
        user_activities = UserActivity.all
        render json: {user_activities: user_activities}
    end

    def show
        user_activity = UserActivity.find(params[:id])
        render json: {user_activity: user_activity}
    end

    def create
        user_activity = {}
        params[:sports].each do |id|
            activity = Activity.find(id)
            activity.update(number_of_members: activity.number_of_members+1)
            user_activity = UserActivity.create(user_id: params[:user_id],activity_id: id)
        end
        if user_activity.save
            user_activities = UserActivity.select{ |check_user| check_user.user_id == params[:user_id]}
            render json: {user_activities: user_activities}, status: :accepted
        else
            render json: { errors: user_activity.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        user_activity = UserActivity.find(params[:id])
        user_activity.destroy
        render json: "Successfully deleted!"
    end
end
