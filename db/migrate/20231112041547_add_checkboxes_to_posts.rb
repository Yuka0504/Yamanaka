class AddCheckboxesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :checkboxes, :string
  end
end
