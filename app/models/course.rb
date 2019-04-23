class Course < ApplicationRecord
    belongs_to :instructor, class_name: "User",foreing_key: "instructor_id"
    has_and_belongs_to_many :students
end
