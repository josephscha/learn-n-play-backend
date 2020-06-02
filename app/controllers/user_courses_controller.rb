class UserCoursesController < ApplicationController

    def index 
        user_courses = UserCourse.all 
        render json:user_courses, except: [:created_at, :updated_at]
    end

    def create 
        user_course = UserCourse.create(user_course_params)
        render json:user_course, except: [:created_at, :updated_at]
    end

    def show 
        user_course = UserCourse.find(params[:id])
        render json:user_course, except: [:created_at, :updated_at]
    end

    def update 
        user_course = UserCourse.find(params[:id])
        user_course.update(user_course_params)
        render json:user_course, except: [:created_at, :updated_at]
    end

    def destroy
        user_course = UserCourse.find(params[:id])
        user_course.destroy
    end

    private 

    def user_course_params
        params.require(:user_course).permit!
    end

end
