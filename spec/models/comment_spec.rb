# == Schema Information
#
# Table name: comments
#
#  id               :uuid             not null, primary key
#  content          :text
#  commentable_type :string           not null
#  commentable_id   :uuid             not null
#  user_id          :uuid             not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
