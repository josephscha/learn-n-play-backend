class Course < ApplicationRecord
    has_many :user_courses
    has_many :users, through: :user_courses
    has_many :course_problems, as: :problemable
    has_many :reading_problems, through: :course_problems, source: :problemable, source_type: "ReadingProblem"
    has_many :spelling_problems, through: :course_problems, source: :problemable, source_type: "SpellingProblem"
    has_many :math_problems, through: :course_problems, source: :problemable, source_type: "MathProblem"
end
