class Skill < ActiveRecord::Base
  validates :name,                presence: true, length: { maximum: 60 }

  has_many :user_skills
  has_many :project_skills
  has_many :task_skills
  has_many :users,      through: :user_skills
  has_many :projects,   through: :project_skills
  has_many :tasks,      through: :task_skills
end
