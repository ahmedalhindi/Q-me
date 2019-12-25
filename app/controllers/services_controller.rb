class ServicesController < ApplicationController
    before_action :authenticate_manager!
    def new
        @que = current_manager.find(params[:que_id])
        @service = @que.services.new
    end

    def create
        @que = current_manager.find(params[:que_id])
        @service = @que.services.create(service_params)
        redirect_to que_path(@que)
    end

    def show
        @que = current_manager.find(params[:que_id])    
    end

    def edit
        @que = current_manager.find(params[:que_id])
    end

    def update
        @que.services.update(que_params)
        redirect_to que_path(@que)   
    end
    
    def destroy
        @que = current_manager.find(params[:que_id])
        @service = @que.services.find(params[:que_id])
        @service.destroy
        redirect_to que_path(@que)    
    end

    private
    def service_params
        params.require(:services).permit(:name,:description)
    end
end
