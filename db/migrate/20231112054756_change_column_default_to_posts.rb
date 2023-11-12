class ChangeColumnDefaultToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column_default :posts, :complete, from: nil, to: "0"
  end
end
