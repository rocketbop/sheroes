require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  fixtures :projects # This would have been used anyway because of the configuration, but otherwise you could specify
  
  # If I create a project without any attributes passed, the project should be invalid, and there should be the following
  # errors
   test "project attributes must not be empty" do
     project = Project.new
     assert project.invalid?
     assert project.errors[:title].any?, "#{:title} should be invalid." #string will be displayed if fails
     assert project.errors[:description].any?
     assert project.errors[:headline].any?
     assert project.errors[:project_type].any?
   end
   # If you create a product with title which is already a title in a fixture, you want the product to be invalid
   test "project is not valid without a unique title" do
     project = Project.new( title:        projects(:hit).title,
                            description:  "Description would go here",
                            headline:     "Headline would go here",
                            project_type: "Project_type would go here." ) 
     assert project.invalid?
     assert_equal ["has already been taken"], project.errors[:title] # default rails error should match the second error
   end
   
end
