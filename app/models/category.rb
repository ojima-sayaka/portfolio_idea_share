class Category < ApplicationRecord
  has_many :ideas

  #バリデーションname空欄禁止
	validates :name, presence: true
end
