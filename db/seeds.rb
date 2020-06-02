# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Course.destroy_all
UserCourse.destroy_all
MathProblem.destroy_all
SpellingProblem.destroy_all
ReadingProblem.destroy_all
CourseProblem.destroy_all

User.create(username: "Joseph")
Course.create(difficulty: "Easy", title: "Level 1 reading", description: "First steps to reading")
UserCourse.create(user: User.first, course: Course.first)

MathProblem.create(problem: "1 + 1", answer: "2")
ReadingProblem.create(problem: "apple", answer: "apple")
SpellingProblem.create(problem: "a _ _ _ e", answer: "apple")

CourseProblem.create(course_id: Course.first, problemable_type: "ReadingProblem", problemable_id: ReadingProblem.first.id)

puts "Seeding complete"