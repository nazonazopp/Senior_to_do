class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user,foreign_key: true
      t.integer :textBox1
      t.integer :textBox2
      t.integer :textBox3
      t.integer :textBox4
      t.integer :textBox5
      t.timestamps
    end
  end
end