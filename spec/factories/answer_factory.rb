# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  text        :text
#  info        :text
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'faker'

FactoryGirl.define do
	factory :answer do
		text         Faker::Lorem.sentence

		# Associations
    question
	end
end