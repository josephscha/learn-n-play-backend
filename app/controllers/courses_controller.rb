class CoursesController < ApplicationController

    def index 
        courses = Course.all 
        render json:courses, except: [:created_at, :updated_at]
    end

    def create 
        course = Course.create(course_params)
        render json:course, except: [:created_at, :updated_at]
    end

    def show 
        course = Course.find(params[:id])
        render json:course, except: [:created_at, :updated_at]
    end

    def update 
        course = Course.find(params[:id])
        course.update(course_params)
        render json:course, except: [:created_at, :updated_at]
    end

    def destroy
        course = Course.find(params[:id])
        course.destroy
    end

    private 

    def course_params
        params.require(:course).permit!
    end

end
