require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'

class StudentTest < Minitest::Test

  def test_it_exists
    morgan = Student.new({name: "Morgan", age: 21})

    assert_instance_of Student, morgan
  end

  def test_it_has_attributes
    morgan = Student.new({name: "Morgan", age: 21})

    assert_equal "Morgan", morgan.name
    assert_equal 21, morgan.age
  end

  def test_it_starts_with_empty_scores
    morgan = Student.new({name: "Morgan", age: 21})

    assert_equal [], morgan.scores
  end

  def test_it_logs_and_remembers_scores
    morgan = Student.new({name: "Morgan", age: 21})

    morgan.log_score(89)
    morgan.log_score(78)

    assert_equal [89, 78], morgan.scores
  end

  def test_it_averages_grades
    morgan = Student.new({name: "Morgan", age: 21})
    morgan.log_score(89)
    morgan.log_score(78)

    assert_equal 83.5, morgan.grade
  end

end
