class Portfolio < ApplicationRecord
  validates_presence_of :title, :body

  def self.angular #this adds a property onto the portfolio class
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') } #can be called anything, the -> is a lambda?, can also create a property?

  #custom scopes to call to the controller
  after_initialize :set_defaults

  def :set_defaults
    self.main_image ||= "http://placehold.it/600x400" # this is saying "self.main_image is itself or the second one"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
