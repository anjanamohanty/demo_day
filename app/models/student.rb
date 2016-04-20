class Student < ActiveRecord::Base
  belongs_to :project
  belongs_to :track

  validates :name, presence: :true
  validates :track_id, presence: :true
end
