class PostImage < ApplicationRecord
    belongs_to :user
    # カラムとしては「image_id」で登録してるけど、idの部分は入れない。（refileのルール） 
    attachment :image
end
