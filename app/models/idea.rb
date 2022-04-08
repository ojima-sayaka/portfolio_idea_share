class Idea < ApplicationRecord
  has_one    :good
  belongs_to :comments
  belongs_to :members
  belongs_to :categories
end
