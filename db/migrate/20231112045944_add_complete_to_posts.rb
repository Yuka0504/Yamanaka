class AddCompleteToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :complete, :integer
  end
end
