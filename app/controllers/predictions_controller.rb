class PredictionsController < ApplicationController

def create
    @predictions = Prediction.new(prediction_params)
    if @predictions.save
      
        redirect_to root_path
    else
       
        redirect_to root_path
    end
end
        
     
    
    
    private

    def prediction_params
      params.require(:prediction).permit(:teamScore1, :teamScore2, :firstScorer)
    end
end