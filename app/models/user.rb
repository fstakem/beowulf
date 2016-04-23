class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs
  has_many :projects
  has_many :posts
  has_many :schools 
  has_many :photos
  has_many :user_links
  has_many :user_skills
  has_many :links,      through: :user_links
  has_many :skills,     through: :user_skills
end
