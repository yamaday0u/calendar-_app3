class AddUserIdBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :user_id, :string
  end
end
