class User < ApplicationRecord
    #settings before save
    before_save {self.email = email.downcase }
    
    #one-to-many assocuation
    has_many :articles
    
    # set validation for user signin
    validates :username, presence: true, 
                                    uniqueness: {case_sensitive: false}, 
                                    length: {minimum: 3, maximum: 25}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, 
                                    uniqueness: {case_sensitive: false}, 
                                    length: { maximum: 100},
                                    format: {with: VALID_EMAIL_REGEX}
                                        
    #password
    has_secure_password
    
end

