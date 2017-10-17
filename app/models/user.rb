class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :classrooms
  belongs_to :subject
  def admin?
    if self.role_id == 1
      return true
    else
      return false
    end
  end
  def teacher?
    if self.role_id == 3
      return true
    else
      return false
    end
  end
end
