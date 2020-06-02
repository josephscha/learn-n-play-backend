class ReadingProblem < ApplicationRecord
    has_many :course_problems, as: :problemable
    has_many :courses, through: :course_problems, source: :problemable, source_type: "Course"
end
