require 'minitest/autorun'
require 'private_attr_reader'

class User
  def initialize(name)
    @name = name
  end

  def say_name
    name
  end
end

class UserWithPrivate < User
  private_attr_reader :name
end

class PrivateAttrReaderTest < Minitest::Test
  def test_user_has_no_reader
    user = User.new('foo')  

    assert_raises do 
      user.say_name
    end
  end
  
  def test_private_attr_reader
    user = UserWithPrivate.new("foo")
    assert_equal user.say_name, "foo"
  end
end
