module SluggableFinder
  # This module is included by the base class as well as AR asociation collections
  #
  module Finder
    def find_sluggable(opts,*args)
      key = args.first
      if key.is_a?(Symbol) || key.kind_of?(Array) || (key.to_s =~ /\A\d+\Z/ && opts[:allow_integer_ids]) # normal INT find
        find_without_slug(*args)
      else # sluggable find
        error = "There is no #{opts[:sluggable_type]} with #{opts[:to]} '#{key}'"
        scoped.where(["#{opts[:to]} = ?", key]).first or 
        raise SluggableFinder.not_found_exception.new(error)
      end
    end
  end
  
  module BaseFinder
    
    def find_with_slug(*args)
      return find_without_slug(*args) unless respond_to?(:sluggable_finder_options)
      find_sluggable(sluggable_finder_options,*args)
    end
  end
  
  module AssociationProxyFinder
    def find_with_slug(*args)
      return find_without_slug(*args) unless @reflection.klass.respond_to?(:sluggable_finder_options)
      options = @reflection.klass.sluggable_finder_options
      find_sluggable(options,*args)
    end
  end
  
end