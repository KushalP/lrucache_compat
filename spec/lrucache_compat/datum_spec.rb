require "spec_helper"

describe LRUCacheCompat::Datum do
  describe "a single datum" do
    let(:value) { 1 }
    let(:expiry_time) { Time.now - 86400 }

    subject { LRUCacheCompat::Datum.new(value, expiry_time) }

    it "allows accessing the raw value" do
      expect(subject.value).to eq(value)
    end

    it "allows accessing the raw expiry time" do
      expect(subject.expiration).to eq(expiry_time)
    end

    it "provides a way of telling whether an item has expired" do
      expect(subject.expired?).to eq(true)
    end
  end

  describe "comparing two datums" do
    let(:older) { LRUCacheCompat::Datum.new(1, Time.now - 87600) }
    let(:newer) { LRUCacheCompat::Datum.new(1, Time.now) }

    it "should say that newer times are greater than older times" do
      expect(newer > older).to eq(true)
    end
  end
end
