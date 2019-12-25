class QuesController < ApplicationController
    before_action :authenticate_manager!
    # before_action :authenticate_manager!, only: [:edit, :update, :destroy, :create, :new]
    
    def index
        @ques = current_manager.ques  
    end

    def show
        @que = current_manager.ques.find(params[:id])   
    end

    def new
        @que = current_manager.ques.new    
    end

    def create
        @que = current_manager.ques.create(que_params)  
        redirect_to que_path(@que)
    end

    def destroy
        @que = current_manager.ques.find(params[:id])
        @que.destroy
        redirect_to ques_path    
    end

    def edit
        @que = current_manager.ques.find(params[:id])  
    end

    def update
        @que = current_manager.ques.find(params[:id])
        @que.update(que_params)
        redirect_to que_path(@que)    
    end

    private
    def que_params
        params.require(:que).permit(:name, :email, :location, :img)    
    end

end
