class Project < ActiveRecord::Base
validates :title, :description, :headline, :project_type, presence: true  

end
