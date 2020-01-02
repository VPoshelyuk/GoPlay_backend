class Api::V1::UserEventsController < ApplicationController
    def index
        user_events = UserEvent.all
        render json: user_events
    end

    def show
        user_event = UserEvent.find(params[:id])
        render json: user_event
    end

    def status_check
        user_event = UserEvent.find_by(user_id: params[:user_id], event_id: params[:event_id])
        render json: user_event
    end

    def create
        user_event = UserEvent.create(user_events_params)
        if user_event.save
            render json: user_event
        else
            render json: { errors: user_event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        user_events = UserEvent.find(params[:id])
        user_events.update(user_events_params)
        if user_events.save
            render json: user_events, status: :accepted
        else
            render json: { errors: user_events.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        user_events = UserEvent.find(params[:id])
        user_events.destroy
        render json: "Successfully deleted!"
    end

    private

    def user_events_params
        params.permit(
            :event_id,
            :user_id,
            :status
        )
    end
end
