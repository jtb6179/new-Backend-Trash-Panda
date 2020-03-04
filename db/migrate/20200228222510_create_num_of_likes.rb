class CreateNumOfLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :num_of_likes do |t|
      t.integer :like
      t.integer :post_id

      t.timestamps
    end
  end
end
