require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "students belong to a single project" do

    p_one = Project.create!(name: "Project One", description: "This is Project One", website: "www.google.com")
    s_one = Student.create!(name: "Student One", project_id: p_one.id, track_id: 1)

    assert_equal "Project One", s_one.project.name

  end

  test "students belong to a single track" do

    t_one = Track.create!(name: "Track One")
    s_one = Student.create!(name: "Student One", track_id: t_one.id, project_id: 1)

    assert_equal "Track One", s_one.track.name

  end

  test "students must have a name" do

    s_one = Student.new()
    refute s_one.save

  end

  test "students must belong to a track" do

    t_one = Track.create!(name: "Track One")
    s_one = Student.new()
    s_one.name = "Student One"
    s_one.project_id = "1"

    refute s_one.save

    s_one.track_id = t_one.id

    assert s_one.save

  end

  test "students must belong to a project" do

    p_one = Project.create!(name: "Project One")
    s_one = Student.new()
    s_one.name = "Student One"
    s_one.track_id = "1"

    refute s_one.save

    s_one.project_id = p_one.id

    assert s_one.save

  end

end
