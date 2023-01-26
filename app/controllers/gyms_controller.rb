class GymsController < ApplicationController

 def show
  gym = Gym.find_by(id: params[:id])
  if gym
   render json: gym, status: :found
  else
   not_found_response
  end
 end

 def destroy
  gym = Gym.find_by(id: params[:id])
  if gym
   gym.destroy
   head :no_content
  else
   not_found_response
  end
 end

 private

 def not_found_response
  render json: {error: "Gym not found"}, status: :not_found
 end

end