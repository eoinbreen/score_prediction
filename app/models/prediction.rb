class Prediction < ActiveRecord::Base
    
    validates :teamScore1, presence: true
    validates :teamScore2, presence: true
    validates :firstScorer, presence: true
end
