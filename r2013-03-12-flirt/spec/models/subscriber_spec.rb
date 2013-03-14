# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Subscriber do
  describe '.new' do
      it 'creates an instance of Subscriber' do
        subscriber = Subscriber.new
        expect(subscriber).to be_an_instance_of(Subscriber)
      end
      describe '#user' do
        it 'has a user' do
          subscriber = Subscriber.new
          user = User.new
          subscriber.user = user
          expect(subscriber.user).to be_an_instance_of(User)
        end
      end
  end
  describe '.create' do
    it 'has an id' do
      subscriber = Subscriber.create(username: 'bob', email: 'bob@gmail.com', password:'a', password_confirmation: 'a')
      expect(subscriber.id).to_not be nil
    end
    it 'fails validation if tagline, bio, gender, age are not present or age < 17' do
      subscriber = Subscriber.create
      expect(subscriber.id).to be nil
    end
  end
  describe "#metadata" do
    it 'has subscriber properties' do
      subscriber = Subscriber.create(tagline: 'hey', bio: 'my bio', preferences: 'a,b,c', bodytype: 'hot', location: 'nyc', status: 'single', ethnicity: 'Caucasion', gender: 'male', age:20, occupation: 'doctor', interest: 'rails',political:'independent',religious:'I <3 God',income: 1_000_000, education: 'college')
      expect(subscriber.id).to_not eq nil
      expect(subscriber.tagline).to eq 'hey'
      expect(subscriber.bio).to eq 'my bio'
      expect(subscriber.bodytype).to eq 'bodytype'
      expect(subscriber.location).to eq 'nyc'
      expect(subscriber.preference).to eq 'a,b,c'
      expect(subscriber.status).to eq 'single'
      expect(subscriber.ethnicity).to eq 'Caucasian'
      expect(subscriber.gender).to eq 'male'
      expect(subscriber.age).to eq 20
      expect(subscriber.occupation).to eq 'doctor'
      expect(subscriber.interest).to eq 'rails'
      expect(subscriber.political).to eq 'independent'
      expect(subscriber.religious).to eq 'I <3 God'
      expect(subscriber.education).to eq 'college'
      expect(subscriber.income).to eq 1_000_000



    end
  end


end


# it 'has username, email, password and password_confirmation' do
#         subscriber = Subscriber.new(username: 'bob', email: 'bob@gmail.com', password:'a', password_confirmation: 'a')
#         expect(subscriber.username).to eq 'bob'
#         expect(subscriber.email).to eq 'bob@gmail.com'
#         expect(subscriber.password).to eq 'a'
#         expect(subscriber.password_confirmation).to eq 'a'
#       end
# end
