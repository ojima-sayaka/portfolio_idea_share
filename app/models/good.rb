class Good < ApplicationRecord
 belongs_to :idea
 belongs_to :member
 validates_uniqueness_of :idea_id, scope: :member_id
end
