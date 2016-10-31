# == Schema Information
#
# Table name: ballots
#
#  id            :integer          not null, primary key
#  date          :date
#  admin_user_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Ballot < ActiveRecord::Base
  belongs_to :admin_user

  validates :date, presence: true
  validates :admin_user_id, presence: true

  def display_name
  	"#{date}"
  end
end
