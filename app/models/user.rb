class User < ApplicationRecord
  has_many :groups, class_name: 'Group', foreign_key: :user_id
  has_many :entities, class_name: 'Entity', foreign_key: :user_id 

  validation :name, presence: true, length: { maximum: 100 }    
end
