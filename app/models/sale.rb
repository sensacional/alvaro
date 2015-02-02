class Sale < ActiveRecord::Base
  belongs_to :client
  belongs_to :shipping
  belongs_to :channel

  has_many :products

  def human_display
    "#{self.client.first_name} #{self.client.last_name} #{self.created_at}"
  end
end
