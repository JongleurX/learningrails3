# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts
end

# By default, all model attributes are accessible. What `attr_accessible` does
# is to ensure that the name and email attributes—and only the name and email
# attributes—are automatically accessible to outside users. We’ll see why this
# is important in Chapter 9: using `attr_accessible` is important for
# preventing a mass assignment vulnerability, a distressingly common and often
# serious security hole in many Rails applications.
