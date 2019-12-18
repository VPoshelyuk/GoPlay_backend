class Api::V1::GroupsController < ApplicationController
    def index
        groups = Group.all
        render json: {groups: GroupSerializer.new(groups)}
    end

    def show
        group = Group.find(params[:id])
        render json: {group: GroupSerializer.new(group), token: token}
    end

    def create
        group = Group.create(group_params)
        if group.save
            render json: {group: GroupSerializer.new(group), token: token}, status: :accepted
        else
            render json: { errors: group.errors.full_messages }, status: :unprocessible_entity
        end
    end


    def update
        group = Group.find(params[:id])
        group.update(group_params)
        if group.save
            render json: {group: GroupSerializer.new(group), token: token}, status: :accepted
        else
            render json: { errors: group.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        group = Group.find(params[:id])
        group.destroy
        render json: "Successfully deleted!"
    end

    private

    def group_params
        params.permit(
            :name,
            :location,
            :logo_path,
            :description,
            :activity_id
        )
    end
end
