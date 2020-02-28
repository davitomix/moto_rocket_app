require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) do
    User.create!(username: 'Foobar', email: 'foobar@bar.com',
                 password: 'foobar', password_confirmation: 'foobar')
  end

  let(:post) do
    user.posts.build(content: 'Lorem ipsum', created_at: Time.now)
  end

  it 'should be valid' do
    expect(post).to be_valid
  end

  it 'user id should be present' do
    post.user_id = nil
    expect(post).to_not be_valid
  end

  it 'content should be present' do
    post.content = "      "
    expect(post).to_not be_valid
  end

  it 'content should be at most 400 characters' do
    post.content = 'a' * 401
    expect(post).to_not be_valid
  end

  it 'order should be most recent first' do
    p1 = user.posts.create(content: 'Ipsum Lorem', created_at: Time.now)
    expect(p1).to eq(Post.first)
  end
end
