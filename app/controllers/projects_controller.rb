class ProjectsController < ApplicationController
    #before_action :set_course, only: [:index, :create]
    #before_action :set_project, only: [:show]
    def index
        @course = Course.find(params[:course_id])
        @projects = @course.projects
        render json: @projects
    end
    
    def show
        render json: @project
    end
    
    def create
        @project = @course.projects.build(project_params)
        if @project.save
          render json: @project, status: :created
        else
          render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    private
    
    def set_course
        @course = Course.find(params[:course_id])
    end
    
    def set_project
        @project = Project.find(params[:id])
    end
    
    def project_params
        params.permit(:name, :description, :github_link, :members)
    end
end
