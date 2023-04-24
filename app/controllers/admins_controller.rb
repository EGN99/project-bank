class AdminsController < ApplicationController
   # skip_before_action :authenticate_admin! except: [:create]

    # def create
    #     admin = Admin.find_by(email: params[:email])

    #     if admin && admin.valid_password?(params[:password])
    #         session[:admin_id] = admin.id 
    #         render json: {admin: admin}, status: :ok
    #     else
    #         render json: {error: "Invalid emai or password"}, status: :not_found
    #     end
    # end

    def create
        admin = Admin.new(admin_params)
        if admin.save
          render json: admin, status: :created
        else
          render json: { errors: admin.errors.full_messages }, status: :unprocessable_entity
        end

    end


    private
    def admin_params
        params.permit(:username, :password, :email)
    end


end
