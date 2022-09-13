class Entity < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :author_id
  has_many :group_entities
  has_many :groups, through: :group_entities

  validates :name, presence: true, length: { maximum: 200 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
