# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  persona_id  :integer
#  usertype_id :integer
#  photo       :text
#  partner_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
