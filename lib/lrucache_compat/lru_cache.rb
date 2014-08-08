module LRUCacheCompat
  class LRUCache
    attr_reader :default, :max_size, :ttl

    def initialize(opts = {})
      @default = opts[:default]
      @max_size = Integer(opts[:max_size] || 100)
      @ttl = Float(opts[:ttl] || 0)

      raise "max_size must not be negative" if @max_size < 0
      raise "ttl must not be negative" if @ttl < 0
    end
  end
end
