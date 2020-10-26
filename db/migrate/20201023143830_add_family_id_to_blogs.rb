class AddFamilyIdToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :family_id, :string
  end
end
