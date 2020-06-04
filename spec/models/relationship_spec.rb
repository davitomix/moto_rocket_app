# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Relationship, type: :model do
  let(:rel2) do
    Relationship.new(follower_id: 2, followed_id: 1)
  end

  it 'should require a follower_id' do
    rel2.follower_id = nil
    expect(rel2).to_not be_valid
  end

  it 'should require a followed_id' do
    rel2.followed_id = nil
    expect(rel2).to_not be_valid
  end
end
