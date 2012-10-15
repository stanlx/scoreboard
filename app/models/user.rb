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

class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :partner_id, :persona_id, :photo, :usertype_id
  belongs_to :partner
end
