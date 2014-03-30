class Project < ActiveRecord::Base
validates :title, :description, :headline, :project_type, presence: true
validates :title, uniqueness: true  

end
