class Enrolled < ApplicationRecord

    belongs_to :enrolled_student, class_name: "User"
    belongs_to :enrolled_instructor, class_name: "User"
end
