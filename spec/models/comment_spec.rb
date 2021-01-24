require 'rails_helper'
describe Comment do
  describe '#create' do
    it "textBox1commentがない場合は登録できないこと" do
      expect(FactoryBot.build(:comment, textBox1comment: "")).to_not be_valid
    end
    it "textBox2commentがない場合は登録できないこと" do
      expect(FactoryBot.build(:comment, textBox2comment: "")).to_not be_valid
    end
    it "textBox3commentがない場合は登録できないこと" do
      expect(FactoryBot.build(:comment, textBox3comment: "")).to_not be_valid
    end
    it "textBox4commentがない場合は登録できないこと" do
      expect(FactoryBot.build(:comment, textBox4comment: "")).to_not be_valid
    end
    it "textBox5commentがない場合は登録できないこと" do
      expect(FactoryBot.build(:comment, textBox5comment: "")).to_not be_valid
    end

    it "textBox1comment,textBox2comment,textBox3comment,textBox4comment,textBox5commentがある場合は登録できること" do
      expect(FactoryBot.build(:comment)).to_not be_valid
    end
  end
end