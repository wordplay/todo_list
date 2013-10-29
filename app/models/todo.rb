# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  message    :string(255)
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Todo < ActiveRecord::Base
  acts_as_list
end
