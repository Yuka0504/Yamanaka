class AddNameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :college, :string
  end
end
