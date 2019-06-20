class Listing < ApplicationRecord
  belongs_to :agent
  has_many :favorites

  def days_on_market
    self.date_sold ? self.date_listed.to_date..self.date_sold.to_date : self.date_listed.to_date..Time.now.to_date
  end
end

# attr_accessor :datetime
#
# def initialize(datetime)
#   @datetime = datetime
# end
