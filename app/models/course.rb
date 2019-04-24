class Course < ApplicationRecord
    # belongs_to :user
    has_and_belongs_to_many :enrolleds
    #has_and_belongs_to_many :users

    def self.search(search)
        if search
          where('name LIKE ?', "%#{search}%")
        else
          all
        end
      end

end
