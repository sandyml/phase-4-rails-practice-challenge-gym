class MembershipsController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response

 def create
  render json: Membership.create!(membership_params)
 end
 
 private 

 def unprocessable_entity_response(invalid)
  render json: { error: membership.errors.full_message }, status: :unprocessable_entity
 end
 
 def membership_params
  params.permit(:gym_id, :client_id, :charge)
 end

end

# Create a new membership
# New membership require a gym_id, client_id, and membership charge.
# Validation: A client can have only one membership with gym