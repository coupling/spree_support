class Spree::ArticleCategory < ActiveRecord::Base
  has_attached_file :icon, :styles => { :mini => ["48x48#", :png] }
  has_many :articles

  validates_presence_of :name
  validates_attachment_presence :icon, :on => :create
  validates_length_of :name, :maximum => 100

end
