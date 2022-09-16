class Post < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :content, presence: true, length: {maximum: 140}
    has_many :favorites
def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
end
end
