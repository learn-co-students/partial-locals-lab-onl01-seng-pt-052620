class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = Student.find_by(params[:id])
  end

  def index
    @classrooms = Classroom.all
  end
end
