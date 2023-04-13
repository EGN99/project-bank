class SessionsController < ApplicationController

 # logging the Admin in

    def logAdmin
        admin = Admin.find_by(username: login_params[:username])
        if admin&.authenticate(login_params[:password])
            session[:user_id]= admin.id
            render json: admin, status: :accepted
        else
            render json: { error: "Invalid username or password"}, status: :not_found
        end

    end


# logging the student in

    def logStudent

        student = Student.find_by(username: login_params[:username])
        if student&.authenticate(login_params[:password])
            session[:user_id]= student.id
            render json: student, status: :accepted
        else
            render json: { error: "Invalid username or password"}, status: :not_found
        end
        
    end


# loging out for both the student and the admin

    def destroy
        session.delete :user_id
        head :no_content
    end

  private

    def login_params
        params.permit(:username, :password)
    end
end
