class Student

  def initialize(input_name, input_cohort, input_lang)
    @student_name = input_name
    @cohort = input_cohort
    @fav_lang = input_lang
  end

  def student_name()
    return @student_name
  end

  def cohort()
    return @cohort
  end

  def fav_lang()
    return @fav_lang
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def set_fav_lang(new_lang)
    @fav_lang = new_lang
  end

  def student_talk()
    return "I can talk!"
  end

  def fav_lang_string()
    return "I love #{@fav_lang}"
  end

end
