class AddEndTimeToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :end_time, :datetime
  end
end
