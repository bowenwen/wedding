# frozen_string_literal: true

#
# A guest or plus one.
#
class Attendee < ApplicationRecord
  scope :diet?, -> { where.not(diet: nil) }
  scope :meal?, -> { where.not(meal: nil) }
  scope :child?, -> { where(child: true) }
end
