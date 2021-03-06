require "spec_helper"

describe GraphQL::BOOLEAN_TYPE do
  describe "coerce_input" do
    def coerce_input(input)
      GraphQL::BOOLEAN_TYPE.coerce_input(input)
    end

    it "accepts true and false" do
      assert_equal true, coerce_input(true)
      assert_equal false, coerce_input(false)
    end

    it "rejects other types" do
      assert_equal nil, coerce_input("true")
      assert_equal nil, coerce_input(5.5)
      assert_equal nil, coerce_input(nil)
    end
  end
end
