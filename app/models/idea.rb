class Idea < ApplicationRecord
  has_one    :goods
  has_many :comments
  belongs_to :member
  belongs_to :category
end
