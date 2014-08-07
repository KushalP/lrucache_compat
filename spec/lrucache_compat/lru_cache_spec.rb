require "spec_helper"

describe LRUCacheCompat::LRUCache do
  describe "default initialisation" do
    subject { LRUCacheCompat::LRUCache }

    describe ":max_size" do
      it "has a default :max_size of 100" do
        expect(subject.new.max_size).to eq(100)
      end

      it "should accept a :max_size parameter" do
        expect(subject.new(:max_size => 7).max_size).to eq(7)
      end

      it "should raise an exception if :max_size parameter can't be converted to an integer" do
        expect { subject.new(:max_size => "moocow") }.to raise_exception
      end

      it "should raise an exception if :max_size parameter is converted to a negative integer" do
        expect { subject.new(:max_size => -1) }.to raise_exception
      end
    end

    describe ":default" do
      it "should have a :default parameter of nil" do
        expect(subject.new.default).to be_nil
      end

      it "should accept a :default parameter" do
        default = double(:default)
        expect(subject.new(default: default).default).to eq(default)
      end
    end
  end
end
