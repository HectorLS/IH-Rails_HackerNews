class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.string :title
    	t.string :text
    	t.string :source
    	t.string :type
    	t.integer :score
    	t.datetime :time
      t.timestamps null: false
    end
  end
end
