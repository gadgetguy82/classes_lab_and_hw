require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_students')

class TestCodeclanStudent < Minitest::Test

  def test_get_student_name
    student = Student.new('John', 'E31')
    assert_equal('John', student.name)
    assert_equal('E31', student.cohort)
  end

  def test_set_student_name
    student = Student.new('Bill', 'E29')
    student.set_name('Ted')
    assert_equal('Ted', student.name)
  end

  def test_set_student_cohort
    student = Student.new('Bill', 'E29')
    student.set_cohort('E30')
    assert_equal('E30', student.cohort)
  end

  def test_student_talks
    student = Student.new('Charles', 'E28')
    assert_equal('I can talk', student.say_something)
  end

  def test_student_favourite_language
    student = Student.new('Charles', 'E28')
    student.set_language('Ruby')
    assert_equal('I love Ruby', student.say_favourite_language)
  end

end
