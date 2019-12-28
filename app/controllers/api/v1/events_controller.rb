class Api::V1::EventsController < ApplicationController
    def index
        events = Event.all
        render json: {events: EventSerializer.new(events)}
    end

    def show
        event = event.find(params[:id])
        render json: {event: EventSerializer.new(event)}
    end

    def create
        event = Event.create(event_params)
        event[:logo_path] = url_for(event.g_logo)
        if event.save
            render json: {event: EventSerializer.new(event)}, status: :accepted
        else
            render json: { errors: event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        event = Event.find(params[:id])
        event.update(event_params)
        if event.save
            render json: {event: EventSerializer.new(event)}, status: :accepted
        else
            render json: { errors: event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: "Successfully deleted!"
    end

    private

    def event_params
        params.permit(
            :name,
            :location,
            :g_logo,
            :description,
            :activity_id,
            :admin_id
        )
    end
end
