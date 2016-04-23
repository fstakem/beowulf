class Link < ActiveRecord::Base
  validates :text,      presence: true, length: { maximum: 100 }
  validates :url,       presence: true, length: { maximum: 200 }

  enum type_of: [:personal, :scm, :corporate, :resume, :art, :project]

  has_many :user_links
  has_many :project_links
  has_many :users,      through: :user_links
  has_many :projects,   through: :project_links
end
