module LRUCacheCompat
  class LRUCache
    attr_reader :default, :max_size

    def initialize(opts = {})
      @default = opts[:default]
      @max_size = Integer(opts[:max_size] || 100)

      raise "max_size must not be negative" if @max_size < 0
    end
  end
end
