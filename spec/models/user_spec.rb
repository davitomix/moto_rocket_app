# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) do
    User.create!(username: 'Foobar', email: 'foobar@bar.com',
                 password: 'foobar', password_confirmation: 'foobar')
  end

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user.username = ''
    expect(user).to_not be_valid
  end

  it 'is not valid without an email' do
    user.email = ''
    expect(user).to_not be_valid
  end

  it 'must have a valid email' do
    user.email = 'foobar@foo,bar'
    expect(user).to_not be_valid
  end

  it 'must contain a password' do
    user.password = ''
    user.password_confirmation = ''
    expect(user).to_not be_valid
  end

  it 'is invalid if have a username > 15' do
    user.username = 'a' * 20
    expect(user).to_not be_valid
  end

  it 'is invalid if it have uppercase letters' do
    user.username = 'NiLl'
    expect(user).to_not be_valid
  end

  it 'is invalid if it is nill' do
    user.username = nil
    expect(user).to_not be_valid
  end

  describe 'uniqueness' do
    it 'is not valid a duplicated username' do
      user = User.create!(username: 'Foobar', email: 'foobar@bar.com',
        password: 'foobar', password_confirmation: 'foobar')
      expect(user).to be_valid
      user_clone = User.create!(username: 'Foobar2', email: 'foobar2@bar.com',
        password: 'foobar2', password_confirmation: 'foobar2')
      user_clone.username = 'foobar'
      expect(user_clone).to_not be_valid
    end
  end
end
