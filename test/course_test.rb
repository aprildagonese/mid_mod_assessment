require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'
require './lib/course'

class CourseTest < Minitest::Test

  def test_it_exists
    course = Course.new("Calculus", 2)

    assert_instance_of Course, course
  end

  def test_it_has_attributes
    course = Course.new("Calculus", 2)

    assert_equal "Calculus", course.name
    assert_equal 2, course.capacity
  end

  def test_it_starts_with_empty_students
    course = Course.new("Calculus", 2)

    assert_equal [], course.students
  end

  def test_it_knows_if_not_full
    course = Course.new("Calculus", 2)

    assert_equal false, course.full?
  end

  def test_it_enrolls_and_knows_students
    course = Course.new("Calculus", 2)
    morgan = Student.new({name: "Morgan", age: 21})
    jordan = Student.new({name: "Jordan", age: 29})

    course.enroll(morgan)
    course.enroll(jordan)

    assert_equal [morgan, jordan], course.students
  end

  def test_it_knows_if_full
    course = Course.new("Calculus", 2)
    morgan = Student.new({name: "Morgan", age: 21})
    jordan = Student.new({name: "Jordan", age: 29})
    course.enroll(morgan)
    course.enroll(jordan)

    assert_equal true, course.full?
  end

end
