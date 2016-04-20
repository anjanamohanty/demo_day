require 'test_helper'

class TrackTest < ActiveSupport::TestCase

  test "tracks have many students" do

    t_one = Track.create!(name: "Track One")
    s_one = Student.create!(name: "Student One", track_id: t_one.id, project_id: 1)
    s_two = Student.create!(name: "Student Two", track_id: t_one.id, project_id: 1)

    assert_equal "Student One", t_one.students.first.name
    assert_equal 2, t_one.students.count

  end

end
