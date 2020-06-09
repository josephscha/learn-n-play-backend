User.destroy_all
Course.destroy_all
UserCourse.destroy_all
MathProblem.destroy_all
SpellingProblem.destroy_all
ReadingProblem.destroy_all
CourseProblem.destroy_all

User.create(username: "Joseph", email: "Joseph@gmail.com", password_digest: "12345", child_name: "Joseph Jr.", score: 0)
Course.create(difficulty: "Easy", title: "Math course", description: "Addition & Subtraction", points: 10)
Course.create(difficulty: "Easy", title: "Reading course", description: "Basic words", points: 10)
Course.create(difficulty: "Easy", title: "Spelling course", description: "Basic spelling", points: 10)
UserCourse.create(user: User.first, course: Course.first)
UserCourse.create(user: User.first, course: Course.second)


MathProblem.create(problem: "1 + 1", answer: "2")
MathProblem.create(problem: "3 + 2", answer: "5")
MathProblem.create(problem: "2 + 5", answer: "7")
MathProblem.create(problem: "8 + 10", answer: "18")
MathProblem.create(problem: "11 + 12", answer: "23")
MathProblem.create(problem: "3 - 2", answer: "1")
MathProblem.create(problem: "9 - 1", answer: "8")
MathProblem.create(problem: "12 - 5", answer: "7")
MathProblem.create(problem: "15 - 12", answer: "3")
MathProblem.create(problem: "21 - 7", answer: "14")

ReadingProblem.create(problem: "apple", answer: "apple", image: "./images/apple.png")
ReadingProblem.create(problem: "book", answer: "book", image: "./images/book.png")
ReadingProblem.create(problem: "cat", answer: "cat", image: "./images/cat.png")
ReadingProblem.create(problem: "dog", answer: "dog", image: "./images/dog.png")
ReadingProblem.create(problem: "egg", answer: "egg", image: "./images/egg.png")
ReadingProblem.create(problem: "fish", answer: "fish", image: "./images/fish.png")
ReadingProblem.create(problem: "grass", answer: "grass", image: "./images/grass.png")
ReadingProblem.create(problem: "house", answer: "house", image: "./images/house.png")
ReadingProblem.create(problem: "ice cream", answer: "ice cream", image: "./images/ice_cream.png")
ReadingProblem.create(problem: "jam", answer: "jam", image: "./images/jam.png")

SpellingProblem.create(problem: "a _ _ _ e", answer: "apple", image: "./images/apple.png")
SpellingProblem.create(problem: "b _ _ k", answer: "book", image: "./images/book.png")
SpellingProblem.create(problem: "c _ t", answer: "cat", image: "./images/cat.png")
SpellingProblem.create(problem: "d _ g", answer: "dog", image: "./images/dog.png")
SpellingProblem.create(problem: "e _ g", answer: "egg", image: "./images/egg.png")
SpellingProblem.create(problem: "f _ _ h", answer: "fish", image: "./images/fish.png")
SpellingProblem.create(problem: "g _ _ _ _", answer: "grass", image: "./images/grass.png")
SpellingProblem.create(problem: "h _ _ _ e", answer: "house", image: "./images/house.png")
SpellingProblem.create(problem: "i _ e", answer: "ice", image: "./images/ice.png")
SpellingProblem.create(problem: "j _ m", answer: "jam", image: "./images/jam.png")

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