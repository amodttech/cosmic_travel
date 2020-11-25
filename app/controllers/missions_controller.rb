class MissionsController < ApplicationController

    def index 
        @missions = Mission.all
    end 
    
    def show
        find_mission
    end 

    def new
        @mission = Mission.new
    end

    def create
        mission = Mission.create(mission_params)
        if mission.valid?
        redirect_to scientist_path(mission.scientist_id)
        else
            flash[:mission_errors] = mission.errors.full_messages
            redirect_to new_mission_path
        end
    end

    
    private
    
    def find_mission
        @mission = Mission.find(params[:id])
    end

    def mission_params
        params.require(:mission).permit(:name, :planet_id, :scientist_id)
    end


end
