class Movie < ActiveRecord::Base
# - director_id: must be present
validates :director_id, :presence => true
# - title: must be present; must be unique in combination with year
validates :title, :presence => true, :uniqueness => { :scope => :year }
# - year: must be integer between 1870 and 2050
# - Note that I am using the "lazy" Ruby syntax below, just to document how it looks
validates :year, numericality: { only_integer: true,
  greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050 }
# - duration: must be integer between 0 and 2764800
# - description: no rules
# - image_url: no rules
end
