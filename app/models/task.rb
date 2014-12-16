class Task < ActiveRecord::Base
  #attr_accessor :parent_id # only when no has_ancestry
  has_ancestry 
  before_save :set_parent_id  
  scope :top, lambda {
    #where(ancestry:nil).where(active:true)  
    where(pid:nil).where(active:true).order('order_by asc')       
  }
  def set_parent_id
    self.parent_id=self.pid   
  end 
end