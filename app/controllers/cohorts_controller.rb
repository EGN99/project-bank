class CohortsController < ApplicationController
    
    def index
        render json: Cohort.all
    end

    def show
        cohort = Cohort.find(params[:id])
        render json: cohort
    end

    def create
        cohort = Cohort.create!(cohort_params)
        render json: cohort
    end

    def destroy
        Cohort.destroy(params[:id])
        head :no_content
    end

    private

    def cohort_params
        params.permit(:name, :number_of_students, :course)
    end

end
