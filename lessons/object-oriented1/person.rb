class Person

  attr_reader :year_of_birth
  attr_writer :password, :deep_dark_secret
  attr_accessor :first_name, :last_name,


  def initialize(first_name, last_name, year_of_birth)
    @first_name = first_name
    @last_name = last_name
    @job_title = "amazing"
    @year_of_birth = year_of_birth
  end

#THIS IS A READER
  # def first_name
    #return first_name
  #end
  def full_name
    "#{ first_name } #{ last_name } "
  end

  #THIS IS A WRITER
  def job_title=(new_job_title)
    @job_title = new_job_title
  end

  # THIS IS A GENERIC METHOD

  def greetings
    return "#{:first_name} #{:last_name}."
  end

end

class Professor < Person

  attr_accessor :field_of_study

  def initialize(first_name, last_name, year_of_birth, field_of_study)
    super(first_name, last_name, year_of_birth) #these attributes are shared with the Person class !
    @field_of_study = field_of_study #this attribute is only possessed by the Professor class
  end

  def teach(student)
    students.each { |student| student.learn}
  end

  def full_name
    "Prof #{super}" #calls upon the method within the Person class.
  end

end

class Student < Person

  attr_reader :knowledge_level

  def initialize(first_name, last_name, year_of_birth, knowledge_level)
    super(first_name, last_name, year_of_birth)
    @knowledge_level = 0
  end

  def learn
    knowledge_level += 1
  end
end

eintstein = Professor.new("Albert", "Einstein", 1850, "Physics")
charlie = Student.new("Charlie", "Brown", 1950, 0)
