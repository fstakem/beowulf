class UserLink < ActiveRecord::Base
  self.table_name = "users_links"

  belongs_to :user 
  belongs_to :link
end
