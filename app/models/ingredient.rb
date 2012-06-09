class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  attr_accessible :description, :measure, :unit
  
  validates :unit,  :presence => true, :length => { :minimum => 1 }
  validates :measure, :presence => true, :length => { :minimum => 3 }
  validates :description, :presence => true, :length => { :minimum => 3 }
  
  MEASURE = ['dash(s)','cup(s)','pint(s)','T(s)','tsp(s)','can(s)','box(s)','container(s)','gallon(s)','quart(s)','oz(s)','slice(s)','stick(s)']
end
