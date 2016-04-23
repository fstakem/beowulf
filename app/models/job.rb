class Job < ActiveRecord::Base
  validates :title,               presence: true, length: { maximum: 100 }
  validates :city,                presence: true, length: { maximum: 100 }
  validates :state,               presence: true, length: { maximum: 2 }
  validates :start_date,          presence: true

  belongs_to :user
  has_many :tasks
end
