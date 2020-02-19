class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :article
      # t.integer ::impressions_count, default: 0

      t.timestamps
    end
  end
end
