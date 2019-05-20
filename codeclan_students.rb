class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    @language = "C"
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def say_something
    return 'I can talk'
  end

  def set_language(new_language)
    @language = new_language
  end

  def say_favourite_language
    return "I love #{@language}"
  end
end
