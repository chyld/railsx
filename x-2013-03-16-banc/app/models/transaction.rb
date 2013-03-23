# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  amount     :decimal(, )
#  memo       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bank_id    :integer
#

class Transaction < ActiveRecord::Base
  attr_accessible :amount, :memo, :bank_id
  belongs_to :bank
end
