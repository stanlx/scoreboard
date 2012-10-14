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
  def self.sql
    "SELECT 
     id as '@CustomerID',
     first_name as 'user/first_name',
     last_name as 'user/last_name',
     partner_id as 'user/partner/partner_id',
     persona_id as 'user/partner/persona_id',
     photo as 'user/photo_path',
     usertype_id as 'user/usertype_id' 
     FROM users
    "
#
#     FOR XML PATH('Users')
  end
end
