require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should have a positive price' do
    product = products(:one)
    product.price = -1
    assert_not product.valid?
  end
end
