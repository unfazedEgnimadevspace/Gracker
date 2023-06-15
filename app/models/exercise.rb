class Exercise < ApplicationRecord
    #This is a read only class and the objects created from this class are created from the rails db:seed command ran in the bin/setup. The data served by this class is static 
    has_many :trainings

    class << self 
        def search(search_params)
          self.where("name LIKE ?", "%#{search_params}%")
        end
        
    end
end
