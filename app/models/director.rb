class Director < ActiveRecord::Base
 # - name: must be present; must be unique in combination with dob
 validates :name, :presence => true, :uniqueness => { :scope => :dob }

 belongs_to(:movie, :class_name => "Movie", :foreign_key => "director_id")
 has_many(:movies, :class_name => "Movie", :foreign_key => "director_id")
end
