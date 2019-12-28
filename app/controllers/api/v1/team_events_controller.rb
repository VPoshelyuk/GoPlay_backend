class Api::V1::TeamEventsController < ApplicationController
    def index
        team_events = TeamEvent.all
        render json: team_events
    end

    def show
        team_event = TeamEvent.find(params[:id])
        render json: team_event
    end

    def create
        team_event = TeamEvent.create(team_event_params)
        if team_event.save
            render json: team_event, status: :accepted
        else
            render json: { errors: team_event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        team_event = TeamEvent.find(params[:id])
        team_event.update(team_event_params)
        if team_event.save
            render json: team_event, status: :accepted
        else
            render json: { errors: team_event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        team_event = TeamEvent.find(params[:id])
        team_event.destroy
        render json: "Successfully deleted!"
    end

    private

    def team_event_params
        params.permit(
            :event_id,
            :team_id
        )
    end
end
