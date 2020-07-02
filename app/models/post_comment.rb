class PostComment < ApplicationRecord
    # 「belogns_to」は1対Nの関係の「N」に相当する
    belongs_to :user
    belongs_to :post_image

end
