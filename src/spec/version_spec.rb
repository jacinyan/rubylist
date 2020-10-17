require_relative '../lib/rubylist/version'

RSpec.describe Rubylist do
  it "has a version number" do
    expect(Rubylist::VERSION).not_to be nil
  end

  it "returns a correct version number" do
    expect(Rubylist::VERSION).to eq("1.0.0")
  end
end


    



