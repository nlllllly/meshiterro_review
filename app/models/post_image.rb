class PostImage < ApplicationRecord
    # 「belogns_to」は1対Nの関係の「N」に相当する
    belongs_to :user
    # カラムとしては「image_id」で登録してるけど、idの部分は入れない。（refileのルール） 
    attachment :image
    # 「has_many」は1対Nの関係の「1」に相当する
    has_many :post_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy

    validates :shop_name, presence: true
    validates :image, presence: true

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
