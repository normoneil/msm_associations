class Character < ActiveRecord::Base
  # - movie_id: must be present; must be unique in combination with year
  validates :movie_id, :presence => true
  # - actor_id: must be present
  validates :actor_id, :presence => true
  belongs_to(:actor, :class_name => "Actor", :foreign_key => "actor_id")
end
