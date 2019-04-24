class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  

  has_many :courses, foreign_key: "instructor_id", dependent: :destroy

  enum role: [:user, :student, :instructor]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
    self.role ||= :user
  end

  
end
