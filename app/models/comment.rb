class Comment < ApplicationRecord
  belongs_to :idea
  belongs_to :member

  validates :comment_detail, presence: true
end
