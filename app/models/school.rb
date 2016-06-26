class School < ActiveRecord::Base

  def degree_major
    return degree.upcase + ' ' + major.upcase
  end
end
