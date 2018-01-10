require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "title은 반드시 2글자 이상이어야 한다." do
    post = Post.new(title: "a")
    # assert post.save
    refute post.save
  end

  test "title은 반드시 100글자 이하이어야 한다." do
    post = Post.new(title: Faker::Lorem.words(200))
    # assert post.save
    refute post.save
  end

  test "content은 반드시 2글자 이상이어야 한다." do
    post = Post.new(title: "a")
    # assert post.save
    refute post.save
  end

  test "content은 반드시 500글자 이하이어야 한다." do
    post = Post.new(title: Faker::Lorem.words(600))
    # assert post.save
    refute post.save
  end
end


# post model
# 1. title은 반드시 nil 아니어야 한다.
# 2. title은 반드시 2글자 이사이어야 한다.
# 3. title은 반드시 100글자 이하이어야 한다.
# 4. content은 반드시 nil 아니어야 한다.
# 5. content은 반드시 2글자 이사이어야 한다.
# 6. content은 반드시 500글자 이하이어야 한다.
