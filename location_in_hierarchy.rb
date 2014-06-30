def location_in_hierarchy(object, method)
  object_class = object.class
  ancestors = [object_class]
  while !(object_class = object_class.superclass).nil?
      ancestors.push(object_class)
  end
    
  ancestors.reverse_each do |ancestor|
    if ancestor.instance_methods.include?(method)
      return ancestor
    end
  end
end 
