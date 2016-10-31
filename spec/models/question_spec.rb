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

require 'spec_helper'

RSpec.describe Question do
	it "has a valid factory" do
		expect(FactoryGirl.create(:question)).to be_valid
	end

	describe 'validates' do
		before(:each) { @question = build(:question) }

		it "is invalid without an associated ballot id" do
			@question.ballot_id = nil
			expect(@question).not_to be_valid
		end

		it "is invalid without text" do
			@question.text = nil
			expect(@question).not_to be_valid
		end
	end
end
