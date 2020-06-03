User.destroy_all
Course.destroy_all
UserCourse.destroy_all
MathProblem.destroy_all
SpellingProblem.destroy_all
ReadingProblem.destroy_all
CourseProblem.destroy_all

User.create(username: "Joseph")
Course.create(difficulty: "Easy", title: "Math course", description: "Addition & Subtraction")
Course.create(difficulty: "Easy", title: "Reading course", description: "Basic words")
Course.create(difficulty: "Easy", title: "Spelling course", description: "Basic spelling")
UserCourse.create(user: User.first, course: Course.first)
UserCourse.create(user: User.first, course: Course.second)
UserCourse.create(user: User.first, course: Course.third)

MathProblem.create(problem: "1 + 1", answer: "2")
MathProblem.create(problem: "3 + 2", answer: "5")
MathProblem.create(problem: "2 + 5", answer: "7")
MathProblem.create(problem: "8 + 10", answer: "18")
MathProblem.create(problem: "11 - 12", answer: "23")
MathProblem.create(problem: "3 - 2", answer: "1")
MathProblem.create(problem: "9 - 1", answer: "8")
MathProblem.create(problem: "12 - 5", answer: "7")
MathProblem.create(problem: "15 - 12", answer: "3")
MathProblem.create(problem: "21 - 7", answer: "14")

ReadingProblem.create(problem: "apple", answer: "apple")
ReadingProblem.create(problem: "bed", answer: "bed")
ReadingProblem.create(problem: "cat", answer: "cat")
ReadingProblem.create(problem: "dog", answer: "dog")
ReadingProblem.create(problem: "egg", answer: "egg")
ReadingProblem.create(problem: "fish", answer: "fish")
ReadingProblem.create(problem: "grass", answer: "grass")
ReadingProblem.create(problem: "house", answer: "house")
ReadingProblem.create(problem: "ice cream", answer: "ice cream")
ReadingProblem.create(problem: "jam", answer: "jam")

SpellingProblem.create(problem: "a _ _ _ e", answer: "apple")
SpellingProblem.create(problem: "b _ d", answer: "bed")
SpellingProblem.create(problem: "c _ t", answer: "cat")
SpellingProblem.create(problem: "d _ g", answer: "dog")
SpellingProblem.create(problem: "e _ g", answer: "egg")
SpellingProblem.create(problem: "f _ _ h", answer: "fish")
SpellingProblem.create(problem: "g _ _ _ _", answer: "grass")
SpellingProblem.create(problem: "h _ _ _ e", answer: "house")
SpellingProblem.create(problem: "i _ e", answer: "ice")
SpellingProblem.create(problem: "j _ m", answer: "jam")

MathProblem.all.each do |p|
    CourseProblem.create(course: Course.first, problemable: p)
end

ReadingProblem.all.each do |p|
    CourseProblem.create(course: Course.second, problemable: p)
end

SpellingProblem.all.each do |p|
    CourseProblem.create(course: Course.third, problemable: p)
end


puts "Seeding complete"