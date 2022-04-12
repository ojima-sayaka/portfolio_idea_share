class Idea < ApplicationRecord
  has_one    :goods
  belongs_to :comment
  belongs_to :member
  belongs_to :category
end
