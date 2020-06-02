class ReadingProblemsController < ApplicationController

    def index 
        reading_problems = ReadingProblem.all 
        render json:reading_problems, except: [:created_at, :updated_at]
    end

    def create 
        reading_problem = ReadingProblem.create(reading_problem_params)
        render json:reading_problem, except: [:created_at, :updated_at]
    end

    def show 
        reading_problem = ReadingProblem.find(params[:id])
        render json:reading_problem, except: [:created_at, :updated_at]
    end

    def update 
        reading_problem = ReadingProblem.find(params[:id])
        reading_problem.update(reading_problem_params)
        render json:reading_problem, except: [:created_at, :updated_at]
    end

    def destroy
        reading_problem = ReadingProblem.find(params[:id])
        reading_problem.destroy
    end

    private 

    def reading_problem_params
        params.require(:reading_problem).permit!
    end

end
