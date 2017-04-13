require './lib/bike.rb'

describe Bike do
  it { is_expected.to respond_to(:working?) }
  it { is_expected.to respond_to(:report_broken) }
  it "Returns false as default when passed the broken? method" do
    expect(subject.broken?).to eq false
  end

end
