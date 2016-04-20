require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "students belong to a single project" do

    p_one = Project.create!(name: "Project One", description: "This is Project One", website: "www.google.com")
    s_one = Student.create!(name: "Student One", project_id: p_one.id)

    assert_equal "Project One", s_one.project.name

  end

  test "students belong to a single track" do

    t_one = Track.create!(name: "Track One")
    s_one = Student.create!(name: "Student One", track_id: t_one.id)

    assert_equal "Track One", s_one.track.name

  end


end
