class Post < ActiveRecord::Base
  validates :title,     presence: true, length: { maximum: 100 }

  belongs_to :user
  has_many :post_photos
  has_many :photos,   through: :post_photos

  attr_accessor :grouped_photos

  def group_photos(num_together)
    @grouped_photos = self.photos.each_slice(num_together).to_a
  end
end
