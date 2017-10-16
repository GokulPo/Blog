class UsersController < ApplicationController

  def index
    @class= Classroom.new
    @user = User.new
    @users = User.where(role_id: 3)
    @classes = Classroom.all
    @products = Student.all

    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
    end
  end
  def new
    @product = Student.new
  end

  def import
      puts params[:file]
      Student.import(params[:file])
      redirect_to users_path, notice: "Products imported."
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
    @confirm = Student.find(params[:id])
      @confirm.update(confirm: true)
    redirect_to users_path

  end

  def show
    @class= Classroom.find(params[:id])
    @products = @class.students
  end

  private

    def class_params
      params.require(:classroom).permit(:name,:max_count,:teacher_id)
    end

    def teacher_params
      params.require(:user).permit(:name,:email,:role_id)
    end

end
