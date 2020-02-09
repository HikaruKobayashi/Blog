class AddLabelToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :label, :string
  end
end
