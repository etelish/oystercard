require './lib/oystercard.rb'

describe Oystercard do
  it "has a balance of zero" do
  expect(subject.balance).to eq(0)
  end

  it 'allows balance top_up' do
  expect(subject).to respond_to(:top_up).with(1).argument
  end
end
