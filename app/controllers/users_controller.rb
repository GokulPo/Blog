class UsersController < ApplicationController

  def index
    @class= Classroom.new
    @user = User.new
    @users = User.where(role_id: 3)
    @classes = Classroom.all
    @products = Student.all
    @subjects = Subject.all

    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
    end
  end
  def new
    @product = Student.new
    @subject = Subject.new
    @pass = Pass.new
  end

  def import
      puts params[:file]
     Student.import(params[:file])
      redirect_to users_path, notice: "Details imported."
  end

  def create_class
    @class = Classroom.new(class_params)
     @class.save
      flash.now[:success] = "Successfully created "
      redirect_to users_path
  end

  def create_teacher
    @password = Devise.friendly_token.first(6)
    @user =  User.new(teacher_params)
    @user.password = @password

      @user.save
      ExampleMailer.sample_email(@user,@password).deliver
      redirect_to users_path
  end

  def approve_student
    @pass = Pass.new(student_id: params[:id], subject_id: params[:subject_id], confirm: true)
      if @pass.save
        redirect_to users_path
      else
        redirect_to root_path
      end

  end

  def show
    @class= Classroom.find(params[:id])
    @students = @class.students

  end

  def show_my_class
    @teacher = current_user
    @sub_name = @teacher.subject.sub_name
    @subject_id = @teacher.subject_id
    @class= Classroom.find(params[:id])
    @students = @class.students
    @pass = Pass.all
  end

  private

    def class_params
      params.require(:classroom).permit(:name,:max_count,:teacher_id)
    end

    def teacher_params
      params.require(:user).permit(:name,:email,:role_id,:subject_id)
    end

end
