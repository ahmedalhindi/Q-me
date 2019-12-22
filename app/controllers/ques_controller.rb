class QuesController < ApplicationController
    def index
    @ques = Que.all    
    end
end
