module ModuleVendor
 
  def vendor_set(name)
    self.vendor = name
  end
  
  def vendor_get
    self.vendor        
  end  
  
  protected

  attr_accessor :vendor

end