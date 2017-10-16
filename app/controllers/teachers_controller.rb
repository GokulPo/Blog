class TeachersController < ApplicationController

  def create_teacher
    @teacher =  Teacher.new(teacher_params)
    @teacher.save
    redirect_to users_path
  end

  private

    def teacher_params
      params.require(:teacher).permit(:name, :email)
    end
end
