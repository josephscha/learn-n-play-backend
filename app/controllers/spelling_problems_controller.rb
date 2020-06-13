class SpellingProblemsController < ApplicationController

    def index 
        spelling_problems = SpellingProblem.all 
        render json: spelling_problems.map { |problem|
            problem.as_json.merge({ image: url_for(problem.image) })
          } 
    end

    def create 
        spelling_problem = SpellingProblem.create(spelling_problem_params)
        render json:spelling_problem, except: [:created_at, :updated_at]
    end

    def show 
        spelling_problem = SpellingProblem.find(params[:id])
        image = rails_blob_path(spelling_problem.image)
        render json: {spelling_problem: spelling_problem, image: image}, except: [:created_at, :updated_at]
    end

    def update 
        spelling_problem = SpellingProblem.find(params[:id])
        spelling_problem.update(image: params[:image])
        image_url = rails_blob_path(spelling_problem.image)
        render json: {spelling_problem: spelling_problem, image_url: image_url}
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
