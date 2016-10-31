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

class Answer < ActiveRecord::Base
  belongs_to :question

  validates :question_id, presence: true
  validates :text, presence: true

  def display_name
  	"#{text}"
  end
end
