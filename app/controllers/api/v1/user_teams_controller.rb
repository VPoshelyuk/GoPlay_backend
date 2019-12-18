class Api::V1::UserTeamsController < ApplicationController
    def index
        user_teams = UserTeam.all
        render json: user_teams
    end

    def show
        user_team = UserTeam.find(params[:id])
        render json: user_team
    end

    def create
        user_team = UserTeam.create(user_team_params)
        if user_team.save
            render json: user_team, status: :accepted
        else
            render json: { errors: user_team.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        user_team = UserTeam.find(params[:id])
        user_team.update(user_team_params)
        if user_team.save
            render json: user_team, status: :accepted
        else
            render json: { errors: user_team.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        user_team = UserTeam.find(params[:id])
        user_team.destroy
        render json: "Successfully deleted!"
    end

    private

    def user_team_params
        params.permit(
            :user_id,
            :team_id,
            :signup_won_games,
            :signup_tie_games,
            :signup_lost_games
        )
    end
end
