class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user,foreign_key: true
      t.string :textBox1comment
      t.string :textBox2comment
      t.string :textBox3comment
      t.string :textBox4comment
      t.string :textBox5comment
      t.timestamps
    end
  end
end
