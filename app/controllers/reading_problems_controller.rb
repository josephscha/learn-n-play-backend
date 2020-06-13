class ReadingProblemsController < ApplicationController
 
    def index 
        reading_problems = ReadingProblem.all 
        render json: reading_problems.map { |problem|
            problem.as_json.merge({ image: url_for(problem.image) })
          } 
    end

    def create 
        reading_problem = ReadingProblem.create(reading_problem_params)
        render json:reading_problem, except: [:created_at, :updated_at]
    end

    def show 
        reading_problem = ReadingProblem.find(params[:id])
            image = rails_blob_path(reading_problem.image)
        render json: {reading_problem: reading_problem, image: image}, except: [:created_at, :updated_at]
    end

    def update 
        reading_problem = ReadingProblem.find(params[:id])
        reading_problem.update(image: params[:image])
        image_url = rails_blob_path(reading_problem.image)
        render json: {reading_problem: reading_problem, image_url: image_url}
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
