class Photo < ActiveRecord::Base
  validates :name,     presence: true, length: { maximum: 200 }

  belongs_to :user
  belongs_to :project

  def readable_name
    return self.name.split('.')[0].split('_').join(' ')
  end

  def get_path
   #Rails.application.config.image_root_path.join(self.user.username, self.name)
   File.join(Rails.application.config.image_root_path, self.user.username, self.name)
  end
end
