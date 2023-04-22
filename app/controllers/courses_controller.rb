class CoursesController < ApplicationController
    # before_action :set_course, only: [:show]

    # GET /courses
    def index
        @courses = Course.all 
        render json: @courses 
    end
    
    # GET /courses/:id
    def show 
        @course = Course.find(params[:id])
        render json: @course 
    end

end
