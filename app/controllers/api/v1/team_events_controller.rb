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
            team = Team.find(team_event[:team_id])
            team.users.each do |user|
                user_event = UserEvent.create(event_id: team_event[:event_id], user_id: user.id, status: "Nope")
                # account_sid = ENV['TWILIO_ACCOUNT_SID']
                # auth_token = ENV['TWILIO_AUTH_TOKEN']
                # client = Twilio::REST::Client.new(account_sid, auth_token)

                # from = '+14243101555' # Your Twilio number
                # to = "+#{user.phone_number}" # Your mobile phone number

                # client.messages.create(
                # from: from,
                # to: to,
                # body: "#{team.admin.username},admin at #{team.name}, just signed your team up for event happening on #{Event.find(team_event[:event_id]).time.in_time_zone("Eastern Time (US & Canada)").strftime("%Y/%m/%d at %I:%M %p")} stoopid!"
                # )
            end
            render json: team_event
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

    def delete_by_team_event_ids
        team_event = TeamEvent.find_by(team_id:params[:team_id], event_id:params[:event_id])
        id = team_event[:team_id]
        team_event.destroy
        team = Team.find(id)
            team.users.each do |user|
                user_event = UserEvent.find_by(event_id: team_event[:event_id], user_id: user.id)
                user_event.delete
            end
        render json: {attn: "Successfully deleted!"}
    end

    def destroy
        team_event = TeamEvent.find(params[:id])
        team_event.destroy
        render json: {attn: "Successfully deleted!"}
    end

    private

    def team_event_params
        params.permit(
            :event_id,
            :team_id
        )
    end
end
