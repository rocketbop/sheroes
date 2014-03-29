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
   
   
end
