class Task < ActiveRecord::Base
  validates :description,     presence: true

  belongs_to :job
  has_many :task_skills
  has_many :skills,   through: :task_skills
end
