class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one :instructor
  has_one :student
  enum role: [:user, :student, :instructor]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
    self.role ||= :user
  end

  
end
