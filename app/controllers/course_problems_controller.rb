class CourseProblemsController < ApplicationController

    def index 
        course_problems = CourseProblem.all 
        render json:course_problems, except: [:created_at, :updated_at]
    end

    def create 
        course_problem = CourseProblem.create(course_problem_params)
        render json:course_problem, except: [:created_at, :updated_at]
    end

    def show 
        course_problem = CourseProblem.find(params[:id])
        render json:course_problem, except: [:created_at, :updated_at]
    end

    def update 
        course_problem = CourseProblem.find(params[:id])
        course_problem.update(course_problem_params)
        render json:course_problem, except: [:created_at, :updated_at]
    end

    def destroy
        course_problem = CourseProblem.find(params[:id])
        course_problem.destroy
    end

    private 

    def course_problem_params
        params.require(:course_problem).permit!
    end

end
