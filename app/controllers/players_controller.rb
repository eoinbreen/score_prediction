class PlayersController < ApplicationController
    
    def create
        @player = Player.new(player_params)
        if @player.save
            redirect_to root_path
        else
            redirect_to root_path
        end
    end 
    
    
    private

    def player_params
      params.require(:prediction).permit(:name, :teamID, :position, :playChance)
    end
    
end
