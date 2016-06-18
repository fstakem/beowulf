class Project < ActiveRecord::Base
  validates :name,                presence: true, length: { maximum: 100 }
  validates :short_description,   presence: true, length: { maximum: 500 }
  validates :long_description,    presence: true

  belongs_to :user
  has_many :project_skills
  has_many :project_links
  has_many :project_photos
  has_many :skills,   through: :project_skills
  has_many :links,    through: :project_links
  has_many :photos,   through: :project_photos

  attr_accessor :grouped_photos

  def group_photos(num_together)
    @grouped_photos = self.photos.each_slice(num_together).to_a
  end
end
