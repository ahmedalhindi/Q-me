class QuesController < ApplicationController
    def index
        @ques = Que.all    
    end

    def show
        @que = Que.find(params[:id])   
    end

    def new
        @que = Que.new    
    end

    def create
        @que = Que.create(que_params)  
        redirect_to que_path(@que)
    end

    def destroy
        @que = Que.find(params[:id])
        @que.destroy
        redirect_to ques_path    
    end

    def edit
        @que = Que.find(params[:id])  
    end

    def update
        @que = Que.find(params[:id])
        @que.update(que_params)
        redirect_to que_path(@que)    
    end

    private
    def que_params
        params.require(:que).permit(:name, :email, :location, :img)    
    end

end
