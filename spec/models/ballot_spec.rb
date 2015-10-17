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

require 'spec_helper'

RSpec.describe Ballot do
  describe 'validates' do
    before(:each) { @ballot = build(:ballot) }

    it 'presence of date' do
      @ballot.date = nil
      expect(@ballot).not_to be_valid
    end

    it 'presence of admin_user' do
      @ballot.admin_user_id = nil
      expect(@ballot).not_to be_valid
    end
  end
end
