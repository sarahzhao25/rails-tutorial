class Portfolio < ApplicationRecord
  validates_presence_of :title, :body

  def self.angular #this adds a property onto the portfolio class
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') } #can be called anything, the -> is a lambda?, can also create a property?

  #custom scopes to call to the controller
end
