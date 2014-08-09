module LRUCacheCompat
  class Datum
    include Comparable

    attr_reader :value, :expiration

    def initialize(value, expiration)
      @value = value
      @expiration = expiration
    end

    def expired?
      !@expiration.nil? && @expiration <= Time.now
    end

    def <=>(other)
      self.expiration <=> other.expiration
    end
  end
end
