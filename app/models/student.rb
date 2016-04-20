class Student < ActiveRecord::Base
  belongs_to :project
  belongs_to :track 
end
