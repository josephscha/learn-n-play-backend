User.destroy_all
Course.destroy_all
UserCourse.destroy_all
MathProblem.destroy_all
SpellingProblem.destroy_all
ReadingProblem.destroy_all
CourseProblem.destroy_all

User.create(username: "Joseph", email: "Joseph@gmail.com", password_digest: "12345", child_name: "Joseph", score: 0)
User.create(username: "Admin", email: "Admin@gmail.com", password_digest: "12345", child_name: "Admin", score: 0)
User.create(username: "Andrew", email: "Andrew@gmail.com", password_digest: "12345", child_name: "Andrew Jr.", score: 0)


c1= Course.create(difficulty: "Easy", title: "Math course 1", description: "Addition", points: 10)
c2= Course.create(difficulty: "Easy", title: "Math course 2", description: "Subtraction", points: 10)

c3= Course.create(difficulty: "Easy", title: "Reading course 1", description: "Basic words", points: 10)
c4= Course.create(difficulty: "Easy", title: "Reading course 2", description: "Basic words 2", points: 10)

c5= Course.create(difficulty: "Easy", title: "Spelling course 1", description: "Basic spelling", points: 10)
c6= Course.create(difficulty: "Easy", title: "Spelling course 2", description: "Basic spelling 2", points: 10)

UserCourse.create(user: User.first, course: c1)
UserCourse.create(user: User.first, course: c2)
UserCourse.create(user: User.first, course: c3)
UserCourse.create(user: User.first, course: c5)

m1=MathProblem.create(problem: "1 + 1", answer: "2")
m2=MathProblem.create(problem: "3 + 2", answer: "5")
m3=MathProblem.create(problem: "2 + 5", answer: "7")
m4=MathProblem.create(problem: "8 + 10", answer: "18")
m5=MathProblem.create(problem: "11 + 12", answer: "23")

m6=MathProblem.create(problem: "3 - 2", answer: "1")
m7=MathProblem.create(problem: "9 - 1", answer: "8")
m8=MathProblem.create(problem: "12 - 5", answer: "7")
m9=MathProblem.create(problem: "15 - 12", answer: "3")
m10=MathProblem.create(problem: "21 - 7", answer: "14")

r1=ReadingProblem.create(problem: "apple", answer: "apple")
r1.image.attach(io: File.open('./public/images/apple.png'),filename: 'apple.png', content_type: 'application/png') 
r2=ReadingProblem.create(problem: "book", answer: "book")
r2.image.attach(io: File.open('./public/images/book.png'),filename: 'book.png', content_type: 'application/png') 
r3=ReadingProblem.create(problem: "cat", answer: "cat")
r3.image.attach(io: File.open('./public/images/cat.png'),filename: 'cat.png', content_type: 'application/png') 
r4=ReadingProblem.create(problem: "dog", answer: "dog")
r4.image.attach(io: File.open('./public/images/dog.png'),filename: 'dog.png', content_type: 'application/png') 
r5=ReadingProblem.create(problem: "egg", answer: "egg")
r5.image.attach(io: File.open('./public/images/egg.png'),filename: 'egg.png', content_type: 'application/png') 

r6=ReadingProblem.create(problem: "fish", answer: "fish")
r6.image.attach(io: File.open('./public/images/fish.png'),filename: 'fish.png', content_type: 'application/png') 
r7=ReadingProblem.create(problem: "grass", answer: "grass" )
r7.image.attach(io: File.open('./public/images/grass.png'),filename: 'grass.png', content_type: 'application/png') 
r8=ReadingProblem.create(problem: "house", answer: "house" )
r8.image.attach(io: File.open('./public/images/house.png'),filename: 'house.png', content_type: 'application/png') 
r9=ReadingProblem.create(problem: "ice cream", answer: "ice cream" )
r9.image.attach(io: File.open('./public/images/ice_cream.png'),filename: 'ice_cream.png', content_type: 'application/png') 
r10=ReadingProblem.create(problem: "jam", answer: "jam")
r10.image.attach(io: File.open('./public/images/jam.png'),filename: 'jam.png', content_type: 'application/png') 

s1=SpellingProblem.create(problem: "a _ _ _ e", answer: "apple")
s1.image.attach(io: File.open('./public/images/apple.png'),filename: 'apple.png', content_type: 'application/png') 
s2=SpellingProblem.create(problem: "b _ _ k", answer: "book")
s2.image.attach(io: File.open('./public/images/book.png'),filename: 'book.png', content_type: 'application/png') 
s3=SpellingProblem.create(problem: "c _ t", answer: "cat")
s3.image.attach(io: File.open('./public/images/cat.png'),filename: 'cat.png', content_type: 'application/png') 
s4=SpellingProblem.create(problem: "d _ g", answer: "dog")
s4.image.attach(io: File.open('./public/images/dog.png'),filename: 'dog.png', content_type: 'application/png')
s5=SpellingProblem.create(problem: "e _ g", answer: "egg")
s5.image.attach(io: File.open('./public/images/egg.png'),filename: 'egg.png', content_type: 'application/png') 

s6=SpellingProblem.create(problem: "f _ _ h", answer: "fish")
s6.image.attach(io: File.open('./public/images/fish.png'),filename: 'fish.png', content_type: 'application/png') 
s7=SpellingProblem.create(problem: "g _ _ _ s", answer: "grass")
s7.image.attach(io: File.open('./public/images/grass.png'),filename: 'grass.png', content_type: 'application/png') 
s8=SpellingProblem.create(problem: "h _ _ _ e", answer: "house")
s8.image.attach(io: File.open('./public/images/house.png'),filename: 'house.png', content_type: 'application/png') 
s9=SpellingProblem.create(problem: "i _ e", answer: "ice")
s9.image.attach(io: File.open('./public/images/ice.png'),filename: 'ice.png', content_type: 'application/png') 
s10=SpellingProblem.create(problem: "j _ m", answer: "jam")
s10.image.attach(io: File.open('./public/images/jam.png'),filename: 'jam.png', content_type: 'application/png') 

math1 = [m1,m2,m3,m4,m5] 
math2 = [m6,m7,m8,m9,m10]
reading1 = [r1,r2,r3,r4,r5]
reading2 = [r6,r7,r8,r9,r10]
spelling1 = [s1,s2,s3,s4,s5] 
spelling2 = [s6,s7,s8,s9,s10]

math1.each do |p|
    CourseProblem.create(course: c1, problemable: p)
end

math2.each do |p|
    CourseProblem.create(course: c2, problemable: p)
end

reading1.each do |p|
    CourseProblem.create(course: c3, problemable: p)
end

reading2.each do |p|
    CourseProblem.create(course: c4, problemable: p)
end

spelling1.each do |p|
    CourseProblem.create(course: c5, problemable: p)
end

spelling2.each do |p|
    CourseProblem.create(course: c6, problemable: p)
end

puts "Seeding complete"