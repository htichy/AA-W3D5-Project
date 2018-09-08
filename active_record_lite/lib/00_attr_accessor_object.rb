class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        puts "getter method"
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |value|
        puts "setter method"
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
