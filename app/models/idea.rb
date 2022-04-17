class Idea < ApplicationRecord
  has_one    :goods
  has_many :comments, dependent: :destroy
  belongs_to :member
  belongs_to :category

  validates :title,presence:true
  validates :idea_detail,presence:true,length:{maximum:600}

# いいね
  def favorited_by?(member)
   self.goods.where(member_id: member.id).exists?
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
