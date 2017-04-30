require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(content: "This is a test post", user_id: 1)
  end

  # test "should be valid" do
  #   assert @post.valid?
  # end

  test "content should be present" do
    @post.content = "         "
    assert_not @post.valid?
  end

  test "user_id should be present" do
    @post.user_id = "         "
    assert_not @post.valid?
  end
end
