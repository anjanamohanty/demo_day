require "administrate/base_dashboard"

class StudentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    project: Field::BelongsTo,
    track: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    github_link: Field::String,
    twitter_link: Field::String,
    email_address: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :project,
    :track,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :github_link,
    :twitter_link,
    :email_address,
    :project,
    :track,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :project,
    :track,
    :github_link,
    :twitter_link,
    :email_address,
  ]

  # Overwrite this method to customize how students are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(student)
  #   "Student ##{student.id}"
  # end
end
