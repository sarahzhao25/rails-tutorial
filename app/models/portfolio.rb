class Portfolio < ApplicationRecord
  has_many :technologies
  # rejects if the attribute "name" is blank
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body

  def self.angular #this adds a property onto the portfolio class
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Raimails') } #can be called anything, the -> is a lambda?, can also create a property?

  #custom scopes to call to the controller
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400') # this is saying "self.main_image is itself or the second one"
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
