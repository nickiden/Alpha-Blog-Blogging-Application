class ArticleCategory < ApplicationRecord

    #belongs to relations
    belongs_to :article 
    belongs_to :category
end