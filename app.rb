require_relative 'config/environment'

class App < Sinatra::Base

  class Student
  attr_reader :name, :grade

 STUDENTS = []

  def initialize(params)
    @name = params[:name]
    @grade = params[:grade]
    STUDENTS << self
  end

  def self.all
    STUDENTS
  end

end

class Course
  attr_reader :name, :topic

  COURSES = []

  def initialize(args)
    @name = args[:name]
    @topic = args[:topic]
    COURSES << self
  end

  def self.all
    COURSES
  end
end




end
