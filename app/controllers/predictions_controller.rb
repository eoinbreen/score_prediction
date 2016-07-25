class PredictionsController < ApplicationController
    
     def create
        @predictions = Prediction.new(prediction_params)
        if @predictions.save
            flash[:success] = "Prediction Made!"
            redirect_to root_path
        else
            flash[:danger] = "Prediction Unsuccessful! Leave No Fields Blank!"
            redirect_to root_path
        end
     end
    
    
    private

    def prediction_params
      params.require(:prediction).permit(:teamScore1, :teamScore2, :firstScorer)
    end
end