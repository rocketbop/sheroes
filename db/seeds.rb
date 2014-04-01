# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all

Project.create!(title: 'Wait Room',
	description:
		%{<p>This application will allow the user to take a ticket for a queue-based appointment through their phone before arrival, and see the exact live expected time in their browser.
		</p>},
	current_team_size: 1,
	desired_team_size: 2,
	headline: 'Paper Ticket Replacement Web App System for Queue Scheduling',
	project_type: 'Mobile App')

Project.create!(title: 'Another application',
	description:
		%{<p>This application does something uniquely exciting and top secret and is a social network perhaps.
		</p>},
	current_team_size: 3,
	desired_team_size: 5,
	headline: 'Social Network For Butterfly Lovers!',
	project_type: 'Social Network')
	
	Project.create!(title: 'My LinkedIn',
  description:
    %{<p>A social employment network for those seeking occupations outside the standard streams.
    </p>},
  current_team_size: 3,
  desired_team_size: 5,
  headline: 'Work for me!',
  project_type: 'Social Employment Network')
