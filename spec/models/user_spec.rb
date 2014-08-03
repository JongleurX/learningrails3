require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"

  # runs the code inside the block before each example—in this case, creating
  # a new @user instance variable
  before do 
  	@user = User.new(name: "Example User", email: "user@example.com")
  end

  # makes @user the default subject of the test example
  subject { @user }

  # test for the existence of name and email attributes.
  # Ruby uses a question mark to indicate true/false boolean methods.
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
  	it { is_expected.to_not be_valid }
  end

  describe "when name is too long" do  # 50 is max; 51 is too long
    before { @user.name = "a" * 51 }   # string multiplication 
    it { is_expected.to_not be_valid }
  end  

  describe "when email is not present" do
    before { @user.email = " " }
    it { is_expected.to_not be_valid }

  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).to_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end  

end