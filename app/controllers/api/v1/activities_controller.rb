class Api::V1::ActivitiesController < ApplicationController
    def index
        activities = Activity.all.sort_by{|activity| activity.id}
        render json: {activities: activities}
    end

    def show
        activity = Activity.find(params[:id])
        render json: {activity: activity}
    end

    def update
        activity = Activity.find(params[:id])
        if(params[:number_of_members])
            activity.update(number_of_members: number_of_members+1)
        elsif(params[:number_of_teams])
            activity.update(number_of_teams: number_of_teams+1)
        end
        if activity.save
            render json: {activity: activity}, status: :accepted
        else
            render json: { errors: activity.errors.full_messages }, status: :unprocessible_entity
        end
    end
end
