class Comment < ApplicationRecord
  belongs_to :idea
  belongs_to :member

  validates :comment, presence: true
end
