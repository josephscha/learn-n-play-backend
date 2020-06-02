class CourseProblem < ApplicationRecord
    belongs_to :course 
    belongs_to :problemable, :polymorphic => true
end
