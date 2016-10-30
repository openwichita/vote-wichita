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

require 'spec_helper'

RSpec.describe Answer do
	it "has a valid factory" do
 		expect(FactoryGirl.create(:answer)).to be_valid
 	end

	describe 'validates' do
		before(:each) { @answer = build(:answer) }

		it "is invalid without an associated question id" do
 			@answer.question_id = nil
 			expect(@answer).not_to be_valid
		end

		it "is invalid without text" do
			@answer.text = nil
			expect(@answer).not_to be_valid
		end
	end
end
