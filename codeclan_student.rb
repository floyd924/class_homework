class CodeClanStudent

  attr_reader :student_name, :cohort, :fav_language
  attr_writer :student_name, :cohort, :fav_language

  def initialize(student_name, cohort, fav_language=nil)
    @student_name = student_name
    @cohort = cohort
    @fav_language = fav_language
  end

  def response
    return "#{@student_name} says, hello chaps!"
  end

  def favourite_language
    return "I love #{@fav_language}"
  end



end
