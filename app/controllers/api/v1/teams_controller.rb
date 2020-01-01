class Api::V1::TeamsController < ApplicationController
    def show
        team = Team.find(params[:id])
        render json: {team: TeamSerializer.new(team)}
    end

    def create
        team = Team.create(team_params)
        team[:logo_path] = url_for(team.logo)
        activity = Activity.find(params[:activity_id])
            activity.update(number_of_teams: activity.number_of_teams+1)
        if team.save
            render json: {team: TeamSerializer.new(team)}, status: :accepted
        else
            render json: { errors: team.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def vacant_teams
        teams = Team.select { |team| team.activity_id == params[:sport_id] }
        render json: {teams: TeamSerializer.new(teams)}
    end

    def my_teams
        teams = Team.select { |team| team.users.find{ |user| user.id == params[:user_id]}}
        render json: {teams: TeamSerializer.new(teams)}
    end

    def update
        team = Team.find(params[:id])
        team.update(team_params)
        if team.save
            render json: {team: TeamSerializer.new(team)}, status: :accepted
        else
            render json: { errors: team.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        team = Team.find(params[:id])
        team.destroy
        render json: "Successfully deleted!"
    end

    private

    def team_params
        params.permit(
            :name,
            :location,
            :number_of_members,
            :logo_path,
            :logo,
            :description,
            :won_games,
            :tie_games,
            :lost_games,
            :admin_id,
            :activity_id
        )
    end
end
