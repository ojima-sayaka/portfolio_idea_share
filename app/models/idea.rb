class Idea < ApplicationRecord
  has_one    :goods
  has_many :comments, dependent: :destroy
  belongs_to :member
  belongs_to :category

  validates :title,presence:true
  validates :idea_detail,presence:true,length:{maximum:600}
  has_one_attached :idea_image

# いいね
  def favorited_by?(member)
   self.goods.where(member_id: member.id).exists?
  end

  def get_image(width, height)
    unless idea_image.attached?
      file_path = Rails.root.join('app/assets/images/350_no_image.jpeg')
      idea_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    idea_image.variant(resize_to_limit: [width, height]).processed
  end

# 検索
  def self.search_for(content, method)
    if method == 'perfect'
      Idea.where(title: content)
    elsif method == 'forward'
      Idea.where('title LIKE ?', content+'%')
    elsif method == 'backward'
      Idea.where('title LIKE ?', '%'+content)
    else
      Idea.where('title LIKE ?', '%'+content+'%')
    end
  end
end
