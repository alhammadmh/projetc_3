class Course < ApplicationRecord
    # belongs_to :user
belongs_to :instructor, class_name: 'User', foreign_key: 'instructor_id'
belongs_to :users

    def self.search(search)
        if search
          where('name LIKE ?', "%#{search}%")
        else
          all
        end
      end

end
