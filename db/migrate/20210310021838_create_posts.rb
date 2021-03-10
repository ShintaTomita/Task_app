class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :start_at
      t.string :times
      t.string :importance
      t.text :memo

      t.timestamps
    end
  end
end
