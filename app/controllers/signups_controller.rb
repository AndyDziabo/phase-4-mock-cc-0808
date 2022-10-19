class SignupsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid
        def create
            signup = Signup.create!(signup_params)
            render json: signup, status: :created
        end
    
        private
    
        def signup_params
            params.permit(:time, :activity_id, :camper_id)
        end
    
        def invalid(e)
            render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
        end
    end
    