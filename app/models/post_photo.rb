class PostPhoto < ActiveRecord::Base
  self.table_name = "posts_photos"

  belongs_to :post 
  belongs_to :photo
end
