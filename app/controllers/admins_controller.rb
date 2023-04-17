class AdminsController < ApplicationController
    before_action :authenticate_admin! except: [:create]

    def create
        admin = Admin.find_by(email: params[:email])

        if admin && admin.valid_password?(params[:password])
            session[:admin_id] = admin.id 
            render json: {admin: admin}, status: :ok
        else
            render json: {error: "Invalid emai or password"}, status: :not_found
        end
    end

    def index
        projects = Project.all
        cohorts = Cohort.all
        render json: { projects: projects, cohorts: cohorts}, status: :ok
    end
    
    def create_project
        project = Project.new(project_params)
        if project.save
            rander json {status: 'success', message: 'project created successefully'}, :status: :created
        else
            render json {status: 'error', message: 'project creation failed'}, :status: :error
        end
    end
    def delete_project
        project = Project.find(params[:id])
        if project.destroy
            render json: {status: 'success', message: 'project deleted successefully'}, :status: :success
        else
            render json: {status: 'error', message: 'project deletion failed'}, :status: :error
        end
    end
    def create_cohort
        cohort = Cohort.new(cohort_params)
        if cohort.save
            render json: {status: 'success', message: 'cohort created successefully'}, status: :successefully
        else
            render json: {status: 'error', message: 'cohort creation failed'}, :status: :error
        end
    end

    def delete_cohort
        cohort = Cohort.find(params[:id])
        if cohort.destroy
            render json: {status: 'success', message: 'cohort deleted successfully'}, status: :success
        else
            render json: {status: 'error', message: 'cohort deletion failed'}, status: :error
        end
    end

    def create_user
        user = user.new(user_params)
        if user.save
            render json: {status: 'success', message: 'user created successfully'}, status: :success
        else
            render json: {status: 'error', message: 'user creation failed'}, status: :error
        end
    end 

    private
    def project_params
        params.require(:project).permit(:name, :description, :owner_id, :course_title, :github_link)
    end

    def cohort_params
        params.require(:cohort).permit(:name, :course, :no_of_students)
    end

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :user_name)
    end

end
