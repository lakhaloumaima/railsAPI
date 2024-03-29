class MissionsController < ApplicationController
    # //////////////////////////////////  categories 

    def index
        @missions = Mission.all
        render json: @missions
    end

    def create 
        @mission = Mission.new(post_params)
        if @mission.save 
            render json: @mission ,statut: :created, location: @mission 
       
        else
            render json: @mission.errors, statut: :unprocessable_entity
        end    
    end   

    def show
        @mission = Mission.find(params[:id])
        render json: @mission
        
    end

    def update
        if @mission.update(post_params)
        render json: @mission

        else
        render json: @mission.errors, statut: :unprocessable_entity
        end
    end

    def destroy
        @mission = Mission.find(params[:id])
        @mission.destroy
    end



    private


    def post_params
        params.require(:mission).permit!
    end

    def set_post
        @mission = Mission.find(params[:id])
    end

end
