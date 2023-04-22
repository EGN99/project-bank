class CohortsController < ApplicationController
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

private 
def cohort_params
    params.require(:cohort).permit(:name, :course, :no_of_students)
end
