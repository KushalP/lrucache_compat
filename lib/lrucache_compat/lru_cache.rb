module LRUCacheCompat
  class LRUCache
    attr_reader :max_size

    def initialize(opts = {})
      @max_size = Integer(opts[:max_size] || 100)

      raise "max_size must not be negative" if @max_size < 0
    end
  end
end
