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

FactoryGirl.define do
  factory :ballot do
    date          Date.today + 10.days

    # Associations
    admin_user
  end
end
