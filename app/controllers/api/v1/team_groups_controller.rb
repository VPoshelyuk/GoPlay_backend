class Api::V1::TeamGroupsController < ApplicationController
    def index
        team_groups = TeamGroup.all
        render json: team_groups
    end

    def show
        team_group = TeamGroup.find(params[:id])
        render json: team_group
    end

    def create
        team_group = TeamGroup.create(team_group_params)
        if team_group.save
            render json: team_group, status: :accepted
        else
            render json: { errors: team_group.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        team_group = TeamGroup.find(params[:id])
        team_group.update(team_group_params)
        if team_group.save
            render json: team_group, status: :accepted
        else
            render json: { errors: team_group.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        team_group = TeamGroup.find(params[:id])
        team_group.destroy
        render json: "Successfully deleted!"
    end

    private

    def team_group_params
        params.permit(
            :group_id,
            :team_id
        )
    end
end
