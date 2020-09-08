class Article < ApplicationRecord
    
    #belong to relation
    belongs_to :user
    
    #create validation for entries
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description, presence: true, length: {minimum: 6, maximum: 300}

end 
