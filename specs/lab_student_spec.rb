require("minitest/autorun")
require("minitest/rg")

require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def test_student_name
    student1 = Student.new("John", "G6", "Ruby")
    assert_equal("John", student1.student_name)
  end

  def test_cohort
    student1 = Student.new("John", "G6", "Ruby")
    assert_equal("G6", student1.cohort)
  end

  def test_set_student_name
    student1 = Student.new("John", "G6", "Ruby")
    student1.set_student_name("Charlie")
    assert_equal("Charlie", student1.student_name)
  end

  def test_set_cohort
    student1 = Student.new("John", "G6", "Ruby")
    student1.set_cohort("G7")
    assert_equal("G7", student1.cohort)
  end

  def test_talking_student
    student1 = Student.new("John", "G6", "Ruby")
    talk = student1.student_talk
    assert_equal("I can talk!", talk)
  end

  def test_fav_lang_string
    student1 = Student.new("John", "G6", "Ruby")
    string = student1.fav_lang_string
    assert_equal("I love Ruby", string)
  end
end
