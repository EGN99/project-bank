class CoursesController < ApplicationController
    before_action :set_course, only: [:show]

    # GET /courses
    def index
        @courses = Course.all 
        render json: @courses 
    end
    
    # GET /courses/:id
    def show 
        render json: @course 
    end

    private
    def set_course
        @course = Course.find(params[:id])
    end

end
