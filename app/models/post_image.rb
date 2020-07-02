class PostImage < ApplicationRecord
    # 「belogns_to」は1対Nの関係の「N」に相当する
    belongs_to :user
    # カラムとしては「image_id」で登録してるけど、idの部分は入れない。（refileのルール） 
    attachment :image
    # 「has_many」は1対Nの関係の「1」に相当する
    has_many :post_comments, dependent: :destory
end
