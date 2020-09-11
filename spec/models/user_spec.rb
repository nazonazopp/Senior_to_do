require 'rails_helper'
describe User do
  describe '#create' do
    it "nameがない場合は登録できないこと" do
      expect(FactoryBot.build(:user, name: "")).to_not be_valid 
    end

    it "emailがない場合は登録できないこと" do
      expect(FactoryBot.build(:user, email: "")).to_not be_valid
    end

    it "passwordがない場合は登録できないこと" do
      expect(FactoryBot.build(:user, encrypted_password: "")).to_not be_valid
    end
  
    it "passwordが6文字未満であれば登録できないこと" do
      expect(FactoryBot.build(:user, encrypted_password: "12345")).to_not be_valid
    end

    it "name、email、encrypted_passwordが存在すれば登録できること" do
      expect(FactoryBot.build(:user)).to_not be_valid
    end

    
   
  end
end