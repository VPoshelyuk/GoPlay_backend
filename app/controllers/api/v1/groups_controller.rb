class Api::V1::GroupsController < ApplicationController
    def index
        groups = Group.all
        render json: {groups: GroupSerializer.new(groups)}
    end

    def show
        group = Group.find(params[:id])
        render json: {group: GroupSerializer.new(group)}
    end

    def create
        group = Group.create(group_params)
        group[:logo_path] = url_for(group.g_logo)
        if group.save
            render json: {group: GroupSerializer.new(group)}, status: :accepted
        else
            render json: { errors: group.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def my_groups
        groups = Group.select{ |group| group.admin_id == params[:user_id]}
        render json: {groups: GroupSerializer.new(groups)}
    end

    def update
        group = Group.find(params[:id])
        group.update(group_params)
        if group.save
            render json: {group: GroupSerializer.new(group)}, status: :accepted
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
            :g_logo,
            :description,
            :activity_id,
            :admin_id
        )
    end
end
