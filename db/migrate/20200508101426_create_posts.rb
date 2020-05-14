class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user,foreign_key: true
      t.boolean :textBox1
      t.boolean :textBox2
      t.boolean :textBox3
      t.boolean :textBox4
      t.boolean :textBox5
      t.timestamps
    end
  end
end