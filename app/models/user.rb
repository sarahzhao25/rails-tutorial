class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  def first_name
    #split naturally splits via a space in the string
    #is this an implicit return?
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end

end
