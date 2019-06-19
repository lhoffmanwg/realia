class Listing < ApplicationRecord
  belongs_to :agent
  has_many :favorites
end

# attr_accessor :datetime
#
# def initialize(datetime)
#   @datetime = datetime
# end
