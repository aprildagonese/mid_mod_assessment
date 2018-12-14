# mid_mod_assessment

## Iteration 1

Use TDD to create a `Student` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/student'
# => true

pry(main)> morgan = Student.new({name: "Morgan", age: 21})    
# => #<Student:0x00007fe196b0c050...>

pry(main)> morgan.name
# => "Morgan"

pry(main)> morgan.age
# => 21

pry(main)> morgan.scores
# => []

pry(main)> morgan.log_score(89)

pry(main)> morgan.log_score(78)    

pry(main)> morgan.scores
# => [89, 78]

pry(main)> morgan.grade #Average of all the scores
# => 83.5
```

## Iteration 2

Use TDD to create a `Course` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/course'
# => true

pry(main)> require './lib/student'
# => true

pry(main)> course = Course.new("Calculus", 2)    
# => #<Course:0x00007fa0a69be328...>

pry(main)> course.name
# => "Calculus"

pry(main)> course.capacity
# => 2

pry(main)> course.students
# => []

pry(main)> course.full?
# => false

pry(main)> morgan = Student.new({name: "Morgan", age: 21})
# => #<Student:0x00007fa0a80ae588...>

pry(main)> jordan = Student.new({name: "Jordan", age: 29})    
# => #<Student:0x00007fa0a814f4d8...>

pry(main)> course.enroll(morgan)    

pry(main)> course.enroll(jordan)    

pry(main)> course.students
# => [#<Student:0x00007fa0a80ae588...>, #<Student:0x00007fa0a814f4d8...>]

pry(main)> course.full?
# => true
```
