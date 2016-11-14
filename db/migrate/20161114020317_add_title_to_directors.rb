class AddTitleToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :dob, :string
  end
end
