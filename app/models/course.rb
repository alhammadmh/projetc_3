class Course < ApplicationRecord
  belongs_to :instructor, class_name: 'User', foreign_key: 'instructor_id'

    def self.search(search)
        if search
          where('name LIKE ?', "%#{search}%")
        else
          all
        end
      end

end
