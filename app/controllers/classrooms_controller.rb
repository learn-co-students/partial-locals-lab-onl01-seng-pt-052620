class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    # @student = @classroom.oldest_student <--remove of feature
  end

  def index
    @classrooms = Classroom.all
  end
end
