class Api::V1::EventsController < ApplicationController
    def index
        events = Event.all
        render json: {events: EventSerializer.new(events)}
    end

    def show
        event = Event.find(params[:id])
        render json: {event: EventSerializer.new(event)}
    end

    def available_events
        events = []
        params[:groups_id].split(",").each do |group_id|
            events += Event.select { |event| event.group_id == group_id.to_i && (event.users.length == 0 || !event.users.find(params[:user_id])) && event.time > DateTime.now.utc}
        end
        render json: {events: EventSerializer.new(events)}
    end

    def past_events
        events = []
        params[:groups_id].split(",").each do |group_id|
            events += Event.select { |event| event.group_id == group_id.to_i && (event.users.length == 0 || !event.users.find(params[:user_id])) && event.time <= DateTime.now.utc}
        end
        render json: {events: EventSerializer.new(events)}
    end

    def my_events
        events = []
        params[:groups_id].split(",").each do |group_id|
            events += Event.select { |event| event.group_id == group_id.to_i && event.users.length != 0 && event.users.find(params[:user_id])}
        end
        render json: {events: EventSerializer.new(events)}
    end

    def create
        event = Event.create(event_params)
        event[:pic_path] = url_for(event.e_logo)
        event[:pretty_time] = event[:time].in_time_zone("Eastern Time (US & Canada)").strftime("%Y/%m/%d at %I:%M %p")
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
            :price,
            :time,
            :e_logo,
            :players_per_team,
            :max_number_of_teams,
            :description,
            :address,
            :group_id,
            :groups_id
        )
    end
end
