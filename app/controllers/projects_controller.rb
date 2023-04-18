class ProjectsController < ApplicationController
    before_action :set_course
    before_action :set_project, only: [:show]

    # GET /courses/:id/projects
    def index
        @projects = @course.projects
        render json: @Projects 
    end

    # POST /courses/:id/projects
    def create
        @projects = @courses.projects.build(project_params)

        if @project.save
            render json: @project, status: :created
        else
            render json: @project.errors, status: :unprocessable_entity
        end
    end

    private
    def set_course
        @course = Course.find(params[:course_id])
    end

    def set_project
        @project = @course.projects.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:name, :description, :github_link)
    end
end
