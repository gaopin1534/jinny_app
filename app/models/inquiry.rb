class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates :name, :presence => {:message => 'input your name'}
  validates :email, :presence => {:message => 'input your email address'}
end
