class Student < ActiveRecord::Base
  belongs_to :project
  belongs_to :track

  validates :name, presence: :true
end
