require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeClanStudent < MiniTest::Test



  def test_return_name
    student = CodeClanStudent.new("Henry", "E25")
    assert_equal("Henry", student.student_name)
  end


  def test_return_cohort
    student = CodeClanStudent.new("Big Bob", "E29")
    assert_equal("E29", student.cohort)
  end

  def test_rename_student
    student = CodeClanStudent.new("Big Bob", "E29")
    student.student_name = "Steve"
    assert_equal("Steve", student.student_name)
  end


  def test_rename_cohort
    student = CodeClanStudent.new("Big Bob", "E3")
    student.cohort = "E8"
    assert_equal("E8", student.cohort)
  end


  def test_student_response
    student = CodeClanStudent.new("Big Boobied Bertha", "E69")
    assert_equal("Big Boobied Bertha says, hello chaps!", student.response)

  end

  def test_favourite_language
    student = CodeClanStudent.new("Big Boobied Bertha", "E69", "Ruby")
    assert_equal("I love Ruby", student.favourite_language)
  end



end
