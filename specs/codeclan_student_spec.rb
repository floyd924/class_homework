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


end
