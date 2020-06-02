class MathProblemsController < ApplicationController

    def index 
        math_problems = MathProblem.all 
        render json:math_problems, except: [:created_at, :updated_at]
    end

    def create 
        math_problem = MathProblem.create(math_problem_params)
        render json:math_problem, except: [:created_at, :updated_at]
    end

    def show 
        math_problem = MathProblem.find(params[:id])
        render json:math_problem, except: [:created_at, :updated_at]
    end

    def update 
        math_problem = MathProblem.find(params[:id])
        math_problem.update(math_problem_params)
        render json:math_problem, except: [:created_at, :updated_at]
    end

    def destroy
        math_problem = MathProblem.find(params[:id])
        math_problem.destroy
    end

    private 

    def math_problem_params
        params.require(:math_problem).permit!
    end
end
