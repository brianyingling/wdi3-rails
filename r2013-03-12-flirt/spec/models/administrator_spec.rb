# == Schema Information
#
# Table name: administrators
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Administrator do
  describe '.new' do
      it 'creates an instance of Administrator' do
        administrator = Administrator.new
        expect(administrator).to be_an_instance_of(Administrator)
      end
      describe '#user' do
        it 'has a user' do
          administrator = Administrator.new
          user = User.new
          administrator.user = user
          expect(administrator.user).to be_an_instance_of(User)
        end
      end
  end
  describe '.create' do
    it 'has an id' do
      administrator = Administrator.create()
      expect(administrator.id).to_not be nil
    end
    it 'role fails validation when blank' do
      administrator = Administrator.new
      expect(administrator.id).to be nil
    end
    it 'fails validation if username or email is blank while supplying password' do
      user = User.create(:password=>'a', :password_confirmation=>'a')
      expect(user.id).to be nil
    end

  end
  describe "#metadata" do
    it 'has adminisitrator properties' do
      administrator = Administrator.create(:role=>'db', :ssn=>'111-22-3333',:tel=>'1-111-222-3333')
      expect(administrator.id).to_not be nil
      expect(administrator.id).to eq 'db'
      expect(administrator.id).to eq '111-22-3333'
      expect(administrator.id).to eq '1-111-222-3333'
    end
  end
end
