# == Schema Information
#
# Table name: bills
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  amount      :decimal(, )
#  day         :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Bill < ActiveRecord::Base
  attr_accessible :name, :description, :amount, :day
  belongs_to :user, :inverse_of => :bills
end
