# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  text          :text
#  summary       :text
#  friendly_name :string
#  ballot_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :ballot

  # make sure ballot ID and text are present. Allows text, summary to be empty.
  validates :ballot_id, presence: true
  validates :text, presence: true
end
