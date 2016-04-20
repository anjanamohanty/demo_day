require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test "projects have many students" do

    p_one = Project.create!(name: "Project One", description: "This is Project One", website: "www.google.com")
    s_one = Student.create!(name: "Student One", project_id: p_one.id, track_id: 1)
    s_two = Student.create!(name: "Student Two", project_id: p_one.id, track_id: 1)

    assert_equal "Student One", p_one.students.first.name
    assert_equal 2, p_one.students.count

  end

  test "projects must have a name" do

    p_one = Project.new()
    refute p_one.save

  end

end
