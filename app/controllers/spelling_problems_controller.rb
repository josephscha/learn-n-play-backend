class SpellingProblemsController < ApplicationController

    def index 
        spelling_problems = SpellingProblem.all 
        render json:spelling_problems, except: [:created_at, :updated_at]
    end

    def create 
        spelling_problem = SpellingProblem.create(spelling_problem_params)
        render json:spelling_problem, except: [:created_at, :updated_at]
    end

    def show 
        spelling_problem = SpellingProblem.find(params[:id])
        render json:spelling_problem, except: [:created_at, :updated_at]
    end

    def update 
        spelling_problem = SpellingProblem.find(params[:id])
        spelling_problem.update(spelling_problem_params)
        render json:spelling_problem, except: [:created_at, :updated_at]
    end

    def destroy
        spelling_problem = SpellingProblem.find(params[:id])
        spelling_problem.destroy
    end

    private 

    def spelling_problem_params
        params.require(:spelling_problem).permit!
    end

end
