class User < ApplicationRecord
  has_many :groups, foreign_key: :user_id
  has_many :entities, foreign_key: :user_id 
  
  validation :name, presence: true, length: { maximum: 100 }    
end
