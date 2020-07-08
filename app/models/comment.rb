class Comment < ApplicationRecord
  belongs_to :user
  validates :textBox1comment, :textBox2comment, :textBox3comment, :textBox4comment, :textBox5comment, presence: true
end
