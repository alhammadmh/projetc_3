class Course < ApplicationRecord
    # belongs_to :user
belongs_to :instructor, class_name: 'User', foreign_key: 'instructor_id'
  has_and_belongs_to_many :users, join_table: :courses_students, foreign_key: "student_id"

    def self.search(search)
        if search
          where('name LIKE ?', "%#{search}%")
        else
          all
        end
      end

end
