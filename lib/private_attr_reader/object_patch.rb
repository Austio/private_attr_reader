class Object
  class << self
    def private_attr_reader(*args)
      args.each do |arg|
        define_method(arg) { instance_variable_get("@#{arg.to_s}") }
        private arg
      end
    end
  end
end
