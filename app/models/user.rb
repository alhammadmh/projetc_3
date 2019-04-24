class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  
  has_many :instructor_courses, class_name: "Enrolled", foreign_key: "instructor_id"
  has_many :student_courses, class_name: "Enrolled", foreign_key: "student_id"
  has_many :enrolleds

  enum role: [:user, :student, :instructor]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
    self.role ||= :user
  end

  
end
