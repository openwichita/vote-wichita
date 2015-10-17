# == Schema Information
#
# Table name: admin_users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'spec_helper'

RSpec.describe AdminUser do
  describe 'validates' do
    it 'uniqueness of email' do
      @admin_user = create(:admin_user)
      @admin_user_2 = build(:admin_user, email: @admin_user.email)
      expect(@admin_user_2).not_to be_valid
    end
  end
end
