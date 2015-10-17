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
end
