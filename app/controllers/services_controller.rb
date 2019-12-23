class ServicesController < ApplicationController
    
    def new
        @que = Que.find(params[:que_id])
        @service = @que.services.new
    end

    def create
        @que = Que.find(params[:que_id])
        @service = @que.services.create(service_params)
        redirect_to que_path(@que)
    end

    def show
        @que = Que.find(params[:que_id])    
    end

    def edit
        @que = Que.find(params[:que_id])
    end

    def update
        @que.services.update(que_params)
        redirect_to que_path(@que)   
    end
    
    def destroy
        @que = Que.find(params[:que_id])
        @service = @que.services.find(params[:que_id])
        @service.destroy
        redirect_to que_path(@que)    
    end

    private
    def service_params
        params.require(:services).permit(:name,:description)
    end
end
